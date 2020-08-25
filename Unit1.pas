unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TeEngine, Series, ExtCtrls, TeeProcs, Chart, ToolWin, ActnMan,
  ActnCtrls, Grids;

type
  TForm1 = class(TForm)
    StringGrid1: TStringGrid;
    Chart1: TChart;
    Series1: TBarSeries;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
var
X,Y,E,T : integer;
Vetor : array[1..3] of integer;
begin

  with StringGrid1 DO BEGIN

    for X := 0 to 2 do begin
      for Y := 0 to 2 do begin
          E := RANDOM(10);
          CELLS[X,Y] := INTTOSTR(E);
      end;
    end;

    T :=0;

    for x := 0 to 2 do begin
       for Y := 0 to 2 do begin
          T := T + STRTOINT (CELLS[X,Y]);
       end;
       VETOR[X+1] := T;
       T:= 0;
     end;

     CELLS[0,3] := INTTOSTR(VETOR[1]);
     CELLS[1,3] := INTTOSTR(VETOR[2]);
     CELLS[2,3] := INTTOSTR(VETOR[3]);
  end;

  with series1 do begin
       ADD (VETOR[1],'JAN',clYELLOW);
       ADD (VETOR[2],'fev',clred);
       ADD (VETOR[3],'mar',clBlue);
  end;

end;

end.
