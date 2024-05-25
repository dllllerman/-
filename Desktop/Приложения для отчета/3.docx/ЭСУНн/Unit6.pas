unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, jpeg, Buttons, DBCtrls, Grids, DBGrids;

type
  TForm6 = class(TForm)
    img1: TImage;
    dbgrd1: TDBGrid;
    pnl1: TPanel;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    lbl1: TLabel;
    edt1: TEdit;
    pnl2: TPanel;
    procedure btn1Click(Sender: TObject);
    procedure edt1Change(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

uses
  Unit11, Unit2, Unit10;

{$R *.dfm}

procedure TForm6.btn1Click(Sender: TObject);
begin
 Form10.ShowModal;
 DataModule2.tbl_stud.Insert;
end;

procedure TForm6.edt1Change(Sender: TObject);
begin
 if Length(edt1.Text)>0 then
  DataModule2.tbl_stud.Filtered:=True
  else
    DataModule2.tbl_stud.Filtered:=False;
    DataModule2.tbl_stud.Filter:='Фамилия>='''+ edt1.Text+'''';
end;

procedure TForm6.btn3Click(Sender: TObject);
begin
  DataModule2.tbl_stud.Delete;
end;

procedure TForm6.btn4Click(Sender: TObject);
begin
Form6.Close;
end;

procedure TForm6.btn2Click(Sender: TObject);
begin
 Form10.ShowModal;
end;

end.
