report 50100 "Rental Order"
{
    Caption = 'Rental Order';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = Word;
    WordLayout = 'Rental Order.docx';
    dataset
    {
        dataitem("Rental Order"; "Rental Order")
        {
            column(No_; "No.")
            {

            }
            column(Customer_No_; "Customer No.")
            {

            }
            column(Customer_Name; "Customer Name")
            {

            }
            column(Salesperson_Name; "Salesperson Name")
            {

            }
            column(Posting_Date; "Posting Date")
            {

            }

            dataitem("Rental Order Line"; "Rental Order Line")
            {
                column(Order_No_; "Order No.")
                {

                }
                column(Car_No_; "Car No.")
                {

                }
                column(Car_Description; "Car Description")
                {

                }
                column(Price_a_day; "Price a day")
                {

                }
                column(Days_Amt_; "Days Amt.")
                {

                }
                column(Total_Discount; "Total Discount")
                {

                }
                column(Line_Amount; "Line Amount")
                {

                }
            }
        }
    }
}