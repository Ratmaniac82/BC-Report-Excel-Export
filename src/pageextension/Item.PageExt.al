pageextension 50120 "PPI Item" extends "Item List"
{
    actions
    {
        addfirst(processing)
        {
            action(ExportExcel)
            {
                ApplicationArea = All;
                Caption = 'Export To Excel';
                Promoted = true;
                PromotedCategory = Process;
                ToolTip = 'Exports Item List to Excel';
                Image = Excel;
                trigger OnAction()
                var
                    ExportExcel: Report "PPI Export Single Sheet";
                begin
                    ExportExcel.RunModal();
                end;
            }
            action(ExportAndSendExcel)
            {
                ApplicationArea = All;
                Caption = 'Export and Send Excel';
                Promoted = true;
                PromotedCategory = Process;
                ToolTip = 'Exports Customers and Vendors to Excel and Send to Mail';
                Image = Excel;
                trigger OnAction()
                var
                    ExportAndSendExcel: Report "PPI Export And Send Excel";
                begin
                    ExportAndSendExcel.RunModal();
                end;
            }
        }
    }
}