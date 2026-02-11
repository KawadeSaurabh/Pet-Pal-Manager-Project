table 50177 "Pet Sales Line"
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Document No."; Code[20])
        {
            Caption = 'Document No.';
            TableRelation = "Pet Sales Header";
        }

        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }

        field(3; "Pet Id"; Code[20])
        {
            Caption = 'Pet ID';
            TableRelation = PetMaster where(Status = const(Available));

            trigger OnValidate()
            var
                PetMaster: Record PetMaster;
            begin
                if PetMaster.Get("Pet Id") then begin
                    "Pet Name" := PetMaster."Pet Name";
                    "Pet Type" := PetMaster."Pet Type";
                    "Pet Breed" := PetMaster."Pet Breed";
                end;
            end;
        }

        field(4; "Pet Name"; Text[100])
        {
            Caption = 'Pet Name';
            Editable = false;
        }

        field(5; "Pet Type"; Code[20])
        {
            Caption = 'Pet Type';
            Editable = false;
        }

        field(6; "Pet Breed"; Code[20])
        {
            Caption = 'Pet Breed';
            Editable = false;
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