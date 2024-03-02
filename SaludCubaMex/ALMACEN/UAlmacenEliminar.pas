unit UAlmacenEliminar;

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
  cxTextEdit, cxLabel;

type
  TFAlmacenEliminar = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1CODIGO_PRODUCTO: TcxGridDBColumn;
    cxGrid1DBTableView1TIPO: TcxGridDBColumn;
    cxGrid1DBTableView1NOMBRE: TcxGridDBColumn;
    cxGrid1DBTableView1EXISTENCIA: TcxGridDBColumn;
    cxGrid1DBTableView1FECHA_DE_VENCIMIENTO: TcxGridDBColumn;
    cxGrid1DBTableView1PRECIO_COSTO_POR_UNIDAD: TcxGridDBColumn;
    cxGrid1DBTableView1PRECIO_VENTA_POR_UNIDAD: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxGroupBox2: TcxGroupBox;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxTextEdit1: TcxTextEdit;
    cxTextEdit2: TcxTextEdit;
    cxTextEdit3: TcxTextEdit;
    cxTextEdit5: TcxTextEdit;
    cxTextEdit6: TcxTextEdit;
    cxTextEdit7: TcxTextEdit;
    cxLabel9: TcxLabel;
    cxTextEdit8: TcxTextEdit;
    cxLabel10: TcxLabel;
    cxTextEdit9: TcxTextEdit;
    cxButton1: TcxButton;
    cxTextEdit4: TcxTextEdit;
    cxLabel11: TcxLabel;
    cxTextEdit10: TcxTextEdit;
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAlmacenEliminar: TFAlmacenEliminar;

implementation
  USES UDMFarmacia;
{$R *.dfm}

procedure TFAlmacenEliminar.cxGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
//      CODIGO_ALMACEN:= cxGrid1DBTableView1.DataController.DataSet.FieldValues['CODIGO'];
//      CODIGO_PRODUC:=cxGrid1DBTableView1.DataController.DataSet.FieldValues['CODIGO_PRODUCTO'];
//      TIPO:=cxGrid1DBTableView1.DataController.DataSet.FieldValues['TIPO'];
     // ENTRADA:= cxGrid1DBTableView1.DataController.DataSet.FieldValues['ENTRADA'];
     // FECHA_DE_ENTRADA:= cxGrid1DBTableView1.DataController.DataSet.FieldValues['FECHA_DE_ENTRADA'];

      cxTextEdit1.Text:=cxGrid1DBTableView1.DataController.DataSet.FieldValues['NOMBRE'];
      cxTextEdit5.Text:=cxGrid1DBTableView1.DataController.DataSet.FieldValues['LOTE'];
      cxTextEdit2.Text:=cxGrid1DBTableView1.DataController.DataSet.FieldValues['PRESENTACION'];
      cxTextEdit3.Text:=cxGrid1DBTableView1.DataController.DataSet.FieldValues['LABORATORIO'];
      cxTextEdit6.Text:=cxGrid1DBTableView1.DataController.DataSet.FieldValues['PROVEEDOR'];
      cxTextEdit4.Text:=cxGrid1DBTableView1.DataController.DataSet.FieldValues['EXISTENCIA'];
      cxTextEdit7.Text:=cxGrid1DBTableView1.DataController.DataSet.FieldValues['FECHA_DE_VENCIMIENTO'];
      cxTextEdit8.Text:=cxGrid1DBTableView1.DataController.DataSet.FieldValues['PRECIO_COSTO_POR_UNIDAD'];
      cxTextEdit9.Text:=cxGrid1DBTableView1.DataController.DataSet.FieldValues['PRECIO_VENTA_POR_UNIDAD'];
      cxTextEdit10.Text:=cxGrid1DBTableView1.DataController.DataSet.FieldValues['TIPO'];
end;

procedure TFAlmacenEliminar.FormActivate(Sender: TObject);
begin
    cxGrid1DBTableView1.DataController.DataSource.DataSet.Open;
end;

end.
