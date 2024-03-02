unit UEstadisticas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxContainer,
  Vcl.StdCtrls, cxRadioGroup, cxGroupBox, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  Vcl.Menus, cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxLabel, Vcl.ComCtrls, dxCore,
  cxDateUtils, cxCalendar;

type
  TFEstadisticas = class(TForm)
    cxGroupBox1: TcxGroupBox;
    MostrarTodos: TcxButton;
    cxLabel3: TcxLabel;
    cxDateEdit2: TcxDateEdit;
    cxDateEdit3: TcxDateEdit;
    cxLabel6: TcxLabel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1CODIGO_PRODUCTO: TcxGridDBColumn;
    cxGrid1DBTableView1NOMBRE: TcxGridDBColumn;
    cxGrid1DBTableView1TIPO: TcxGridDBColumn;
    cxGrid1DBTableView1ENTRADA: TcxGridDBColumn;
    cxGrid1DBTableView1SALIDA: TcxGridDBColumn;
    cxGrid1DBTableView1FECHA_DE_ENTRADA: TcxGridDBColumn;
    cxGrid1DBTableView1FECHA_DE_SALIDA: TcxGridDBColumn;
    cxGrid1DBTableView1PRECIO_COSTO_POR_UNIDAD: TcxGridDBColumn;
    cxGrid1DBTableView1PRECIO_VENTA_POR_UNIDAD: TcxGridDBColumn;
    cxGrid1DBTableView1PROVEEDOR: TcxGridDBColumn;
    cxGrid1DBTableView1PRESENTACION: TcxGridDBColumn;
    cxGrid1DBTableView1LABORATORIO: TcxGridDBColumn;
    cxGrid1DBTableView1LOTE: TcxGridDBColumn;
    cxGrid1DBTableView1FECHA_DE_VENCIMIENTO: TcxGridDBColumn;
    cxGrid1DBTableView1OPERACION: TcxGridDBColumn;
    cxGrid1DBTableView1FECHA_DE_LA_OPERACION: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    procedure cxRadioButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxRadioButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEstadisticas: TFEstadisticas;

implementation
 uses UDM1,UDMCodificadores;
{$R *.dfm}

// RADIO SERVICIO
procedure TFEstadisticas.cxRadioButton1Click(Sender: TObject);
begin
  cxLabel1.Caption:='SELECCIONE UN SERVICIO';

  cxLookupComboBox1.Properties.ListSource:=FDMCodificadores.DSServicios;
  cxLookupComboBox1.Properties.ListFieldNames:='NOMBRE';
  cxLookupComboBox1.Properties.KeyFieldNames:='CODIGO';

  cxLookupComboBox1.Properties.DataController.DataSet.Active:=True;
  cxLookupComboBox1.Clear;

 //if cxRadioButton1.Checked = True then ShowMessage('SERVICIO');
  //if cxRadioButton2.Checked = True then ShowMessage('INSUMO');
end;


// RADIO INSUMO
procedure TFEstadisticas.cxRadioButton3Click(Sender: TObject);
begin
   cxLabel1.Caption:='SELECCIONE UN INSUMO';

  cxLookupComboBox1.Properties.ListSource:=FDMCodificadores.DSInsumos;
  cxLookupComboBox1.Properties.ListFieldNames:='NOMBRE';
  cxLookupComboBox1.Properties.KeyFieldNames:='CODIGO';

  cxLookupComboBox1.Properties.DataController.DataSet.Active:=True;
  cxLookupComboBox1.Clear;
   //if cxRadioButton1.Checked = True then ShowMessage('SERVICIO');
   //if cxRadioButton2.Checked = True then ShowMessage('INSUMO');
end;

procedure TFEstadisticas.FormShow(Sender: TObject);
begin
  cxRadioButton1.Checked := True;
end;

end.

