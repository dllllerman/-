unit Unit14;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, jpeg;

type
  TForm14 = class(TForm)
    img1: TImage;
    pnl1: TPanel;
    btn1: TBitBtn;
    btn2: TBitBtn;
    btn3: TBitBtn;
    btn4: TBitBtn;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form14: TForm14;

implementation

uses
  Unit3, Unit7, Unit8, Unit9;

{$R *.dfm}

procedure TForm14.btn1Click(Sender: TObject);
begin
form3.ShowModal;
end;

procedure TForm14.btn2Click(Sender: TObject);
begin
 Form7.ShowModal;
end;

procedure TForm14.btn3Click(Sender: TObject);
begin
form8.ShowModal;
end;

procedure TForm14.btn4Click(Sender: TObject);
begin
form9.Show;
end;

end.
