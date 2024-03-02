unit Umain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, DB, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  dxSkinsForm, cxGroupBox, UniProvider, MySQLUniProvider, DBAccess, Uni, MemDS,
  Menus,AdvMenus, StdCtrls, cxButtons, cxLabel, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, AdvWiiProgressBar, AdvCircularProgress,
  Grids, DBGrids, FolderDialog, dxSkinBlueprint, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinHighContrast, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinSevenClassic,
  dxSkinSharpPlus, dxSkinTheAsphaltWorld, dxSkinVS2010, dxSkinWhiteprint,
  ExeInfo;

type
  TFmain = class(TForm)
    cxGroupBox1: TcxGroupBox;
    dxSkinController1: TdxSkinController;
    MainMenu1: TMainMenu;
    Depurar1: TMenuItem;
    cxGroupBox2: TcxGroupBox;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1id: TcxGridDBColumn;
    cxGrid1DBTableView1cli: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxGroupBox3: TcxGroupBox;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1id: TcxGridDBColumn;
    cxGrid2DBTableView1username: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    cxGroupBox4: TcxGroupBox;
    cxGroupBox5: TcxGroupBox;
    cxGroupBox6: TcxGroupBox;
    cxDateEdit1: TcxDateEdit;
    cxLabel1: TcxLabel;
    cxButton1: TcxButton;
    cxLabel2: TcxLabel;
    cxDateEdit2: TcxDateEdit;
    cxLabel3: TcxLabel;
    cxGroupBox7: TcxGroupBox;
    mmo1: TMemo;
    cxGrid3: TcxGrid;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3Level1: TcxGridLevel;
    FolderDialog1: TFolderDialog;
    cxGrid3DBTableView1Id: TcxGridDBColumn;
    cxGrid3DBTableView1cli: TcxGridDBColumn;
    cxGrid3DBTableView1username: TcxGridDBColumn;
    cxGrid3DBTableView1UserIpV4: TcxGridDBColumn;
    cxGrid3DBTableView1UserInfo: TcxGridDBColumn;
    cxGrid3DBTableView1NasIP: TcxGridDBColumn;
    cxGrid3DBTableView1NasId: TcxGridDBColumn;
    cxGrid3DBTableView1IdSesion: TcxGridDBColumn;
    cxGrid3DBTableView1fechaini: TcxGridDBColumn;
    cxGrid3DBTableView1horaini: TcxGridDBColumn;
    cxGrid3DBTableView1fechafin: TcxGridDBColumn;
    cxGrid3DBTableView1horafin: TcxGridDBColumn;
    cxGrid3DBTableView1Protocolo: TcxGridDBColumn;
    cxGrid3DBTableView1PortType: TcxGridDBColumn;
    cxGrid3DBTableView1CausaFin: TcxGridDBColumn;
    cxGrid3DBTableView1TSesion: TcxGridDBColumn;
    cxGrid3DBTableView1InBytes: TcxGridDBColumn;
    cxGrid3DBTableView1OutBytes: TcxGridDBColumn;
    Aplicacin1: TMenuItem;
    Cerrar1: TMenuItem;
    cxButton2: TcxButton;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    ExeInfo1: TExeInfo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGrid2DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure Depurar1Click(Sender: TObject);
    procedure Cerrar1Click(Sender: TObject);
    procedure cxDateEdit2PropertiesEditValueChanged(Sender: TObject);
    procedure cxDateEdit1PropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
  public
  var
  Tcli,Tusername:Boolean;
  cli,User:string;
  week1,week2:Integer;
    { Public declarations }
  end;

var
  Fmain: TFmain;

implementation

{$R *.dfm}
uses cxGridExportLink,DateUtils,Ulogin,udm, UDepurar;

procedure TFmain.Cerrar1Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure TFmain.cxButton1Click(Sender: TObject);
var
myYear, myMonth, myDay : Word;
tabla:string;
horaini,horafin:string;
horaini1,horafin1:TDate;

begin
 if (cxDateEdit1.Text='') or (cxDateEdit2.Text='') then
  ShowMessage('Debe ingresar un rango de fecha.')
 else
 begin
  if (Tcli = false) and (Tusername = false)   then
  begin
    ShowMessage('Seleccione un campo de alguna tabla.');
  end
  else
  begin
    week1:=WeekOfTheYear(cxDateEdit1.Date);
    week2:=WeekOfTheYear(cxDateEdit2.Date);
    if week1 = week2 then
    begin
     try
      // decodificando la fecha y armando el nombre de la tabla
      DecodeDate(Fmain.cxDateEdit1.Date, myYear, myMonth, myDay);
      tabla:=IntToStr(myYear)+IntToStr(Fmain.week1);
      horaini1:=Fmain.cxDateEdit1.Date;
      horaini:=DateToStr(horaini1)+' 00:00:00';

      horafin1:=Fmain.cxDateEdit2.Date;
      horafin:=DateToStr(horaini1)+' 23:59:59';

       // si seleccionaron un cli
       if Fmain.Tcli then
       begin
        with DM.QbyCli do
        begin
          SQL.Clear;
          SQL.Add('select * from "'+tabla+ '" where "'+tabla+'".`cli` = :Pcli and "'+tabla+'".`fechaini` >= :Pinicio and "'+tabla+'".`fechafin` <= :Pfin');
          ParamByName('Pcli').AsString:= Fmain.cli;
          ParamByName('Pinicio').AsDateTime:= Fmain.cxDateEdit1.Date;
          ParamByName('Pfin').AsDateTime:= Fmain.cxDateEdit2.Date;
          Fmain.cxGrid3DBTableView1.DataController.DataSource:=DM.DSQbyCli;
          Execute;
        end;
       end;

       // si seleccionaron un username
       if Fmain.Tusername then
       begin
        with DM.Qbyusername do
        begin
          SQL.Clear;
          SQL.Add('select * from "'+tabla+ '" where "'+tabla+'".`username` = :Puser and "'+tabla+'".`fechaini` >= :Pinicio and "'+tabla+'".`fechafin` <= :Pfin');
          ParamByName('Puser').AsString:= Fmain.User;
          ParamByName('Pinicio').AsDateTime:= StrToDateTime(horaini);
          ParamByName('Pfin').AsDateTime:= StrToDateTime(horafin);
          Fmain.cxGrid3DBTableView1.DataController.DataSource:=DM.DSQbyusername;
          Execute;
        end;
       end;

     except
       ShowMessage('La tabla de la semana '+tabla+' no existe en la Base de Datos');
     end;
    end
    else ShowMessage('Debe ingresar un rango de fecha de la misma semana.');
  end;
 end;
end;

procedure TFmain.cxButton2Click(Sender: TObject);
begin
 try
  FolderDialog1.Execute;
  ExportGridToExcel(FolderDialog1.Directory+'\AAA '+'.xls',cxGrid3,false,false);
  ShowMessage(FolderDialog1.Directory+'\AAA '+'.xls');
 except
  ShowMessage('No se pudo exportar');
 end;
end;

procedure TFmain.cxDateEdit1PropertiesEditValueChanged(Sender: TObject);
begin
  try
   lbl2.Caption:=IntToStr(WeekOfTheYear(cxDateEdit1.Date));
  except

  end;
end;

procedure TFmain.cxDateEdit2PropertiesEditValueChanged(Sender: TObject);
begin
 try
  lbl4.Caption:=IntToStr(WeekOfTheYear(cxDateEdit2.Date));
 except

 end;
end;

procedure TFmain.cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  Tcli:=True;
  Tusername:=false;
  cli:=cxGrid1DBTableView1.DataController.DataSet.FieldByName('cli').AsString;
  cxButton1.Enabled:=True;
  cxLabel3.Visible:=True;
  cxLabel3.Caption:= 'Buscando por : '+cli;
end;

procedure TFmain.cxGrid2DBTableView1CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  Tcli:=false;
  Tusername:=True;
  user:=cxGrid2DBTableView1.DataController.DataSet.FieldByName('username').AsString;
  cxButton1.Enabled:=True;
  cxLabel3.Visible:=True;
  cxLabel3.Caption:= 'Buscando por : '+user;
end;

procedure TFmain.Depurar1Click(Sender: TObject);
begin
fdepurar.ShowModal;
end;

procedure TFmain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Application.Terminate;
end;

procedure TFmain.FormShow(Sender: TObject);
begin
  Fmain.Caption:='Accessos AAA   '+ ExeInfo1.FileVersion;
  DM.qcli.execute;
  DM.qusername.execute;

  dm.Qlistartablas.Execute;
  if  dm.Qlistartablas.RecordCount > 50 then
  mmo1.Lines.Add('Debe depurar la base de datos');

end;

end.
