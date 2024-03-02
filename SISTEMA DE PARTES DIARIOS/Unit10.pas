unit Unit10;

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
  cxFilter, cxData, cxDataStorage, DB, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, StdCtrls, cxButtons, cxGroupBox, cxLabel,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxMaskEdit,
  cxCalendar, cxTextEdit, cxRadioGroup, AdvMenus, cxGridExportLink, ExtCtrls,
  AdvCircularProgress;

type
  TFkmnopermanentes = class(TForm)
    cxGroupBox1: TcxGroupBox;
    button1: TcxButton;
    button2: TcxButton;
    cxGroupBox2: TcxGroupBox;
    cxTextEdit1: TcxTextEdit;
    cxDateEdit1: TcxDateEdit;
    cxDateEdit2: TcxDateEdit;
    cxLookupComboBox2: TcxLookupComboBox;
    cxLookupComboBox3: TcxLookupComboBox;
    cxLookupComboBox4: TcxLookupComboBox;
    cxTextEdit2: TcxTextEdit;
    cxTextEdit3: TcxTextEdit;
    cxLookupComboBox5: TcxLookupComboBox;
    cxLookupComboBox6: TcxLookupComboBox;
    cxLookupComboBox7: TcxLookupComboBox;
    cxLookupComboBox8: TcxLookupComboBox;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel12: TcxLabel;
    cxLabel14: TcxLabel;
    cxLabel15: TcxLabel;
    cxLookupComboBox1: TcxLookupComboBox;
    Estado: TcxLabel;
    AdvPopupMenu1: TAdvPopupMenu;
    DARBAJAALKM1: TMenuItem;
    CAMBIARESTADO1: TMenuItem;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxButton1: TcxButton;
    AdvCircularProgress1: TAdvCircularProgress;
    cxGrid1DBTableView1idkmnoperm: TcxGridDBColumn;
    cxGrid1DBTableView1unidad: TcxGridDBColumn;
    cxGrid1DBTableView1expediente: TcxGridDBColumn;
    cxGrid1DBTableView1entrada: TcxGridDBColumn;
    cxGrid1DBTableView1salida: TcxGridDBColumn;
    cxGrid1DBTableView1estado: TcxGridDBColumn;
    cxGrid1DBTableView1niveldeaprobacion: TcxGridDBColumn;
    cxGrid1DBTableView1tipodekm: TcxGridDBColumn;
    cxGrid1DBTableView1lugarmonitoreo: TcxGridDBColumn;
    cxGrid1DBTableView1monitoreadopor: TcxGridDBColumn;
    cxGrid1DBTableView1transcritopor: TcxGridDBColumn;
    cxGrid1DBTableView1idioma: TcxGridDBColumn;
    cxGrid1DBTableView1fase: TcxGridDBColumn;
    cxGrid1DBTableView1dpto: TcxGridDBColumn;
    cxGrid1DBTableView1formaprocesamiento: TcxGridDBColumn;
    cxGrid1DBTableView1cumpfinalidadop: TcxGridDBColumn;
    cxGrid1DBTableView1motivonocumplim: TcxGridDBColumn;
    cxGrid1DBTableView1infresultado: TcxGridDBColumn;
    cxGrid1DBTableView1trancripsia: TcxGridDBColumn;
    cxGrid1DBTableView1ppalestematicasreferencia: TcxGridDBColumn;
    cxGrid1DBTableView1usuario: TcxGridDBColumn;
    cxGrid1DBTableView1cantidaddecuartillas: TcxGridDBColumn;
    procedure button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure button1Click(Sender: TObject);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure DARBAJAALKM1Click(Sender: TObject);
    procedure CAMBIARESTADO1Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
  var idkm:Integer;

    { Public declarations }
  end;
  var
  Fkmnopermanentes: TFkmnopermanentes;

implementation
uses Unit2,Unit1, Unit19, Unit29;
{$R *.dfm}

procedure TFkmnopermanentes.button1Click(Sender: TObject);
begin
if (cxDateEdit1.Text='')or
   (cxTextEdit1.Text='')or (cxTextEdit2.Text='')or
   (cxLookupComboBox2.Text='') or (cxLookupComboBox3.Text='')or
   (cxLookupComboBox4.Text='')or (cxLookupComboBox5.Text='') or (cxLookupComboBox6.Text='')or
   (cxLookupComboBox7.Text='')or (cxLookupComboBox8.Text='') then
    ShowMessage('LE FALTAN DATOS POR LLENAR')
else
 begin
    with DM.UniSQL1 do
  begin
   try
     begin
      SQL.Clear;
      SQL.Add('insert into `km no permanentes 1` (UNIDAD,EXPEDIENTE,ENTRADA,SALIDA,ESTADO,NIVELDEAPROBACION,TIPODEKM,"LUGAR  MONITOREO",MONITOREADOPOR,TRANSCRITOPOR,IDIOMA,FASE,DPTO,"FORMA PROCESAMIENTO"');
      SQL.Add(',USUARIO)');
      SQL.Add('values (:UNIDAD,:EXPEDIENTE,:ENTRADA,:SALIDA,:ESTADO,:NIVELDEAPROBACION,:TIPODEKM,:LUGARMONITOREO,:MONITOREADOPOR,:TRANSCRITOPOR,:IDIOMA,:FASE,:DPTO,:FORMAPROCESAMIENTO');
      SQL.Add(',:USUARIO)');
      ParamByName('UNIDAD').AsString:=Fmain.unidad;
      ParamByName('EXPEDIENTE').AsString:=cxTextEdit1.Text;
      ParamByName('ENTRADA').AsDateTime:=cxDateEdit1.Date;
      ParamByName('SALIDA').AsDateTime:=cxDateEdit2.Date;
      ParamByName('ESTADO').AsString:=cxLookupComboBox1.Text;
      ParamByName('NIVELDEAPROBACION').AsString:=cxLookupComboBox2.Text;
      ParamByName('TIPODEKM').AsString:=cxLookupComboBox3.Text;
      ParamByName('LUGARMONITOREO').AsString:=cxLookupComboBox4.Text;
      ParamByName('MONITOREADOPOR').AsString:=cxTextEdit2.Text;
      ParamByName('TRANSCRITOPOR').AsString:=cxTextEdit3.Text;
      ParamByName('IDIOMA').AsString:=cxLookupComboBox5.Text;
      ParamByName('FASE').AsString:=cxLookupComboBox6.Text;
      ParamByName('DPTO').AsString:=cxLookupComboBox7.Text;
      ParamByName('FORMAPROCESAMIENTO').AsString:=cxLookupComboBox8.Text;
      ParamByName('USUARIO').AsString:=Fmain.usuario;
      Execute;
      cxGrid1DBTableView1.DataController.DataSource.DataSet.Refresh;
      ShowMessage('DATOS AGREGADOS CON EXITO');
     end;
   except
        ShowMessage('NO SE PUDIERON AGREGAR LOS DATOS');
   end;
  end;
 end;

end;

procedure TFkmnopermanentes.button2Click(Sender: TObject);
begin
Close;
end;

procedure TFkmnopermanentes.CAMBIARESTADO1Click(Sender: TObject);
begin
FCAMBIARESTADOKM.ShowModal;
end;

procedure TFkmnopermanentes.cxButton1Click(Sender: TObject);
begin
ExportGridToExcel('KM NO PERMANENTES EXPORTADO.xls',cxGrid1,True,False);
end;

procedure TFkmnopermanentes.cxGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
   idkm:= cxGrid1DBTableView1.DataController.DataSet.FieldByName('idkmnoperm').AsInteger;
end;

procedure TFkmnopermanentes.DARBAJAALKM1Click(Sender: TObject);
begin
FbajaKM.ShowModal;
end;

procedure TFkmnopermanentes.FormShow(Sender: TObject);
begin
  if (Fmain.cargo='admin central')  then
    begin
      cxGrid1DBTableView1.DataController.DataSource:=DM.DSkmnoperm;
      dm.Tkmnoperm.Open;
      cxButton1.Visible:=True;
    end;
  if Fmain.cargo='usuario' then
    begin
     cxGrid1DBTableView1.DataController.DataSource:=DM.DSTkmnoperm;
     DM.QBYUkmnoperm.ParamByName('Punidad').AsString:=fmain.unidad;
     DM.QBYUkmnoperm.Execute;
     cxGrid1DBTableView1.OptionsData.Editing:=False;
     cxGrid1DBTableView1.NavigatorButtons.Insert.Visible:=False;
     cxGrid1DBTableView1.NavigatorButtons.Post.Visible:=False;
     cxGrid1DBTableView1.NavigatorButtons.Append.Visible:=False;
     cxGrid1DBTableView1.NavigatorButtons.Delete.Visible:=False;
     cxGrid1DBTableView1.NavigatorButtons.Edit.Visible:=False;
     cxGrid1DBTableView1.OptionsSelection.CellSelect:=false;
     cxButton1.Visible:=False;
    end;
  if (Fmain.cargo='admin') then
    begin
     cxGrid1DBTableView1.DataController.DataSource:=DM.DSTkmnoperm;
     DM.QBYUkmnoperm.ParamByName('Punidad').AsString:=fmain.unidad;
     DM.QBYUkmnoperm.Execute;
     cxGrid1DBTableView1.OptionsData.Editing:=False;
     cxGrid1DBTableView1.NavigatorButtons.Insert.Visible:=False;
     cxGrid1DBTableView1.NavigatorButtons.Post.Visible:=False;
     cxGrid1DBTableView1.NavigatorButtons.Append.Visible:=False;
     cxGrid1DBTableView1.NavigatorButtons.Delete.Visible:=False;
     cxGrid1DBTableView1.NavigatorButtons.Edit.Visible:=False;
     cxGrid1DBTableView1.OptionsSelection.CellSelect:=false;
     cxButton1.Visible:=False;
    end;
    cxGrid1DBTableView1.DataController.DataSource.DataSet.Active:=True;

    cxGrid1DBTableView1.NavigatorButtons.Append.Visible:=False;
    cxGrid1DBTableView1.NavigatorButtons.Insert.Visible:=False;

    cxLookupComboBox1.Properties.ListSource.DataSet.Active:=True;
    cxLookupComboBox2.Properties.ListSource.DataSet.Active:=True;
    cxLookupComboBox3.Properties.ListSource.DataSet.Active:=True;
    cxLookupComboBox4.Properties.ListSource.DataSet.Active:=True;
    cxLookupComboBox5.Properties.ListSource.DataSet.Active:=True;
    cxLookupComboBox6.Properties.ListSource.DataSet.Active:=True;
    cxLookupComboBox7.Properties.ListSource.DataSet.Active:=True;
    cxLookupComboBox8.Properties.ListSource.DataSet.Active:=True;

    cxDateEdit1.Clear;
    cxDateEdit2.Clear;
    cxLookupComboBox1.Clear;
    cxLookupComboBox2.Clear;
    cxLookupComboBox3.Clear;
    cxLookupComboBox4.Clear;
    cxLookupComboBox5.Clear;
    cxLookupComboBox6.Clear;
    cxLookupComboBox7.Clear;
    cxLookupComboBox8.Clear;
    cxTextEdit1.Clear;
    cxTextEdit2.Clear;
    cxTextEdit3.Clear;
end;



end.
