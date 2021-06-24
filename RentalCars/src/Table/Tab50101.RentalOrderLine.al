table 50101 "Rental Order Line"
{
    Caption = 'Rental Order Line';
    DataClassification = CustomerContent;
    LookupPageId = "Rental Order Line";
    DrillDownPageId = "Rental Order Line";

    fields
    {
        field(1; "Order No."; Code[20])
        {
            Caption = 'Order No.';
            DataClassification = CustomerContent;
            TableRelation = "Rental Order";
            Editable = false;
        }
        field(2; "Line No."; Code[20])
        {
            Caption = 'No.';
            DataClassification = CustomerContent;
        }
        field(3; "Car No."; Code[20])
        {
            Caption = 'Item No.';
            DataClassification = CustomerContent;
            TableRelation = "Item";
            trigger OnValidate()
            begin
                CopyFormItem();
            end;
        }
        field(4; "Car Description"; Text[100])
        {
            Caption = 'Car Description';
            FieldClass = FlowField;
            CalcFormula = lookup(Item."Description" where("No." = field("Car No.")));
            Editable = false;
        }
        field(5; "Days Amt."; Integer)
        {
            Caption = 'Days Amt.';
            DataClassification = CustomerContent;
            trigger OnValidate()
            begin
                UpdateLineAmount();
            end;
        }
        field(6; "Price a day"; Decimal)
        {
            Caption = 'Price a day';
            DataClassification = CustomerContent;
        }
        field(9; "Total Discount"; Decimal)
        {
            Caption = 'Total Discount';
            DataClassification = CustomerContent;
            trigger OnValidate()
            begin
                UpdateLineAmount();
            end;
        }
        field(10; "Line Amount"; Decimal)
        {
            Caption = 'Total Amount';
            DataClassification = CustomerContent;
            Editable = false;
        }
    }
    keys
    {
        key(PK; "Order No.", "Line No.")
        {
            Clustered = true;
        }
    }

    local procedure CopyFormItem()
    var
        Item: Record Item;
    begin
        if "Car No." = '' then
            exit;
        Item.Get("Car No.");
        Rec.Validate("Price a day", Item."Unit Price");
    end;

    local procedure UpdateLineAmount()
    begin
        Rec.Validate("Line Amount", "Days Amt." * "Price a day" - ("Days Amt." * "Price a day" * "Total Discount" / 100));
    end;
}
