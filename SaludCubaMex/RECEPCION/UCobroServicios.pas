unit UCobroServicios;

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
  cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxGroupBox, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  dxSkinTheBezier, cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TFCobroServicios = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1NOMBRE: TcxGridDBColumn;
    cxGrid1DBTableView1PRECIO_VENTA_POR_UNIDAD: TcxGridDBColumn;
    cxGrid1DBTableView1CANTIDAD_VENDIDO: TcxGridDBColumn;
    cxGrid1DBTableView1PRECIO_TOTAL: TcxGridDBColumn;
    cxGrid1DBTableView1FECHA_DE_VENTA: TcxGridDBColumn;
    cxGrid1DBTableView1VENDEDOR: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1NOMBRE_PACIENTE: TcxGridDBColumn;
    cxGrid1DBTableView1PRIMER_APELLIDO: TcxGridDBColumn;
    cxGrid1DBTableView1SEGUNDO_APELLIDO: TcxGridDBColumn;
    cxButton1: TcxButton;
    procedure FormActivate(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCobroServicios: TFCobroServicios;

implementation

{$R *.dfm}
 USES UDMCitas;

procedure TFCobroServicios.cxButton1Click(Sender: TObject);
begin
   try

    FDMCitas.QVentas.ParamByName('PFECHA').AsDate:=Now;
    FDMCitas.QVentas.Execute;

    cxGrid1DBTableView1.DataController.DataSource.DataSet.Active:=True;
    cxGrid1DBTableView1.DataController.DataSource.DataSet.Refresh;

  except on E: Exception do
  end;
end;

procedure TFCobroServicios.FormActivate(Sender: TObject);
begin
  try

    FDMCitas.QVentas.ParamByName('PFECHA').AsDate:=Now;
    FDMCitas.QVentas.Execute;

    cxGrid1DBTableView1.DataController.DataSource.DataSet.Active:=True;
    cxGrid1DBTableView1.DataController.DataSource.DataSet.Refresh;

  except on E: Exception do
  end;


end;

procedure TFCobroServicios.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  try
     cxGrid1DBTableView1.DataController.DataSource.DataSet.Active:=False;
  except on E: Exception do
  end;


end;

end.
