unit Unit21;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm21 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    btn1: TButton;
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form21: TForm21;

implementation

uses
  Unit2, Unit15;

{$R *.dfm}

procedure TForm21.btn1Click(Sender: TObject);
begin
 DataModule2.qry_admin.SQL.Clear;
 DataModule2.qry_admin.SQL.Add('SELECT ����� FROM users WHERE ������='''+ edt1.Text+'''');
 DataModule2.qry_admin.Open;
 if DataModule2.qry_admin.IsEmpty then
  ShowMessage('������ �������� �����!')
  else
    if DataModule2.qry_admin.FieldByName('�����').Value = edt2.Text then Form15.ShowModal
      //modalresult:=mrCancel
      else ShowMessage('������ �������� ������');
      Form21.Close;
      edt1.Clear;
      edt2.Clear;
end;

end.
