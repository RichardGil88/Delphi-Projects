unit Unit13;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxPC, cxContainer, cxEdit, Menus,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, StdCtrls, cxButtons, cxGroupBox,
  cxDropDownEdit, cxCalendar, cxTextEdit, cxLabel, cxMaskEdit, cxMemo,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, ExtCtrls,
  AdvCircularProgress, cxGridExportLink;

type
  TFunidad6 = class(TForm)
    GB_ASISTENCIA: TcxGroupBox;
    GB_VIRUS: TcxGroupBox;
    GB_REPORTE: TcxGroupBox;
    cxGroupBox4: TcxGroupBox;
    button1: TcxButton;
    button2: TcxButton;
    cxGroupBox5: TcxGroupBox;
    cxGroupBox1: TcxGroupBox;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    cxGroupBox2: TcxGroupBox;
    cxGroupBox3: TcxGroupBox;
    cxButton5: TcxButton;
    cxButton6: TcxButton;
    cxGroupBox6: TcxGroupBox;
    cxMaskEdit1: TcxMaskEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxMaskEdit2: TcxMaskEdit;
    cxLabel3: TcxLabel;
    cxMaskEdit3: TcxMaskEdit;
    cxLabel4: TcxLabel;
    cxMaskEdit4: TcxMaskEdit;
    cxLabel5: TcxLabel;
    cxMaskEdit5: TcxMaskEdit;
    cxLabel6: TcxLabel;
    cxMaskEdit6: TcxMaskEdit;
    cxLabel7: TcxLabel;
    cxMaskEdit7: TcxMaskEdit;
    cxLabel8: TcxLabel;
    cxMaskEdit8: TcxMaskEdit;
    cxLabel9: TcxLabel;
    cxMaskEdit9: TcxMaskEdit;
    cxLabel10: TcxLabel;
    cxMaskEdit10: TcxMaskEdit;
    cxLabel11: TcxLabel;
    cxMaskEdit11: TcxMaskEdit;
    cxLabel12: TcxLabel;
    cxMaskEdit12: TcxMaskEdit;
    cxLabel13: TcxLabel;
    cxMaskEdit13: TcxMaskEdit;
    cxLabel14: TcxLabel;
    cxMaskEdit14: TcxMaskEdit;
    cxLabel15: TcxLabel;
    cxMaskEdit15: TcxMaskEdit;
    cxLabel16: TcxLabel;
    cxMaskEdit16: TcxMaskEdit;
    cxTextEdit1: TcxTextEdit;
    cxLabel17: TcxLabel;
    cxLabel18: TcxLabel;
    cxMaskEdit17: TcxMaskEdit;
    cxLabel19: TcxLabel;
    cxMaskEdit18: TcxMaskEdit;
    cxLabel20: TcxLabel;
    cxMaskEdit19: TcxMaskEdit;
    cxLabel22: TcxLabel;
    cxLabel24: TcxLabel;
    cxMemo1: TcxMemo;
    cxDateEdit1: TcxDateEdit;
    cxLabel25: TcxLabel;
    cxLookupComboBox2: TcxLookupComboBox;
    cxLabel26: TcxLabel;
    cxTextEdit4: TcxTextEdit;
    cxLabel28: TcxLabel;
    cxTextEdit5: TcxTextEdit;
    cxTextEdit6: TcxTextEdit;
    cxLabel29: TcxLabel;
    cxLabel30: TcxLabel;
    cxLabel31: TcxLabel;
    cxTextEdit7: TcxTextEdit;
    cxLabel32: TcxLabel;
    cxTextEdit8: TcxTextEdit;
    cxLookupComboBox3: TcxLookupComboBox;
    cxLabel33: TcxLabel;
    cxMemo2: TcxMemo;
    cxDateEdit2: TcxDateEdit;
    FECHA: TcxLabel;
    cxDateEdit3: TcxDateEdit;
    cxLabel21: TcxLabel;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGridDBTableView2FECHA: TcxGridDBColumn;
    cxGridDBTableView2DPTO: TcxGridDBColumn;
    cxGridDBTableView2GRADONOMBREYAPEELIDOSDELOO: TcxGridDBColumn;
    cxGridDBTableView2TIPODEEXTRAIBLE: TcxGridDBColumn;
    cxGridDBTableView2RSDELOCIC: TcxGridDBColumn;
    cxGridDBTableView2RegDELEXTRAIBLE: TcxGridDBColumn;
    cxGridDBTableView2BUSCARINFEN: TcxGridDBColumn;
    cxGridDBTableView2TIPODEVIRUS: TcxGridDBColumn;
    cxGridDBTableView2USUARIO: TcxGridDBColumn;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1FECHA: TcxGridDBColumn;
    cxGridDBTableView1CANTTRAZAS: TcxGridDBColumn;
    cxGridDBTableView1CANTMCC: TcxGridDBColumn;
    cxGridDBTableView1CANTSOPORTESDESC: TcxGridDBColumn;
    cxGridDBTableView1OTRASMTO: TcxGridDBColumn;
    cxGridDBTableView1INCIDENCIASTECYOPER: TcxGridDBColumn;
    cxGridDBTableView1USUARIO: TcxGridDBColumn;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    cxGrid1DBTableView1FECHA: TcxGridDBColumn;
    cxGrid1DBTableView1PLANTILLA: TcxGridDBColumn;
    cxGrid1DBTableView1COAS: TcxGridDBColumn;
    cxGrid1DBTableView1TMEDIOINFORMATICA: TcxGridDBColumn;
    cxGrid1DBTableView1DIRECCION: TcxGridDBColumn;
    cxGrid1DBTableView1APLICADORESASITENCIATECNICA: TcxGridDBColumn;
    cxGrid1DBTableView1SERVICIODEGUARDIA: TcxGridDBColumn;
    cxGrid1DBTableView1CS: TcxGridDBColumn;
    cxGrid1DBTableView1EA: TcxGridDBColumn;
    cxGrid1DBTableView1PREPMILITAR: TcxGridDBColumn;
    cxGrid1DBTableView1CHEQMEDICOS: TcxGridDBColumn;
    cxGrid1DBTableView1RS: TcxGridDBColumn;
    cxGrid1DBTableView1VAC: TcxGridDBColumn;
    cxGrid1DBTableView1LSS: TcxGridDBColumn;
    cxGrid1DBTableView1ENFERMO: TcxGridDBColumn;
    cxGrid1DBTableView1PROBLEMASPERSONALES: TcxGridDBColumn;
    cxGrid1DBTableView1OTROS: TcxGridDBColumn;
    cxGrid1DBTableView1USUARIO: TcxGridDBColumn;
    cxGrid1DBTableView1FRANCO: TcxGridDBColumn;
    AdvCircularProgress1: TAdvCircularProgress;
    AdvCircularProgress2: TAdvCircularProgress;
    AdvCircularProgress3: TAdvCircularProgress;
    cxButton1: TcxButton;
    procedure button2Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Funidad6: TFunidad6;

implementation
 USES Unit2,Unit1;
{$R *.dfm}

procedure TFunidad6.button1Click(Sender: TObject);
begin
if (cxMaskEdit1.Text='')or (cxMaskEdit2.Text='')or (cxMaskEdit3.Text='') or
   (cxMaskEdit4.Text='')or (cxMaskEdit5.Text='')or (cxMaskEdit6.Text='') or
   (cxMaskEdit7.Text='')or (cxMaskEdit8.Text='')or (cxMaskEdit9.Text='') or
   (cxMaskEdit10.Text='')or (cxMaskEdit11.Text='')or (cxMaskEdit12.Text='') or
   (cxMaskEdit13.Text='')or (cxMaskEdit14.Text='')or (cxMaskEdit15.Text='') or
   (cxMaskEdit16.Text='')or (cxTextEdit1.Text='')or (cxDateEdit3.Text='')then
    ShowMessage('DEBE LLENAR LOS DATOS')
else
 begin
    with DM.UniSQL1 do
  begin
   try
     begin
      SQL.Clear;
      SQL.Add('insert into  `vi-6 asistencia` (FECHA,PLANTILLA,COAS,"T/MEDIO INFORMATICA",DIRECCION,"APLICADORES/ASITENCIA TECNICA","SERVICIO DE GUARDIA","C/S","E/A","PREP MILITAR","CHEQ MEDICOS",RS,VAC,LSS,FRANCO,ENFERMO,"PROBLEMAS PERSONALES",OTROS,USUARIO)');
      SQL.Add('values (:FECHA,:PLANTILLA,:COAS,:TMEDIO,:DIRECCION,:APLICADORES,:SERVICIODEGUARDIA,:CS,:EA,:PREPMILITAR,:CHEQMEDIOS,:RS,:VAC,:LSS,:FRANCO,:ENFERMO,:PROBLEMAS,:OTROS,:USUARIO);');
      ParamByName('USUARIO').AsString:=Fmain.usuario;
      ParamByName('FECHA').AsDateTime:=cxDateEdit3.Date;
      ParamByName('PLANTILLA').AsInteger:=StrToInt(cxMaskEdit1.Text);
      ParamByName('COAS').AsInteger:=StrToInt(cxMaskEdit2.Text);
      ParamByName('TMEDIO').AsInteger:=StrToInt(cxMaskEdit3.Text);
      ParamByName('DIRECCION').AsInteger:=StrToInt(cxMaskEdit4.Text);
      ParamByName('APLICADORES').AsInteger:=StrToInt(cxMaskEdit5.Text);
      ParamByName('SERVICIODEGUARDIA').AsInteger:=StrToInt(cxMaskEdit6.Text);
      ParamByName('CS').AsInteger:=StrToInt(cxMaskEdit7.Text);
      ParamByName('EA').AsInteger:=StrToInt(cxMaskEdit8.Text);
      ParamByName('PREPMILITAR').AsInteger:=StrToInt(cxMaskEdit9.Text);
      ParamByName('CHEQMEDIOS').AsInteger:=StrToInt(cxMaskEdit10.Text);
      ParamByName('RS').AsInteger:=StrToInt(cxMaskEdit11.Text);
      ParamByName('VAC').AsInteger:=StrToInt(cxMaskEdit12.Text);
      ParamByName('LSS').AsInteger:=StrToInt(cxMaskEdit13.Text);
      ParamByName('FRANCO').AsInteger:=StrToInt(cxMaskEdit14.Text);
      ParamByName('ENFERMO').AsInteger:=StrToInt(cxMaskEdit15.Text);
      ParamByName('PROBLEMAS').AsInteger:=StrToInt(cxMaskEdit16.Text);
      ParamByName('OTROS').AsString:=cxTextEdit1.Text;
      Execute;
      cxGrid1DBTableView1.DataController.DataSource.DataSet.Refresh;
      ShowMessage('DATOS AGREGADOS CON EXITO');

      cxMaskEdit1.Clear;
      cxMaskEdit2.Clear;
      cxMaskEdit3.Clear;
      cxMaskEdit4.Clear;
      cxMaskEdit5.Clear;
      cxMaskEdit6.Clear;
      cxMaskEdit7.Clear;
      cxMaskEdit8.Clear;
      cxMaskEdit9.Clear;
      cxMaskEdit10.Clear;
      cxMaskEdit11.Clear;
      cxMaskEdit12.Clear;
      cxMaskEdit13.Clear;
      cxMaskEdit14.Clear;
      cxMaskEdit15.Clear;
      cxMaskEdit16.Clear;
      cxTextEdit1.Clear;
      cxDateEdit3.Clear;
     end;
   except
       ShowMessage('NO SE PUDIERON AGREGAR LOS DATOS');
   end;
  end;
 end;
end;

procedure TFunidad6.button2Click(Sender: TObject);
begin
Close;
cxMaskEdit1.Clear;
cxMaskEdit2.Clear;
cxMaskEdit3.Clear;
cxMaskEdit4.Clear;
cxMaskEdit5.Clear;
cxMaskEdit6.Clear;
cxMaskEdit7.Clear;
cxMaskEdit8.Clear;
cxMaskEdit9.Clear;
cxMaskEdit10.Clear;
cxMaskEdit11.Clear;
cxMaskEdit12.Clear;
cxMaskEdit13.Clear;
cxMaskEdit14.Clear;
cxMaskEdit15.Clear;
cxMaskEdit16.Clear;
cxTextEdit1.Clear;
end;

procedure TFunidad6.cxButton1Click(Sender: TObject);
begin
ExportGridToExcel('REPORTE 6 EXPORTADO.xls',cxGrid2,True,False);
end;

procedure TFunidad6.cxButton3Click(Sender: TObject);
begin
if (cxMaskEdit17.Text='')or (cxMaskEdit18.Text='')or (cxMaskEdit19.Text='')or
     (cxMemo2.Text='') or
     (cxMemo1.Text='')then
    ShowMessage('DEBE LLENAR LOS DATOS')
else
 begin
    with DM.UniSQL1 do
  begin
  try
     begin
      SQL.Clear;
      SQL.Add(' insert into `vi-6 REPORTE 1` (FECHA,"CANT TRAZAS","CANT MCC","CANT SOPORTES DESC","OTRAS MTO","INCIDENCIAS TEC Y OPER",USUARIO)');
      SQL.Add('values (:FECHA,:CANTTRAZAS,:CANTMCC,:CANTSOPORTESDESC,:OTRASMTO,:INCIDENCIASTECYOPER,:USUARIO);');
      ParamByName('USUARIO').AsString:=Fmain.usuario;
      ParamByName('FECHA').AsDateTime:=cxDateEdit2.Date;
      ParamByName('CANTTRAZAS').AsInteger:=StrToInt(cxMaskEdit17.Text);
      ParamByName('CANTMCC').AsInteger:=StrToInt(cxMaskEdit18.Text);
      ParamByName('CANTSOPORTESDESC').AsInteger:=StrToInt(cxMaskEdit19.Text);
      ParamByName('OTRASMTO').AsString:=cxMemo2.Text;
      ParamByName('INCIDENCIASTECYOPER').AsString:=cxMemo1.Text;
      Execute;
      cxGridDBTableView1.DataController.DataSource.DataSet.Refresh;
      ShowMessage('DATOS AGREGADOS CON EXITO');
      cxMaskEdit17.Clear;
      cxMaskEdit18.Clear;
      cxMaskEdit19.Clear;
      cxMemo2.Clear;
      cxMemo1.Clear;
     end;
  except
       ShowMessage('NO SE PUDIERON AGREGAR LOS DATOS');
  end;
  end;
 end;
end;

procedure TFunidad6.cxButton4Click(Sender: TObject);
begin
Close;
end;

procedure TFunidad6.cxButton5Click(Sender: TObject);
begin
if (cxDateEdit1.Text='')or (cxTextEdit5.Text='')or (cxTextEdit4.Text='') or
   (cxLookupComboBox2.Text='')or (cxTextEdit6.Text='')
   or (cxTextEdit7.Text='')or (cxLookupComboBox3.Text='')or (cxTextEdit8.Text='') then
    ShowMessage('DEBE LLENAR LOS DATOS')
else
 begin
  with DM.UniSQL1 do
  begin
  try
     begin
      SQL.Clear;
      SQL.Add('insert into `vi-6 control de virus` (FECHA,DPTO,"GRADO/NOMBRE Y APEELIDOS DEL O/O","TIPO DE EXTRAIBLE","RS DEL OCIC","Reg DEL EXTRAIBLE","BUSCAR INF EN:","TIPO DE VIRUS",USUARIO)');
      SQL.Add('values (:FECHA,:DPTO,:GRADO,:TIPODEEXTRAIBLE,:RS,:REGESTRAIBLE,:BUSCAR,:TIPOVIRUS,:USUARIO);');
      ParamByName('USUARIO').AsString:=Fmain.usuario;
      ParamByName('FECHA').AsDateTime:=cxDateEdit1.Date;
      ParamByName('DPTO').AsString:=cxLookupComboBox2.Text;
      ParamByName('GRADO').AsString:=cxTextEdit4.Text;
      ParamByName('TIPODEEXTRAIBLE').AsString:=cxTextEdit5.Text;
      ParamByName('RS').AsString:= cxTextEdit6.Text;
      ParamByName('REGESTRAIBLE').AsString:=cxTextEdit7.Text;
      ParamByName('BUSCAR').AsString:=cxLookupComboBox3.Text;
      ParamByName('TIPOVIRUS').AsString:=cxTextEdit8.Text;
      Execute;
      cxGridDBTableView2.DataController.DataSource.DataSet.Refresh;
      ShowMessage('DATOS AGREGADOS CON EXITO');

      cxDateEdit1.Clear;
      CXTEXTEDIT5.Clear;
      CXTEXTEDIT4.Clear;
      CXTEXTEDIT6.Clear;
      CXTEXTEDIT7.Clear;
      CXTEXTEDIT8.Clear;
      cxLookupComboBox2.Clear;
      cxLookupComboBox3.Clear;

     end;
  except
       ShowMessage('NO SE PUDIERON AGREGAR LOS DATOS');
  end;
  end;
 end;
end;

procedure TFunidad6.cxButton6Click(Sender: TObject);
begin
Close;
end;

procedure TFunidad6.FormShow(Sender: TObject);
begin
cxgrid1.Visible:=True;
cxgrid2.Visible:=True;
cxgrid3.Visible:=True;

cxGrid1DBTableView1.NavigatorButtons.Append.Visible:=False;
cxGrid1DBTableView1.NavigatorButtons.Insert.Visible:=False;

  if Fmain.cargo='usuario' then
    begin
     cxGrid1DBTableView1.OptionsData.Editing:=False;
     cxGrid1DBTableView1.NavigatorButtons.Insert.Visible:=False;
     cxGrid1DBTableView1.NavigatorButtons.Post.Visible:=False;
     cxGrid1DBTableView1.NavigatorButtons.Append.Visible:=False;
     cxGrid1DBTableView1.NavigatorButtons.Delete.Visible:=False;
     cxGrid1DBTableView1.NavigatorButtons.Edit.Visible:=False;
     cxGrid1DBTableView1.OptionsSelection.CellSelect:=false;
    end;
    if (Fmain.cargo='usuario') or (Fmain.cargo='admin') then
    begin
      cxButton1.Visible:=False;
    end;

    cxLookupComboBox2.Properties.ListSource.DataSet.Active:=True;
    cxLookupComboBox3.Properties.ListSource.DataSet.Active:=True;

    cxGridDBTableView1.DataController.DataSource.DataSet.Active:=True;
    cxGrid1DBTableView1.DataController.DataSource.DataSet.Active:=True;
    cxGridDBTableView2.DataController.DataSource.DataSet.Active:=True;

    cxMaskEdit1.Clear;
    cxMaskEdit2.Clear;
    cxMaskEdit3.Clear;
    cxMaskEdit4.Clear;
    cxMaskEdit5.Clear;
    cxMaskEdit6.Clear;
    cxMaskEdit7.Clear;
    cxMaskEdit8.Clear;
    cxMaskEdit9.Clear;
    cxMaskEdit10.Clear;
    cxMaskEdit11.Clear;
    cxMaskEdit12.Clear;
    cxMaskEdit13.Clear;
    cxMaskEdit14.Clear;
    cxMaskEdit15.Clear;
    cxMaskEdit16.Clear;
    cxTextEdit1.Clear;

    cxDateEdit1.Clear;
    CXTEXTEDIT5.Clear;
    CXTEXTEDIT4.Clear;
    CXTEXTEDIT6.Clear;
    CXTEXTEDIT7.Clear;
    CXTEXTEDIT8.Clear;
    cxLookupComboBox2.Clear;
    cxLookupComboBox3.Clear;

    cxMaskEdit17.Clear;
    cxMaskEdit18.Clear;
    cxMaskEdit19.Clear;
    cxMemo1.Clear;
end;

end.
