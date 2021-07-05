page 50104 "Cars"
{

    ApplicationArea = All;
    Caption = 'Cars';
    PageType = List;
    SourceTable = Item;
    UsageCategory = Lists;
    CardPageId = "Cars Card";
    Editable = false;
    SourceTableView = where(Type = const(Rental));
    PopulateAllFields = true;
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("No."; Rec."No.")
                {
                    ToolTip = 'Specifies the value of the No. field';
                    ApplicationArea = All;
                }
                // field("Model,Year"; Rec."Model,Year")
                // {
                //     ToolTip = 'Specifies the value of the Model,Year field';
                //     ApplicationArea = All;
                // }
                field("Description"; Rec."Description")
                {
                    Caption = 'Model,Year';
                    ToolTip = 'Specifies the value of the Description field';
                    ApplicationArea = All;
                }
                field(Color; Rec.Color)
                {
                    ToolTip = 'Specifies the value of the Color field';
                    ApplicationArea = All;
                }
                field(Transmission; Rec.Transmission)
                {
                    Caption = 'Gearbox';
                    ToolTip = 'Specifies the value of the Transmission field';
                    ApplicationArea = All;
                }
                field(Doors; Rec.Doors)
                {
                    ToolTip = 'Specifies the value of the Doors field';
                    ApplicationArea = All;
                }
                field(Seats; Rec.Seats)
                {
                    ToolTip = 'Specifies the value of the Seats field';
                    ApplicationArea = All;
                }
                field("Trunk Vol./Bags"; Rec."Trunk Vol./Bags")
                {
                    ToolTip = 'Specifies the value of the Trunk Vol./Bags field';
                    ApplicationArea = All;
                }
                field("Fuel type"; Rec."Fuel type")
                {
                    ToolTip = 'Specifies the value of the Fuel type field';
                    ApplicationArea = All;
                }
                field("Fuel Cons./100km"; Rec."Fuel Cons./100km")
                {
                    ToolTip = 'Specifies the value of the Fuel Cons./100km field';
                    ApplicationArea = All;
                }
                field(Mileage; Rec.Mileage)
                {
                    ToolTip = 'Specifies the value of the Mileage field';
                    ApplicationArea = All;
                }
                field("Unit Price"; Rec."Unit Price")
                {
                    Caption = 'Price per day';
                    ToolTip = 'Specifies the value of the Unit Price field';
                    ApplicationArea = All;
                }
                field("Car Discount"; Rec."Car Discount")
                {
                    Caption = 'Discount';
                    ToolTip = 'Specifies the value of the Car Discount field';
                    ApplicationArea = All;
                }
            }
        }
    }

}
