unit Unit2;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDataModule2 = class(TDataModule)
    con1: TADOConnection;
    tbl_stud: TADOTable;
    tbl_rezul: TADOTable;
    tbl_tema: TADOTable;
    tbl_otv_mass: TADOTable;
    ds_stud: TDataSource;
    ds_rezul: TDataSource;
    ds_tema: TDataSource;
    ds_totv_mas: TDataSource;
    tbl_test_mas: TADOTable;
    ds_test_mas: TDataSource;
    ds1: TDataSource;
    atncfld_massID_1: TAutoIncField;
    intgrfld_massid_2: TIntegerField;
    wdstrngfld_massDSDesigner: TWideStringField;
    blnfld_massDSDesigner2: TBooleanField;
    atncfld_test_masID_1: TAutoIncField;
    wdstrngfld_test_masDSDesigner: TWideStringField;
    intgrfld_test_masid_2: TIntegerField;
    atncfld_temaID_1: TAutoIncField;
    wdstrngfld_temaDSDesigner: TWideStringField;
    qry1: TADOQuery;
    atncfld_studID_1: TAutoIncField;
    wdstrngfld_studDSDesigner: TWideStringField;
    wdstrngfld_studDSDesigner2: TWideStringField;
    wdstrngfld_studDSDesigner3: TWideStringField;
    wdstrngfld_studDSDesigner4: TWideStringField;
    intgrfld_studDSDesigner5: TIntegerField;
    wdstrngfld_studDSDesigner6: TWideStringField;
    blnfld_studDSDesigner7: TBooleanField;
    strngfld_test_mastema: TStringField;
    tbl_user: TADOTable;
    ds_user: TDataSource;
    atncfld_userID_1: TAutoIncField;
    wdstrngfld_userDSDesigner: TWideStringField;
    wdstrngfld_userDSDesigner2: TWideStringField;
    qry_admin: TADOQuery;
    ds_admin: TDataSource;
    qry2: TADOQuery;
    ds2: TDataSource;
    atncfld_rezulID_1: TAutoIncField;
    intgrfld_rezulid_2: TIntegerField;
    intgrfld_rezulDSDesigner: TIntegerField;
    intgrfld_rezul_1: TIntegerField;
    dtmflds_rezulDSDesigner2: TDateTimeField;
    intgrfld_rezulid_3: TIntegerField;
    wdstrngfldqry2DSDesigner: TWideStringField;
    wdstrngfldqry2DSDesigner2: TWideStringField;
    wdstrngfldqry2DSDesigner3: TWideStringField;
    wdstrngfldqry2DSDesigner4: TWideStringField;
    intgrfldqry2DSDesigner5: TIntegerField;
    intgrfldqry2_1: TIntegerField;
    wdstrngfldqry2DSDesigner1: TWideStringField;
    procedure tbl_studFilterRecord(DataSet: TDataSet; var Accept: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule2: TDataModule2;

implementation

uses
  Unit5, Unit6;

{$R *.dfm}

procedure TDataModule2.tbl_studFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
Accept:=False;
if Copy(wdstrngfld_studDSDesigner.AsString,1,Length(Form6.edt1.Text))=Form6.edt1.Text
then Accept:=True;
end;

end.
