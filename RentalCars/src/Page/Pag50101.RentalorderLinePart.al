page 50101 "Rental Order Line Part"
{

    Caption = 'Lines';
    PageType = ListPart;
    SourceTable = "Rental Order Line";
    UsageCategory = Administration;
    ApplicationArea = all;
    PopulateAllFields = true;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Order No."; Rec."Order No.")
                {
                    ToolTip = 'Specifies the value of the Order No. field';
                    ApplicationArea = All;
                    Visible = false;
                }
                field("Car No."; Rec."Car No.")
                {
                    Caption = 'Car No.';
                    ToolTip = 'Specifies the value of the Car No. field';
                    ApplicationArea = All;
                }
                field("Car Description"; Rec."Car Description")
                {
                    ToolTip = 'Specifies the value of the "Car Description" field';
                    ApplicationArea = All;
                }
                field(Price; Rec."Price a day")
                {
                    ToolTip = 'Specifies the value of the Price field';
                    ApplicationArea = All;
                }
                field("Days Amt."; Rec."Days Amt.")
                {
                    ToolTip = 'Specifies the value of the Days Amt. field';
                    ApplicationArea = All;
                }
                field("Total Discount"; Rec."Total Discount")
                {
                    Caption = 'Total Discount';
                    ToolTip = 'Specifies the value of the Total Discount field';
                    ApplicationArea = All;
                }
                field("Line Amount"; Rec."Line Amount")
                {
                    ToolTip = 'Specifies the value of the Line Amount field';
                    ApplicationArea = All;
                }
            }

        }
    }
}
