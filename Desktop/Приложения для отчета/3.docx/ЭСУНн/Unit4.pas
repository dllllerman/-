unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, jpeg, Buttons, DBCtrls;

type
  TForm4 = class(TForm)
    pnl1: TPanel;
    img1: TImage;
    lbl1: TLabel;
    dblkcbb1: TDBLookupComboBox;
    btn1: TBitBtn;
    btn2: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses
  Unit5, Unit6, Unit10, Unit2, Unit11;

{$R *.dfm}


procedure TForm4.btn1Click(Sender: TObject);
begin
DataModule2.tbl_rezul.Filter:='id_студента='''+ IntToStr(DataModule2.tbl_stud.fieldbyname('ID_студент').Value)+'''';
DataModule2.tbl_rezul.Filtered:=True;
Form11.Show;
end;

procedure TForm4.btn4Click(Sender: TObject);
begin
 Form10.ShowModal;
end;

procedure TForm4.btn2Click(Sender: TObject);
begin
Form5.Show;
end;

end.
