table 50171 "Pet Breed"
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Pet Type"; Code[20])
        {
            Caption = 'Pet Type';
            TableRelation = "Pet Type";
        }

        field(2; "Code"; Code[20])
        {
            Caption = 'Code';
        }

        field(3; "Description"; Text[100])
        {
            Caption = 'Description';
        }
    }

    keys
    {
        key(PK; "Pet Type", "Code")
        {
            Clustered = true;
        }
    }
}