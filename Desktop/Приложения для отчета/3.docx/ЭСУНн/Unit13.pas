unit Unit13;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, Buttons;

type
  TForm13 = class(TForm)
    btn4: TButton;
    img1: TImage;
    btn1: TSpeedButton;
    btn3: TBitBtn;
    btn2: TBitBtn;
    btn5: TBitBtn;
    procedure btn4Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form13: TForm13;

implementation

uses
  Unit14, Unit5, Unit4, Unit19, Unit20, Unit15;

{$R *.dfm}

procedure TForm13.btn4Click(Sender: TObject);
begin
Form13.Close;
end;

procedure TForm13.btn1Click(Sender: TObject);
begin
 Form14.ShowModal;
end;

procedure TForm13.btn2Click(Sender: TObject);
begin
Form4.Show;
end;

procedure TForm13.btn3Click(Sender: TObject);
begin
Form19.Show;
end;

procedure TForm13.btn5Click(Sender: TObject);
begin
 Form20.Show;
end;

end.
