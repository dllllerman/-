unit Unit19;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, jpeg, Buttons;

type
  TForm19 = class(TForm)
    img1: TImage;
    lbl1: TLabel;
    pnl1: TPanel;
    img2: TImage;
    img3: TImage;
    img4: TImage;
    img5: TImage;
    img6: TImage;
    img7: TImage;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    edt6: TEdit;
    btn2: TButton;
    btn1: TBitBtn;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form19: TForm19;

implementation

{$R *.dfm}

procedure TForm19.btn1Click(Sender: TObject);
var o1,o2,o3,o4,o5,o6:string;
begin
 o1:='������';
 o2:='����������������';
 o3:='�����������';
 o4:='��������';
 o5:='���������';
 o6:='�����������';
 if edt1.Text=o1 then lbl2.Caption:='���������'
 else lbl2.Caption:='�����������';
  if edt2.Text=o2 then lbl3.Caption:='���������'
 else lbl3.Caption:='�����������';
  if edt3.Text=o3 then lbl4.Caption:='���������'
 else lbl4.Caption:='�����������';
  if edt4.Text=o4 then lbl5.Caption:='���������'
 else lbl5.Caption:='�����������';
  if edt5.Text=o5 then lbl6.Caption:='���������'
 else lbl6.Caption:='�����������';
  if edt6.Text=o6 then lbl7.Caption:='���������'
 else lbl7.Caption:='�����������';
end;

procedure TForm19.btn2Click(Sender: TObject);
begin
Close;
end;

end.
