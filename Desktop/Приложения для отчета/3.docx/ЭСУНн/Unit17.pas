unit Unit17;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, Grids, DBGrids, StdCtrls, DBCtrls;

type
  TForm17 = class(TForm)
    img1: TImage;
    dbnvgr1: TDBNavigator;
    grp1: TGroupBox;
    dbchk1: TDBCheckBox;
    dbnvgr2: TDBNavigator;
    dbgrd1: TDBGrid;
    dbgrd2: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form17: TForm17;

implementation

uses
  Unit2;

{$R *.dfm}

end.
