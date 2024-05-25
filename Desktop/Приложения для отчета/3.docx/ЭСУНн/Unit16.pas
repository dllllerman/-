unit Unit16;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, StdCtrls, Buttons, DBCtrls, jpeg;

type
  TForm16 = class(TForm)
    img1: TImage;
    dbgrd1: TDBGrid;
    grp1: TGroupBox;
    dbnvgr1: TDBNavigator;
    procedure btn1Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form16: TForm16;

implementation

uses
  Unit2;

{$R *.dfm}

procedure TForm16.btn1Click(Sender: TObject);
begin
 DataModule2.tbl_tema.Insert;
 dbgrd1.SetFocus;
end;

procedure TForm16.btn5Click(Sender: TObject);
begin
 if DataModule2.tbl_tema.Modified then
  DataModule2.tbl_tema.Post;
end;

procedure TForm16.btn3Click(Sender: TObject);
begin
DataModule2.tbl_tema.Delete;
end;

procedure TForm16.btn4Click(Sender: TObject);
begin
 Form16.Close;
end;

end.
