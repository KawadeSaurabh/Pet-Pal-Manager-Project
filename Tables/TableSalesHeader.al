table 50176 "Pet Sales Header"
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Document No."; Code[20])
        {
            Caption = 'Document No.';
        }

        field(2; "Client No."; Code[20])
        {
            Caption = 'Client No.';
            TableRelation = "Pet Shop Client";
        }

        field(3; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
        }

        field(4; Status; Option)
        {
            OptionMembers = Open,Released,Posted;
            OptionCaption = 'Open, Released, Posted';
        }
    }

    keys
    {
        key(PK; "Document No.")
        {
            Clustered = true;
        }
    }
}