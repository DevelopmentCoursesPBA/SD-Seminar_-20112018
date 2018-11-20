tableextension 50100 "CSD Resource Extension" extends Resource
{
    fields
    {
        modify("Type")
        {
            OptionCaption = 'Instructor,Room';
        }
        modify("Profit %")
        {
            trigger OnAfterValidate()
            begin
                TestField("Unit Cost");
            end;
        }
        field(50100; "CSD Resource Type"; Option)
        {
            Caption = 'Resource Type';
            OptionMembers = Internal,External;
            OptionCaption = 'Internal,External';
        }
        field(50101; "CSD Maximum Participants"; integer)
        {
            Caption = 'Maximum Participants';
        }
        field(50102; "CSD Quantity Per Day"; Decimal)
        {
            Caption = 'Quantity Per Day';
        }
    }
}