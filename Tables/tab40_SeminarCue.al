table 50140 "CSD Seminar Cue"
{
    DataClassification = ToBeClassified;
    Caption = 'Seminar Cue';


    fields
    {
        field(10; "Primary Key"; Code[10])
        {
        }
        field(20; "Planned"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = Count ("CSD Seminar Reg. Header"
                            where (Status = const (Planning)));
        }
        field(30; "Registered"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = Count ("CSD Seminar Reg. Header"
                where (Status = const (Registration)));
        }
        field(40; "Closed"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = Count ("CSD Seminar Reg. Header"
                where (Status = const (Closed)));
        }

    }

    keys
    {
        key(PK; "Primary Key")
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}