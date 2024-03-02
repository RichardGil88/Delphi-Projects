unit UInsumosHistoricos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinXmas2008Blue, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, Vcl.ComCtrls, dxCore,
  cxDateUtils, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxLabel, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxGroupBox;

type
  TFInsumosHistoricos = class(TForm)
    cxGroupBox2: TcxGroupBox;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxDateEdit2: TcxDateEdit;
    cxDateEdit3: TcxDateEdit;
    cxButton3: TcxButton;
    cxGrid1DBTableView1CODIGO_PRODUCTO: TcxGridDBColumn;
    cxGrid1DBTableView1CODIGO_PACIENTE: TcxGridDBColumn;
    cxGrid1DBTableView1NOMBRE: TcxGridDBColumn;
    cxGrid1DBTableView1TIPO: TcxGridDBColumn;
    cxGrid1DBTableView1PROVEEDOR: TcxGridDBColumn;
    cxGrid1DBTableView1PRESENTACION: TcxGridDBColumn;
    cxGrid1DBTableView1LABORATORIO: TcxGridDBColumn;
    cxGrid1DBTableView1LOTE: TcxGridDBColumn;
    cxGrid1DBTableView1FECHA_DE_VENCIMIENTO: TcxGridDBColumn;
    cxGrid1DBTableView1ENTRADA: TcxGridDBColumn;
    cxGrid1DBTableView1FECHA_DE_ENTRADA: TcxGridDBColumn;
    cxGrid1DBTableView1SALIDA: TcxGridDBColumn;
    cxGrid1DBTableView1FECHA_DE_SALIDA: TcxGridDBColumn;
    cxGrid1DBTableView1PRECIO_COSTO_POR_UNIDAD: TcxGridDBColumn;
    cxGrid1DBTableView1PRECIO_VENTA_POR_UNIDAD: TcxGridDBColumn;
    cxGrid1DBTableView1OPERACION: TcxGridDBColumn;
    cxGrid1DBTableView1FECHA_DE_LA_OPERACION: TcxGridDBColumn;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    procedure cxButton3Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FInsumosHistoricos: TFInsumosHistoricos;

implementation

{$R *.dfm}
 USES UDMPacientes;

procedure TFInsumosHistoricos.cxButton3Click(Sender: TObject);
begin
  if (cxDateEdit3.Text <> '') and (cxDateEdit2.Text <> '') then
  begin
    try
      FDMPacientes.QInsumosHistoricos.ParamByName('FECHADESDE').AsDate:=cxDateEdit2.Date;
      FDMPacientes.QInsumosHistoricos.ParamByName('FECHAHASTA').AsDate:=cxDateEdit3.Date;
      FDMPacientes.QInsumosHistoricos.Execute;

      cxGrid1DBTableView1.DataController.DataSource.DataSet.Active:=True;
      cxGrid1DBTableView1.DataController.DataSource.DataSet.Refresh;

    except on E: Exception do
    end;
  end;

end;

procedure TFInsumosHistoricos.FormActivate(Sender: TObject);
begin
   cxDateEdit3.Date:=Now;
end;

procedure TFInsumosHistoricos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   cxGrid1DBTableView1.DataController.DataSource.DataSet.Active:=True;
   cxDateEdit3.Clear;
   cxDateEdit2.Clear;
end;

end.
