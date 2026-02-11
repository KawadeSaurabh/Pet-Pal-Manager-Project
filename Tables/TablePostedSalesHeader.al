table 50178 "Posted Pet Sales Header"
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
            Caption = 'Posting Date'
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