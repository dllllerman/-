unit Unit12;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls;

type
  TForm12 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    btn1: TButton;
    procedure edt1Change(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure edt2Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form12: TForm12;

implementation

uses
  Unit2, Unit1, Unit13, Unit15;

{$R *.dfm}

procedure TForm12.edt1Change(Sender: TObject);
begin
  if edt1.Text<> '' then
  begin
    DataModule2.tbl_stud.Filtered:=False;
    DataModule2.tbl_stud.Filter:='Фамилия='''+ edt1.Text+'''';
    DataModule2.tbl_stud.Filtered:=True;
  end
  else
  DataModule2.tbl_stud.Filtered:=False;
end;

procedure TForm12.btn1Click(Sender: TObject);
begin
  DataModule2.qry1.SQL.Clear;
  DataModule2.qry1.SQL.Add('SELECT Фамилия FROM Студенты WHERE ключ='''+ edt2.Text+'''');
  DataModule2.qry1.Open;
  if DataModule2.qry1.IsEmpty then
    ShowMessage('Как вас зовут!')
    else
    if DataModule2.qry1.FieldByName('Фамилия').Value=edt1.Text then Form13.ShowModal
    //modalresult:=mrCancel
    else ShowMessage('Неверный пароль!');
    Form12.Close;
    edt1.Clear;
    edt2.Clear;
end;

procedure TForm12.edt2Change(Sender: TObject);
begin
  if edt2.Text<>'' then
  begin
  DataModule2.tbl_stud.Filtered:=False;
  DataModule2.tbl_stud.Filter:='ключ='''+ edt2.Text+'''';
  DataModule2.tbl_stud.Filtered:=True;
  end
  else
  DataModule2.tbl_stud.Filtered:=False;
end;

end.
