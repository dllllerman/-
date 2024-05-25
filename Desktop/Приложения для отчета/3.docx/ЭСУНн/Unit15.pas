unit Unit15;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, jpeg, ExtCtrls;

type
  TForm15 = class(TForm)
    img1: TImage;
    btn1: TBitBtn;
    btn2: TBitBtn;
    btn3: TBitBtn;
    btn4: TBitBtn;
    btn5: TBitBtn;
    procedure btn5Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form15: TForm15;

implementation

uses
  Unit16, Unit17, Unit18, Unit6, Unit13, Unit22;

{$R *.dfm}

procedure TForm15.btn5Click(Sender: TObject);
begin
Form15.Close;
end;

procedure TForm15.btn1Click(Sender: TObject);
begin
 Form16.Show;
end;

procedure TForm15.btn3Click(Sender: TObject);
begin
  Form18.Show;
end;

procedure TForm15.btn2Click(Sender: TObject);
begin
Form6.Show;
end;

procedure TForm15.btn4Click(Sender: TObject);
begin
 Form22.ShowModal;
end;

end.
