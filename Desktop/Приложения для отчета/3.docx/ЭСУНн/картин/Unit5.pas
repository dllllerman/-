unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, jpeg, StdCtrls, DBCtrls, Buttons;

type
  TForm5 = class(TForm)
    img1: TImage;
    pnl1: TPanel;
    tmr1: TTimer;
    lbl_time: TLabel;
    lbl1: TLabel;
    rg1: TRadioGroup;
    grp1: TGroupBox;
    dbtxt1: TDBText;
    btn1: TBitBtn;
    btn2: TBitBtn;
    btn3: TBitBtn;
    lbl2: TLabel;
    procedure tmr1Timer(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    //procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;
  n,p:Integer;
  time_test:LongInt;
implementation

uses
  Unit4, Unit10, Unit11, Unit2, Unit6;

{$R *.dfm}

procedure TForm5.tmr1Timer(Sender: TObject);
var min, sec,d,o2,o3:integer;
o:Extended;
begin
  Dec(time_test);
  sec:=time_test mod 60;
  min:=(time_test div 60) mod 60;
  lbl_time.Caption:='Время: ' + IntToStr(min)+ ':' + IntToStr(sec);
  if time_test=0 then
  begin

    //записываем результат
    DataModule2.tbl_rezul.Insert;
    DataModule2.tbl_rezul.Fields.Fields[5].AsInteger:=o2;
    DataModule2.tbl_rezul.Fields.Fields[3].AsInteger:=p;
    DataModule2.tbl_rezul.Fields.Fields[4].AsDateTime:=Date;
    DataModule2.tbl_rezul.Fields.Fields[6].AsInteger:=DataModule2.tbl_tema.Fields.Fields[0].AsInteger;
    DataModule2.tbl_rezul.Fields.Fields[7].AsInteger:=DataModule2.tbl_stud.Fields.Fields[0].AsInteger;
    if DataModule2.tbl_rezul.Modified then DataModule2.tbl_rezul.Post;
  end;
end;

procedure TForm5.btn1Click(Sender: TObject);
var i:Integer;
begin
  time_test:=900;
  tmr1.Enabled:=True;
  grp1.Enabled:=True;
  DataModule2.tbl_otv_mass.First;
  for i:=0 to DataModule2.tbl_otv_mass.RecordCount-1 do begin
    rg1.Items.Add(DataModule2.tbl_otv_mass.Fields.Fields[2].AsString);
    DataModule2.tbl_otv_mass.Next;
  end;
end;



procedure TForm5.btn2Click(Sender: TObject);
  var i,n:Integer;
begin
 DataModule2.tbl_otv_mass.First;
   for i:=0 to DataModule2.tbl_otv_mass.RecordCount-1 do begin
     if (DataModule2.tbl_otv_mass.Fields.Fields[2].AsString=rg1.Items.Strings[rg1.ItemIndex]) and
     (DataModule2.tbl_otv_mass.Fields.Fields[3].AsBoolean=True)
     then p:=p+1;
     DataModule2.tbl_otv_mass.Next;
   end;
   n:=n+1;
   if n < DataModule2.tbl_test_mas.RecordCount then
   begin
   grp1.Caption:='Вопрос ' + IntToStr(n+1) + ' из ' + IntToStr(DataModule2.tbl_test_mas.RecordCount);
   end
  else lbl2.Caption:='Тест окончен,' + 'Верных ответов: ' + IntToStr(p);
    if DataModule2.tbl_test_mas.RecordCount=n then
    begin
      btn1.Enabled:=false;
      btn3.Enabled:=False;
      grp1.Enabled:=False;
    end;
    DataModule2.tbl_test_mas.Next;
    rg1.Items.Clear;
    DataModule2.tbl_otv_mass.First;
    for i:=0 to DataModule2.tbl_otv_mass.RecordCount-1 do begin
      rg1.Items.Add(DataModule2.tbl_otv_mass.Fields.Fields[2].AsString);
      DataModule2.tbl_otv_mass.Next;
    end;
   end;

procedure TForm5.btn3Click(Sender: TObject);
  var i:Integer;
  oc:integer;
begin
  //считаем оценку
  if p<=4 then oc:=2;
  if (p>=5) and (p<=6) then oc:=3;
  if (p>=7) and (p<=9) then oc:=4;
  if (p>=10) then oc:=5;
  // записываем результат
    DataModule2.tbl_rezul.Insert;
    DataModule2.tbl_rezul.Fields.Fields[2].AsInteger:=oc;
    DataModule2.tbl_rezul.Fields.Fields[3].AsInteger:=p;   //верные ответы
    DataModule2.tbl_rezul.Fields.Fields[4].AsDateTime:=Date;
    DataModule2.tbl_rezul.Fields.Fields[5].AsInteger:=DataModule2.tbl_tema.Fields.Fields[0].AsInteger;
    DataModule2.tbl_rezul.Fields.Fields[2].AsInteger:=DataModule2.tbl_stud.Fields.Fields[0].AsInteger;
    if DataModule2.tbl_rezul.Modified then DataModule2.tbl_rezul.Post;
    lbl2.Caption:='Тест выполнен на ' + IntToStr(oc);
end;

{procedure TForm5.FormCreate(Sender: TObject);
var i:integer;
begin
  DataModule2.tbl_otv_mass.First;
  for i:=0 to DataModule2.tbl_otv_mass.RecordCount-1 do begin
    rg1.Items.Add(DataModule2.tbl_otv_mass.Fields.Fields[2].AsString);
    DataModule2.tbl_otv_mass.Next;
  end;
end;    }

end.
