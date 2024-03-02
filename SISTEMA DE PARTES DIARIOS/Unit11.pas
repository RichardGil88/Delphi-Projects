unit Unit11;

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
  dxSkinXmas2008Blue, Menus, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, StdCtrls, cxButtons, cxGroupBox, cxLabel, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxCalendar, cxGridExportLink,
  ExtCtrls, AdvCircularProgress, dxSkinBlueprint, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinHighContrast, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinSevenClassic,
  dxSkinSharpPlus, dxSkinTheAsphaltWorld, dxSkinVS2010, dxSkinWhiteprint;

type
  TFasistencia = class(TForm)
    cxGroupBox1: TcxGroupBox;
    button1: TcxButton;
    button2: TcxButton;
    cxGroupBox2: TcxGroupBox;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
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
    cxLabel17: TcxLabel;
    cxMaskEdit17: TcxMaskEdit;
    cxLabel18: TcxLabel;
    cxMaskEdit18: TcxMaskEdit;
    cxLabel19: TcxLabel;
    cxMaskEdit19: TcxMaskEdit;
    cxLabel20: TcxLabel;
    cxMaskEdit20: TcxMaskEdit;
    cxTextEdit1: TcxTextEdit;
    cxLookupComboBox1: TcxLookupComboBox;
    cxLabel21: TcxLabel;
    cxLabel22: TcxLabel;
    cxDateEdit1: TcxDateEdit;
    FFECHA: TcxLabel;
    cxButton1: TcxButton;
    cxGrid1DBTableView1FECHA: TcxGridDBColumn;
    cxGrid1DBTableView1UNIDAD: TcxGridDBColumn;
    cxGrid1DBTableView1LUGARDEMONITOREO: TcxGridDBColumn;
    cxGrid1DBTableView1KT: TcxGridDBColumn;
    cxGrid1DBTableView1KM: TcxGridDBColumn;
    cxGrid1DBTableView1KD: TcxGridDBColumn;
    cxGrid1DBTableView1ESCRITO: TcxGridDBColumn;
    cxGrid1DBTableView1ADMSIST: TcxGridDBColumn;
    cxGrid1DBTableView1OCIC: TcxGridDBColumn;
    cxGrid1DBTableView1DIRECCION: TcxGridDBColumn;
    cxGrid1DBTableView1CADETESISMI: TcxGridDBColumn;
    cxGrid1DBTableView1SERVDEGUARDIA: TcxGridDBColumn;
    cxGrid1DBTableView1COMISIONSERV: TcxGridDBColumn;
    cxGrid1DBTableView1ESTUDIOAUTORIZADO: TcxGridDBColumn;
    cxGrid1DBTableView1PREPMILITAR: TcxGridDBColumn;
    cxGrid1DBTableView1CHEQUEOMEDICO: TcxGridDBColumn;
    cxGrid1DBTableView1VAC: TcxGridDBColumn;
    cxGrid1DBTableView1LM: TcxGridDBColumn;
    cxGrid1DBTableView1LSS: TcxGridDBColumn;
    cxGrid1DBTableView1RS: TcxGridDBColumn;
    cxGrid1DBTableView1ENFERMO: TcxGridDBColumn;
    cxGrid1DBTableView1PROBPERSOFAMILIAR: TcxGridDBColumn;
    cxGrid1DBTableView1FRANCO: TcxGridDBColumn;
    cxGrid1DBTableView1OTROS: TcxGridDBColumn;
    cxGrid1DBTableView1USUARIO: TcxGridDBColumn;
    cxGrid1DBTableView1IDASISTENCIA: TcxGridDBColumn;
    AdvCircularProgress1: TAdvCircularProgress;
    procedure button1Click(Sender: TObject);
    procedure button2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fasistencia: TFasistencia;

implementation
uses Unit2,Unit1;
{$R *.dfm}

procedure TFasistencia.button1Click(Sender: TObject);
begin
if (cxMaskEdit1.Text='')or (cxMaskEdit2.Text='')or (cxMaskEdit3.Text='')or
   (cxMaskEdit4.Text='')or (cxMaskEdit5.Text='')or (cxMaskEdit6.Text='')or
   (cxMaskEdit7.Text='')or (cxMaskEdit8.Text='')or (cxMaskEdit9.Text='')or
   (cxMaskEdit10.Text='')or (cxMaskEdit11.Text='')or (cxMaskEdit12.Text='')or
   (cxMaskEdit13.Text='')or (cxMaskEdit14.Text='')or (cxMaskEdit15.Text='')or
   (cxMaskEdit16.Text='')or (cxMaskEdit17.Text='')or (cxMaskEdit18.Text='')or
   (cxMaskEdit19.Text='')or (cxMaskEdit20.Text='')or (cxTextEdit1.Text='')or
   (cxLookupComboBox1.Text='') then
   ShowMessage('FALTAN DATOS POR LLENAR')
else
   begin
      with DM.UniSQL1 do
    begin
     try
      begin
        SQL.Clear;
        SQL.Add('insert into `asistencia`(FECHA,UNIDAD,"LUGAR DE MONITOREO",KT,KM,KD,"ESCRITO",ADMSIST,OCIC,DIRECCION,"CADETES ISMI","SERV DE GUARDIA","COMISION SERV","ESTUDIO AUTORIZADO","PREP MILITAR","CHEQUEO MEDICO",VAC,"L/M"');
        SQL.Add(',LSS,RS,ENFERMO,"PROB PERS O FAMILIAR",FRANCO,OTROS,USUARIO)');
        SQL.Add('VALUES (:FECHA,:UNIDAD,:LUGARDEMONITOREO,:KT,:KM,:KD,:ESCRITO,:ADM,:OCIC,:DIRECCION,:CADETESISMI,:SERVGUARDIA,:COMISIONSERV,:ESTUDIOAUTORIZADO,:PREPMILITAR');
        SQL.Add(',:CHEQUEOMEDICO,:VAC,:LM,:LSS,:RS,:ENFERMO,:PROB,:FRANCO,:OTROS,:USUARIO);');
        ParamByName('unidad').Asstring:=fmain.unidad;
        ParamByName('fecha').AsDateTime:=cxDateEdit1.Date;
        ParamByName('usuario').Asstring:=fmain.usuario;
        ParamByName('LUGARDEMONITOREO').AsString:=cxLookupComboBox1.Text;
        ParamByName('KT').AsInteger:=StrToInt(cxMaskEdit1.Text);
        ParamByName('KM').AsInteger:=StrToInt(cxMaskEdit2.Text);
        ParamByName('KD').AsInteger:=StrToInt(cxMaskEdit3.Text);
        ParamByName('ESCRITO').AsInteger:=StrToInt(cxMaskEdit4.Text);
        ParamByName('ADM').AsInteger:=StrToInt(cxMaskEdit5.Text);
        ParamByName('OCIC').AsInteger:=StrToInt(cxMaskEdit6.Text);
        ParamByName('DIRECCION').AsInteger:=StrToInt(cxMaskEdit7.Text);
        ParamByName('CADETESISMI').AsInteger:=StrToInt(cxMaskEdit8.Text);
        ParamByName('SERVGUARDIA').AsInteger:=StrToInt(cxMaskEdit9.Text);
        ParamByName('COMISIONSERV').AsInteger:=StrToInt(cxMaskEdit10.Text);
        ParamByName('ESTUDIOAUTORIZADO').AsInteger:=StrToInt(cxMaskEdit11.Text);
        ParamByName('CHEQUEOMEDICO').AsInteger:=StrToInt(cxMaskEdit12.Text);
        ParamByName('PREPMILITAR').AsInteger:=StrToInt(cxMaskEdit13.Text);
        ParamByName('VAC').AsInteger:=StrToInt(cxMaskEdit14.Text);
        ParamByName('LM').AsInteger:=StrToInt(cxMaskEdit15.Text);
        ParamByName('LSS').AsInteger:=StrToInt(cxMaskEdit16.Text);
        ParamByName('RS').AsInteger:=StrToInt(cxMaskEdit17.Text);
        ParamByName('ENFERMO').AsInteger:=StrToInt(cxMaskEdit18.Text);
        ParamByName('PROB').AsInteger:=StrToInt(cxMaskEdit19.Text);
        ParamByName('FRANCO').AsInteger:=StrToInt(cxMaskEdit20.Text);
        ParamByName('OTROS').Asstring:=cxTextEdit1.Text;
        Execute;
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
        cxMaskEdit17.Clear;
        cxMaskEdit18.Clear;
        cxMaskEdit19.Clear;
        cxMaskEdit20.Clear;
        cxTextEdit1.Clear;
        cxDateEdit1.Clear;
        cxLookupComboBox1.Clear;
        cxGrid1DBTableView1.DataController.DataSource.DataSet.Refresh;
      end;
     except
          ShowMessage('NO SE PUDIERON AGREGAR LOS DATOS');
     end;
    end;
   end;
end;

procedure TFasistencia.button2Click(Sender: TObject);
begin
Close;
end;

procedure TFasistencia.cxButton1Click(Sender: TObject);
begin
  ExportGridToExcel('ASISTENCIA EXPORTADA.xls',cxGrid1,True,False);
end;

procedure TFasistencia.FormShow(Sender: TObject);
begin
  if (Fmain.cargo='admin central')  then
    begin
     cxGrid1DBTableView1.DataController.DataSource:=DM.DSasist;
     DM.Tasist.Open;
    end;
  if Fmain.cargo='usuario' then
    begin
     cxGrid1DBTableView1.DataController.DataSource:=DM.DSQBYUasist;
     DM.QBYUASIST.ParamByName('Punidad').AsString:=fmain.unidad;
     DM.QBYUASIST.Execute;
     cxGrid1DBTableView1.OptionsData.Editing:=False;
     cxGrid1DBTableView1.NavigatorButtons.Insert.Visible:=False;
     cxGrid1DBTableView1.NavigatorButtons.Post.Visible:=False;
     cxGrid1DBTableView1.NavigatorButtons.Append.Visible:=False;
     cxGrid1DBTableView1.NavigatorButtons.Delete.Visible:=False;
     cxGrid1DBTableView1.NavigatorButtons.Edit.Visible:=False;
     cxGrid1DBTableView1.OptionsSelection.CellSelect:=false;
     cxButton1.Hide;
    end;
  if (Fmain.cargo='admin') then
    begin
       cxGrid1DBTableView1.DataController.DataSource:=DM.DSQBYUasist;
        DM.QBYUASIST.ParamByName('Punidad').AsString:=fmain.unidad;
        DM.QBYUASIST.Execute;
        cxButton1.Hide;
    end;

    cxGrid1DBTableView1.DataController.DataSource.DataSet.Active:=True;
    cxLookupComboBox1.Properties.ListSource.DataSet.Active:=True;
    cxGrid1DBTableView1.NavigatorButtons.Append.Visible:=False;
    cxGrid1DBTableView1.NavigatorButtons.Insert.Visible:=False;
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
    cxMaskEdit17.Clear;
    cxMaskEdit18.Clear;
    cxMaskEdit19.Clear;
    cxMaskEdit20.Clear;
    cxTextEdit1.Clear;
    cxDateEdit1.Clear;
    cxLookupComboBox1.Clear;
end;

end.



