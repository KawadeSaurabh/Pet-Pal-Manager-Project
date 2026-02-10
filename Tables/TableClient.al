table 50175 "Pet Shop Client"
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Client No."; Code[20])
        {
            Caption = 'Client No';
        }

        field(2; "Client Name"; Text[100])
        {
            Caption = 'Client Name';
        }

        field(3; Address; Text[100])
        {
            DataClassification = ToBeClassified;
        }

        field(4; "Phone No"; Text[30])
        {
            Caption = 'Phone No';
        }

        field(5; Email; Text[80])
        {
            Caption = 'Email';
        }
    }

    keys
    {
        key(PK; "Client No.")
        {
            Clustered = true;
        }
    }
}