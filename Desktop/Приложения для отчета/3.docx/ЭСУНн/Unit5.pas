unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, jpeg, StdCtrls;

type
  TForm5 = class(TForm)
    img1: TImage;
    pnl1: TPanel;
    lbl1: TLabel;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    btn7: TButton;
    btn8: TButton;
    btn9: TButton;
    btn10: TButton;
    btn11: TButton;
    btn12: TButton;
    btn13: TButton;
    btn14: TButton;
    btn15: TButton;
    btn16: TButton;
    scrlbx1: TScrollBox;
    rg1: TRadioGroup;
    rg2: TRadioGroup;
    rg3: TRadioGroup;
    rg4: TRadioGroup;
    rg5: TRadioGroup;
    rg6: TRadioGroup;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

procedure TForm5.btn1Click(Sender: TObject);
begin
  // 1 вопрос
  rg1.Visible:=True;
 {rg2.Visible:=False;
  rg3.Visible:=False;
  rg4.Visible:=False;
  rg5.Visible:=False;
  rg6.Visible:=False;
  rg7.Visible:=False;
  rg8.Visible:=False;
  rg9.Visible:=False;
  rg10.Visible:=False;
  rg11.Visible:=False;
  rg12.Visible:=False;
  rg13.Visible:=False;
  rg14.Visible:=False;
  rg15.Visible:=False; }
end;

procedure TForm5.btn2Click(Sender: TObject);
begin
  // 2 вопрос
  {rg2.Visible:=True;
  rg1.Visible:=False;
  rg3.Visible:=False;
  rg4.Visible:=False;
  rg5.Visible:=False;
  rg6.Visible:=False;
  rg7.Visible:=False;
  rg8.Visible:=False;
  rg9.Visible:=False;
  rg10.Visible:=False;
  rg11.Visible:=False;
  rg12.Visible:=False;
  rg13.Visible:=False;
  rg14.Visible:=False;
  rg15.Visible:=False; }
end;

end.
