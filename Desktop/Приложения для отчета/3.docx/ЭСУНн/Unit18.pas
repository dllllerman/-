unit Unit18;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, jpeg, ExtCtrls;

type
  TForm18 = class(TForm)
    img1: TImage;
    dbgrd1: TDBGrid;
    btn1: TButton;
    btn2: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form18: TForm18;

implementation

uses
  Unit2, Unit17;

{$R *.dfm}

procedure TForm18.btn1Click(Sender: TObject);
begin
  Form17.Show;
end;

procedure TForm18.btn2Click(Sender: TObject);
begin
  Form18.Close;
end;

end.
