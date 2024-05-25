unit Unit10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, jpeg, DBCtrls, Buttons, Mask;

type
  TForm10 = class(TForm)
    img1: TImage;
    grp1: TGroupBox;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    dbedt1: TDBEdit;
    dbedt2: TDBEdit;
    dbedt3: TDBEdit;
    dbedt4: TDBEdit;
    dbedt5: TDBEdit;
    dbedt6: TDBEdit;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form10: TForm10;
implementation

uses Unit11, Unit2;

{$R *.dfm}

procedure TForm10.btn1Click(Sender: TObject);
begin
 if DataModule2.tbl_stud.Modified then
 DataModule2.tbl_stud.Post;
end;

procedure TForm10.btn2Click(Sender: TObject);
begin
DataModule2.tbl_stud.Cancel;
end;

procedure TForm10.btn3Click(Sender: TObject);
begin
Form10.Close;
end;

end.





