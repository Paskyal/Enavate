codeunit 50100 "Event Mgt."
{
    [EventSubscriber(ObjectType::Table, Database::"Sales Line", 'OnBeforeModifyEvent', '', false, false)]
    local procedure SalesLine_OnBeforeModifyEvent(var Rec: Record "Sales Line"; var xRec: Record "Sales Line"; RunTrigger: Boolean)
    var
        TotalSalesLine: Record "Sales Line";
        GeneralLedgerSetup: Record "General Ledger Setup";
        Customer: Record Customer;
        CreditLimitLbl: Label 'The Total amount %1 is more than Credit limit %2 setup for Customer %3', Locked = true;
    begin
        if (Rec."Amount Including VAT" = xRec."Amount Including VAT") then
            exit;

        //Fing customer for use Credit limit
        Customer.get(Rec."Bill-to Customer No.");

        // Calc Amount Including VAT
        TotalSalesLine.SetRange("Document No.", Rec."Document No.");
        TotalSalesLine.SetRange("Document Type", Rec."Document Type");
        TotalSalesLine.SetFilter("Line No.", '<>%1', Rec."Line No.");
        TotalSalesLine.CalcSums("Amount Including VAT");
        TotalSalesLine."Amount Including VAT" += Rec."Amount Including VAT";
        if not GeneralLedgerSetup.get() then
            GeneralLedgerSetup.Insert(true);

        case GeneralLedgerSetup."Trigger Credit Limit" of
            GeneralLedgerSetup."Trigger Credit Limit"::"Show Message":
                Message(CreditLimitLbl, TotalSalesLine."Amount Including VAT", Customer."Credit Limit (LCY)", Rec."Bill-to Customer No.");
            GeneralLedgerSetup."Trigger Credit Limit"::"Show Error":
                Error(CreditLimitLbl, TotalSalesLine."Amount Including VAT", Customer."Credit Limit (LCY)", Rec."Bill-to Customer No.");
        end;
    end;
}
