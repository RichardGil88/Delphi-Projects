unit Unit17;

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
  dxSkinXmas2008Blue, cxGroupBox, cxLabel, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, DB,
  cxDBData, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, Menus, StdCtrls, cxButtons,cxGridExportLink;

type
  TFavanzadas = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    cxGroupBox3: TcxGroupBox;
    cxLookupComboBox1: TcxLookupComboBox;
    cxLookupComboBox2: TcxLookupComboBox;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxTextEdit1: TcxTextEdit;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1unidad: TcxGridDBColumn;
    cxGridDBTableView1idavanz: TcxGridDBColumn;
    cxGridDBTableView1FECHA: TcxGridDBColumn;
    cxGridDBTableView1ChequeosKT: TcxGridDBColumn;
    cxGridDBTableView1Altas: TcxGridDBColumn;
    cxGridDBTableView1Bajas: TcxGridDBColumn;
    cxGridDBTableView1Llamasentradas: TcxGridDBColumn;
    cxGridDBTableView1Coninters: TcxGridDBColumn;
    cxGridDBTableView1Sininters: TcxGridDBColumn;
    cxGridDBTableView1PendientesdeClasificar: TcxGridDBColumn;
    cxGridDBTableView1VersionesKT: TcxGridDBColumn;
    cxGridDBTableView1TranscripcionesKM: TcxGridDBColumn;
    cxGridDBTableView1ChequeosKD: TcxGridDBColumn;
    cxGridDBTableView1AltasKD: TcxGridDBColumn;
    cxGridDBTableView1BajasKD: TcxGridDBColumn;
    cxGridDBTableView1Cuentas: TcxGridDBColumn;
    cxGridDBTableView1Frases: TcxGridDBColumn;
    cxGridDBTableView1Fax: TcxGridDBColumn;
    cxGridDBTableView1Faxentradas: TcxGridDBColumn;
    cxGridDBTableView1Faxvisualizados: TcxGridDBColumn;
    cxGridDBTableView1Impresos: TcxGridDBColumn;
    cxGridDBTableView1Opinionestramitadas: TcxGridDBColumn;
    cxGridDBTableView1CItramitadasSIAVI: TcxGridDBColumn;
    cxGridDBTableView1Verificaciones: TcxGridDBColumn;
    cxGridDBTableView1Rechazos: TcxGridDBColumn;
    cxGridDBTableView1MOTIVO: TcxGridDBColumn;
    cxGridDBTableView1usuario: TcxGridDBColumn;
    cxGridDBTableView1IncidenciaTO: TcxGridDBColumn;
    cxGrid1DBTableView1unidad: TcxGridDBColumn;
    cxGrid1DBTableView1idavanz: TcxGridDBColumn;
    cxGrid1DBTableView1fecha: TcxGridDBColumn;
    cxGrid1DBTableView1OOktasist: TcxGridDBColumn;
    cxGrid1DBTableView1llamsproc: TcxGridDBColumn;
    cxGrid1DBTableView1Procesadasporsecciones: TcxGridDBColumn;
    cxGrid1DBTableView1PdteporprocesarOOp: TcxGridDBColumn;
    cxGrid1DBTableView1usuario: TcxGridDBColumn;
    cxGrid1DBTableView1llamsborradassinproc: TcxGridDBColumn;
    cxButton1: TcxButton;
    procedure FormShow(Sender: TObject);
    procedure cxLookupComboBox1Click(Sender: TObject);
    procedure cxLookupComboBox2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Favanzadas: TFavanzadas;
  idava:Integer;
implementation
uses Unit2,Unit1;
{$R *.dfm}

procedure TFavanzadas.cxButton1Click(Sender: TObject);
begin
ExportGridToExcel('Explotación diaria OOP Avanzadas.xls',cxGrid1,True,False);
end;

procedure TFavanzadas.cxLookupComboBox1Click(Sender: TObject);
begin
 with DM do
  begin
   if Fmain.cargo='admin central' then
      begin
       DM.Qava1.ParamByName('Punidad').AsString:=cxLookupComboBox1.Text;
       DM.Qava1.Execute;
      end;
  end;
end;

procedure TFavanzadas.cxLookupComboBox2Click(Sender: TObject);
var unidad:string;
begin
   unidad:=cxTextEdit1.Text;
   DM.Qava2.ParamByName('Pava').AsString:=cxLookupComboBox2.Text;
   if (Fmain.cargo='admin')or (Fmain.cargo='usuario') then
   begin
    DM.Qava2.ParamByName('Punidad').AsString:=unidad;
   end
   else if Fmain.cargo='admin central' then
   begin
    DM.Qava2.ParamByName('Punidad').AsString:=cxLookupComboBox1.Text;
   end;


   DM.Qava2.Execute;
   idava:=DM.Qava2.FieldValues['idavanz'];

   DM.Qavaseg.ParamByName('Pid').AsInteger:=IDava;

   if (Fmain.cargo='admin')or (Fmain.cargo='usuario') then
   begin
    DM.Qavaseg.ParamByName('Punidad').AsString:=unidad;
   end
   else
   if Fmain.cargo='admin central' then
   begin
    DM.Qavaseg.ParamByName('Punidad').AsString:=cxLookupComboBox1.Text;
   end;
   DM.Qavaseg.Execute;

   DM.Qavaexplo.ParamByName('Pid').AsInteger:=IDava;
   if (Fmain.cargo='admin')or (Fmain.cargo='usuario') then
   begin
    DM.Qavaexplo.ParamByName('Punidad').AsString:=unidad;
   end
   else
   if Fmain.cargo='admin central' then
   begin
    DM.Qavaexplo.ParamByName('Punidad').AsString:=cxLookupComboBox1.Text;
   end;

   DM.Qavaexplo.Execute;
end;

procedure TFavanzadas.FormShow(Sender: TObject);
begin
  cxGrid1DBTableView1.NavigatorButtons.Append.Visible:=False;
  cxLookupComboBox1.Clear;
  cxLookupComboBox2.Clear;
  if (Fmain.cargo='admin')or (Fmain.cargo='usuario') then
  begin
    cxLookupComboBox1.Hide;
    cxTextEdit1.Show;
    cxTextEdit1.BringToFront;
    cxTextEdit1.Text:=Fmain.unidad;
    cxTextEdit1.Enabled:=False;
    DM.Qava1.ParamByName('Punidad').AsString:=cxTextEdit1.Text;
    DM.Qava1.Execute;
  end;

  if Fmain.cargo='admin central' then
  begin
   cxButton1.Visible:=False;
   cxTextEdit1.Hide;
   cxLookupComboBox1.Show;
   cxLookupComboBox1.BringToFront;
  end;

  if Fmain.cargo='usuario' then
  begin
   cxGrid1DBTableView1.OptionsData.Editing:=False;
   cxGrid1DBTableView1.NavigatorButtons.Insert.Visible:=True;
   cxGrid1DBTableView1.NavigatorButtons.Post.Visible:=False;
   cxGrid1DBTableView1.NavigatorButtons.Append.Visible:=True;
   cxGrid1DBTableView1.NavigatorButtons.Delete.Visible:=False;
   cxGrid1DBTableView1.NavigatorButtons.Edit.Visible:=False;
   cxGrid1DBTableView1.OptionsSelection.CellSelect:=false;
   cxGridDBTableView1.OptionsData.Editing:=False;
   cxGridDBTableView1.NavigatorButtons.Insert.Visible:=True;
   cxGridDBTableView1.NavigatorButtons.Post.Visible:=False;
   cxGridDBTableView1.NavigatorButtons.Append.Visible:=True;
   cxGridDBTableView1.NavigatorButtons.Delete.Visible:=False;
   cxGridDBTableView1.NavigatorButtons.Edit.Visible:=False;
   cxGridDBTableView1.OptionsSelection.CellSelect:=false;
   cxLookupComboBox1.Enabled:=False;
  end;
  cxLookupComboBox1.Properties.DataController.DataSource.DataSet.Active:=True;
  cxLookupComboBox2.Properties.DataController.DataSource.DataSet.Active:=True;
end;

end.
