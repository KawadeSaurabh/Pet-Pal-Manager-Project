table 50179 "Posted Pet Sales Line"
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Document No."; Code[20])
        {
            Caption = 'Document No.';
            TableRelation = "Posted Pet Sales Header";
        }

        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }

        field(3; "Pet Id"; Code[20])
        {
            Caption = 'Pet Id';
            TableRelation = "PetMaster";
        }

        field(4; "Pet Name"; Text[100])
        {
            Caption = 'Pet Name';
        }

        field(5; "Pet Type"; Code[20])
        {
            Caption = 'Pet Type';
        }

        field(6; "Pet Breed"; Code[20])
        {
            Caption = 'Pet Breed';
        }

        field(7; Price; Decimal)
        {
            Caption = 'Price';
        }
    }

    keys
    {
        key(PK; "Document No.", "Line No.")
        {
            Clustered = true;
        }
    }
}