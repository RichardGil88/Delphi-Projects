unit UEntradaSalidaInsumos;

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
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxGroupBox;

type
  TFEntradaSalidaInsumos = class(TForm)
    cxGroupBox2: TcxGroupBox;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxDateEdit2: TcxDateEdit;
    cxDateEdit3: TcxDateEdit;
    cxLabel3: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel12: TcxLabel;
    cxButton3: TcxButton;
    PopupMenu1: TPopupMenu;
    ELIMINARREGISTRO1: TMenuItem;
    cxGrid1DBTableView1CODIGO_MEDICAMENTO: TcxGridDBColumn;
    cxGrid1DBTableView1NOMBRE: TcxGridDBColumn;
    cxGrid1DBTableView1TIPO: TcxGridDBColumn;
    cxGrid1DBTableView1LOTE: TcxGridDBColumn;
    cxGrid1DBTableView1PRESENTACION: TcxGridDBColumn;
    cxGrid1DBTableView1LABORATORIO: TcxGridDBColumn;
    cxGrid1DBTableView1PROVEEDOR: TcxGridDBColumn;
    cxGrid1DBTableView1FECHA_DE_VENCIMIENTO: TcxGridDBColumn;
    cxGrid1DBTableView1PRECIO_COSTO_POR_UNIDAD: TcxGridDBColumn;
    cxGrid1DBTableView1PRECIO_VENTA_POR_UNIDAD: TcxGridDBColumn;
    cxGrid1DBTableView1ENTRADA: TcxGridDBColumn;
    cxGrid1DBTableView1FECHA_DE_ENTRADA: TcxGridDBColumn;
    cxGrid1DBTableView1SALIDA: TcxGridDBColumn;
    cxGrid1DBTableView1FECHA_DE_SALIDA: TcxGridDBColumn;
    cxGrid1DBTableView1VENDEDOR: TcxGridDBColumn;
    cxGrid1DBTableView1OPERACION: TcxGridDBColumn;
    cxGrid1DBTableView1FECHA_DE_LA_OPERACION: TcxGridDBColumn;
    cxButton1: TcxButton;
    procedure cxButton3Click(Sender: TObject);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure ELIMINARREGISTRO1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEntradaSalidaInsumos: TFEntradaSalidaInsumos;
  CODIGOE2:Integer;

implementation

{$R *.dfm}
USES UDMPacientes,ULogin,cxGridExportLink;

procedure TFEntradaSalidaInsumos.cxButton1Click(Sender: TObject);
begin
  try
     cxGrid1DBTableView1.DataController.SelectAll;
     ExportGridToXLSX(ExtractFilePath(Application.ExeName)+'ENTRADAS Y SALIDAS INSUMOS.xlsx',cxGrid1,TRUE,TRUE,TRUE,'xlsx');
     ShowMessage('TABLA EXPORTADA A: "'+ExtractFilePath(Application.ExeName)+'ENTRADAS Y SALIDAS INSUMOS.xlsx"');
  except on E: Exception do
  end;
end;

procedure TFEntradaSalidaInsumos.cxButton3Click(Sender: TObject);
begin
   try
     FDMPacientes.QInsumosFecha.ParamByName('FECHADESDE').AsDate:=cxDateEdit2.Date;
     FDMPacientes.QInsumosFecha.ParamByName('FECHAHASTA').AsDate:=cxDateEdit3.Date;
     FDMPacientes.QInsumosFecha.Execute;

    cxGrid1DBTableView1.DataController.DataSource.DataSet.Active:=True;
    cxGrid1DBTableView1.DataController.DataSource.DataSet.Refresh;

   except on E: Exception do
   end;
end;

procedure TFEntradaSalidaInsumos.cxGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
   CODIGOE2:= cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldValues['CODIGO'];
end;

procedure TFEntradaSalidaInsumos.ELIMINARREGISTRO1Click(Sender: TObject);
begin
   if (FLogin.CARGO = 'DIRECTOR MEDICO')  or (FLogin.CARGO = 'DIRECTOR ADMINISTRATIVO') then
  begin
     try
         FDMPacientes.QEliminarRegistroI.ParamByName('CODIGO').AsInteger:=CODIGOE2;
         FDMPacientes.QEliminarRegistroI.Execute;

         cxGrid1DBTableView1.DataController.DataSource.DataSet.Refresh;

         ShowMessage('REGISTRO ELIMINADO CON EXITO');
     except on E: Exception do
     end;
  end;

end;

procedure TFEntradaSalidaInsumos.FormActivate(Sender: TObject);
begin
  try

      // MOSTRANDO SOLO LOS ULTIMOS 6 MESES
      cxGrid1DBTableView1.DataController.DataSource.DataSet.Active:=True;

      cxDateEdit3.Date:=Now;
      cxDateEdit2.Date:=NOW-180;

  except on E: Exception do
  end;

end;

procedure TFEntradaSalidaInsumos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  try
      cxGrid1DBTableView1.DataController.DataSource.DataSet.Active:=False;

      cxDateEdit2.Clear;
      cxDateEdit3.Clear;
      cxDateEdit2.SetFocus;

  except on E: Exception do
  end;

end;

end.