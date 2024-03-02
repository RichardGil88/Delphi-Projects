unit Unit28;

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
  cxData, cxDataStorage, DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxLabel,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxGroupBox, cxGridExportLink, Menus, StdCtrls, cxButtons;

type
  TFkmpermanentes = class(TForm)
    cxGroupBox2: TcxGroupBox;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGroupBox3: TcxGroupBox;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGrid1DBTableView1unidad: TcxGridDBColumn;
    cxGrid1DBTableView1idkmperm: TcxGridDBColumn;
    cxGrid1DBTableView1expediente: TcxGridDBColumn;
    cxGrid1DBTableView1fechainicio: TcxGridDBColumn;
    cxGrid1DBTableView1fechafin: TcxGridDBColumn;
    cxGrid1DBTableView1nivelaprob: TcxGridDBColumn;
    cxGrid1DBTableView1estado: TcxGridDBColumn;
    cxGrid1DBTableView1lugaraplicado: TcxGridDBColumn;
    cxGrid1DBTableView1lugarmonitoreo: TcxGridDBColumn;
    cxGrid1DBTableView1monitoreadopor: TcxGridDBColumn;
    cxGrid1DBTableView1idioma: TcxGridDBColumn;
    cxGrid1DBTableView1fase: TcxGridDBColumn;
    cxGrid1DBTableView1dpto: TcxGridDBColumn;
    cxGrid1DBTableView1seccion: TcxGridDBColumn;
    cxGrid1DBTableView1cumpfinalidadop: TcxGridDBColumn;
    cxGrid1DBTableView1motivonocumplim: TcxGridDBColumn;
    cxGrid1DBTableView1referencia: TcxGridDBColumn;
    cxGrid1DBTableView1usuario: TcxGridDBColumn;
    cxGridDBTableView1unidad: TcxGridDBColumn;
    cxGridDBTableView1IDKMPERM: TcxGridDBColumn;
    cxGridDBTableView1FECHA: TcxGridDBColumn;
    cxGridDBTableView1TIEMPODEEXPLOTACIN: TcxGridDBColumn;
    cxGridDBTableView1TOTALFICHEROSPROCESADOS: TcxGridDBColumn;
    cxGridDBTableView1CUARTILLASTRANSCRITAS: TcxGridDBColumn;
    cxGridDBTableView1usuario: TcxGridDBColumn;
    cxGridDBTableView1INCIDENCIA: TcxGridDBColumn;
    cxButton1: TcxButton;
    procedure FormShow(Sender: TObject);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
  var varid:Integer;
    { Public declarations }
  end;

var
 IDKM:Integer;
  Fkmpermanentes: TFkmpermanentes;

implementation
USES Unit2,Unit1;
{$R *.dfm}

procedure TFkmpermanentes.cxButton1Click(Sender: TObject);
begin
ExportGridToExcel('KM PERMANENTES EXPORTADO.xls',cxGrid2,True,False);
end;

procedure TFkmpermanentes.cxGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  varid:=cxGrid1DBTableView1.DataController.DataSet.fieldbyname('idkmperm').AsInteger;
 //if (Fmain.cargo='admin central') then
 //begin
    dm.Qkmp2.ParamByName('Pid').AsInteger:=varid;
    DM.Qkmp2.Execute;
    cxGridDBTableView1.DataController.DataSource:=DM.DSQkmp2;
// end;


end;

procedure TFkmpermanentes.FormShow(Sender: TObject);
begin
 cxGrid1DBTableView1.NavigatorButtons.Append.Visible:=False;
   if (Fmain.cargo='usuario') then
    begin
       DM.Qkmp0.ParamByName('Punidad').AsString:=Fmain.unidad;
       DM.Qkmp0.Execute;
       cxGrid1DBTableView1.DataController.DataSource:=DM.dsQkmp0;
       cxGrid1DBTableView1.DataController.DataSource.DataSet.Active:=True;

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
    end;
    if (Fmain.cargo='admin') then
    begin
       DM.Qkmp0.ParamByName('Punidad').AsString:=Fmain.unidad;
       DM.Qkmp0.Execute;
       cxGrid1DBTableView1.DataController.DataSource:=DM.dsQkmp0;
       cxGrid1DBTableView1.DataController.DataSource.DataSet.Active:=True;

    end;

   if (Fmain.cargo='admin central') then
    begin
       DM.Qkmp1.Execute;
       cxGrid1DBTableView1.DataController.DataSource:=DM.dsQkmp1;
       cxGrid1DBTableView1.DataController.DataSource.DataSet.Active:=True;
    end;

end;

end.
