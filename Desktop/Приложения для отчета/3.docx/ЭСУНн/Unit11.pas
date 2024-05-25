unit Unit11;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, jpeg, Grids, DBGrids, Buttons;

type
  TForm11 = class(TForm)
    img1: TImage;
    dbgrd1: TDBGrid;
    btn1: TBitBtn;
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form11: TForm11;

implementation

uses Unit4, Unit2;

{$R *.dfm}

procedure TForm11.btn1Click(Sender: TObject);
begin
 form4.show;
 form11.Close;
end;

end.
