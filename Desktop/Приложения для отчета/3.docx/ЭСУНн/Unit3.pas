unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, OleCtrls, SHDocVw, StdCtrls;

type
  TForm3 = class(TForm)
    wb1: TWebBrowser;
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses
  Unit1;

{$R *.dfm}

procedure TForm3.FormCreate(Sender: TObject);
begin
  wb1.Navigate(ExtractFilePath(ParamStr(0))+'index11.htm');
end;

procedure TForm3.btn1Click(Sender: TObject);
begin
Form1.ShowModal;
end;

end.
