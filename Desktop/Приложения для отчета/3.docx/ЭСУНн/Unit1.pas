unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ComCtrls, OleCtrls, SHDocVw, StdCtrls, jpeg, ExtCtrls,
  Buttons;

type
  TForm1 = class(TForm)
    img1: TImage;
    btn1: TBitBtn;
    btn2: TBitBtn;
    btn3: TBitBtn;
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  Unit3, Unit4, Unit7, Unit8, Unit9, Unit13, Unit15, Unit12, Unit21;

{$R *.dfm}

procedure TForm1.N3Click(Sender: TObject);
begin
Form3.ShowModal;
end;

procedure TForm1.N4Click(Sender: TObject);
begin
Form7.ShowModal;
end;

procedure TForm1.N5Click(Sender: TObject);
begin
Form4.ShowModal;
end;

procedure TForm1.N7Click(Sender: TObject);
begin
Form8.ShowModal;
end;

procedure TForm1.N8Click(Sender: TObject);
begin
 Form9.ShowModal;
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
Form12.Show;
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
 Form21.Show;
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
Form1.Close;
end;

end.

