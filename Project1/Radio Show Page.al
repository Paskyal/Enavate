page 50100 "Radio Show List"
{
    PageType = List;
    SourceTable = "Radio Show";

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(Name; NameSource)
                {
                    ApplicationArea = All;

                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}