unit Unit20;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, jpeg;

type
  TForm20 = class(TForm)
    img1: TImage;
    pnl1: TPanel;
    pnl2: TPanel;
    lbl1: TLabel;
    edt1: TEdit;
    pnl3: TPanel;
    lbl2: TLabel;
    edt2: TEdit;
    pnl4: TPanel;
    lbl3: TLabel;
    edt3: TEdit;
    pnl5: TPanel;
    lbl4: TLabel;
    edt4: TEdit;
    pnl6: TPanel;
    lbl5: TLabel;
    edt5: TEdit;
    btn1: TBitBtn;
    btn2: TBitBtn;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    procedure btn2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form20: TForm20;

implementation

{$R *.dfm}

procedure TForm20.btn2Click(Sender: TObject);
begin
Form20.Close;
end;

procedure TForm20.btn1Click(Sender: TObject);
var v1,v2,v3,v4,v5:string;
begin
 v1:='массив';
 v1:='размер';
 v1:='индекс';
 v1:='одномерный';
 v1:='ячейка';
 if edt1.Text=v1 then lbl6.Caption:='Правильно'
 else lbl6.Caption:='Неправильно';
  if edt2.Text=v2 then lbl7.Caption:='Правильно'
 else lbl7.Caption:='Неправильно';
  if edt3.Text=v3 then lbl8.Caption:='Правильно'
 else lbl8.Caption:='Неправильно';
  if edt4.Text=v4 then lbl9.Caption:='Правильно'
 else lbl9.Caption:='Неправильно';
  if edt5.Text=v5 then lbl10.Caption:='Правильно'
 else lbl10.Caption:='Неправильно';
end;

end.
