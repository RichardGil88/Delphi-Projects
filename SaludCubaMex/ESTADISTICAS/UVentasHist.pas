unit UVentasHist;

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
  TFVentasHist = class(TForm)
    cxGroupBox2: TcxGroupBox;
    cxDateEdit2: TcxDateEdit;
    cxDateEdit3: TcxDateEdit;
    cxButton3: TcxButton;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1CODIGO_PRODUCTO: TcxGridDBColumn;
    cxGrid1DBTableView1NOMBRE: TcxGridDBColumn;
    cxGrid1DBTableView1TIPO: TcxGridDBColumn;
    cxGrid1DBTableView1PROVEEDOR: TcxGridDBColumn;
    cxGrid1DBTableView1PRESENTACION: TcxGridDBColumn;
    cxGrid1DBTableView1LABORATORIO: TcxGridDBColumn;
    cxGrid1DBTableView1LOTE: TcxGridDBColumn;
    cxGrid1DBTableView1FECHA_DE_VENCIMIENTO: TcxGridDBColumn;
    cxGrid1DBTableView1PRECIO_COSTO_POR_UNIDAD: TcxGridDBColumn;
    cxGrid1DBTableView1PRECIO_VENTA_POR_UNIDAD: TcxGridDBColumn;
    cxGrid1DBTableView1CANTIDAD_VENDIDO: TcxGridDBColumn;
    cxGrid1DBTableView1PRECIO_TOTAL: TcxGridDBColumn;
    cxGrid1DBTableView1FECHA_DE_VENTA: TcxGridDBColumn;
    cxGrid1DBTableView1HORA_DE_VENTA: TcxGridDBColumn;
    cxGrid1DBTableView1VENDEDOR: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
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
  FVentasHist: TFVentasHist;

implementation

{$R *.dfm}
USES UDMEstadisticas;
procedure TFVentasHist.cxButton3Click(Sender: TObject);
begin
    if (cxDateEdit3.Text <> '') and (cxDateEdit2.Text <> '') then
    begin
      try
        FDMEstadisticas.QVentasHist.ParamByName('FECHADESDE').AsDate:=cxDateEdit2.Date;
        FDMEstadisticas.QVentasHist.ParamByName('FECHAHASTA').AsDate:=cxDateEdit3.Date;
        FDMEstadisticas.QVentasHist.Execute;

        cxGrid1DBTableView1.DataController.DataSource.DataSet.Active:=True;
        cxGrid1DBTableView1.DataController.DataSource.DataSet.Refresh;

      except on E: Exception do
      end;
    end;
end;

procedure TFVentasHist.FormActivate(Sender: TObject);
begin
    cxDateEdit3.Date:=Now;
end;

procedure TFVentasHist.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   cxGrid1DBTableView1.DataController.DataSource.DataSet.Active:=True;
   cxDateEdit3.Clear;
   cxDateEdit2.Clear;
end;

end.
