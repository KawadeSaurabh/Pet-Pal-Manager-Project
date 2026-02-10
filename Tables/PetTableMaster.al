table 50174 "PetMaster"
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Pet ID"; Integer)
        {
            Caption = 'Pet ID';
            AutoIncrement = true;
        }

        field(2; "Pet Name"; Text[100])
        {
            Caption = 'Pet Name';
        }

        field(3; "Pet Type"; Code[20])
        {
            Caption = 'Pet Type';
            TableRelation = "Pet Type";
        }

        field(4; "Pet Breed"; Code[20])
        {
            Caption = 'Pet Breed';
            TableRelation = "Pet Breed".Code where("Pet Type" = field("Pet Type"));
        }

        field(5; PetImage; MediaSet)
        {
            DataClassification = ToBeClassified;
            Caption = 'Pet Image';
        }

        field(6; "Pet Color"; Option)
        {
            Caption = 'Pet Color';
            OptionMembers = "",Red,Green,Blue;
            OptionCaption = ', Red,Green,Blue';
        }

        field(7; "Last Vacinated Date"; Date)
        {
            Caption = 'Last Vacinated Date';
        }

        field(8; "Medical Condition"; Code[20])
        {
            Caption = 'Medical Condition';
            TableRelation = "Pet Medical Condition";
        }

        field(9; Status; Option)
        {
            OptionMembers = Available,Reserved,Sold;
            OptionCaption = 'Available,Reserved,Sold';
        }


    }

    keys
    {
        key(PK; "Pet ID")
        {
            Clustered = true;
        }
    }
}