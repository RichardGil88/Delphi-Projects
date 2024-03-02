unit UEntradasSalidasFarmacia;

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
  TFEntradasSalidasFarmacia = class(TForm)
    cxGroupBox2: TcxGroupBox;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
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
    cxDateEdit2: TcxDateEdit;
    cxDateEdit3: TcxDateEdit;
    cxButton3: TcxButton;
    cxGrid1DBTableView1CODIGO_MEDICAMENTO: TcxGridDBColumn;
    cxGrid1DBTableView1VENDEDOR: TcxGridDBColumn;
    PopupMenu1: TPopupMenu;
    ELIMINARREGISTRO1: TMenuItem;
    cxButton1: TcxButton;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    procedure cxButton3Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ELIMINARREGISTRO1Click(Sender: TObject);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEntradasSalidasFarmacia: TFEntradasSalidasFarmacia;

   //CODIGO1:Integer;
  CODIGO_MEDICAMENTO,CODIGOE,CODIGOE2:Integer;
  NOMBRE:string;
  TIPO1:string;
  PROVEEDOR:string;
  PRESENTACION:string;
  LABORATORIO:string;
  LOTE:string;
  ENTRADA:Integer;
  FECHA_DE_ENTRADA:TDate;
  SALIDA:Integer;
  FECHA_DE_SALIDA:TDate;
  PRECIO_COSTO_POR_UNIDAD:Integer;
  PRECIO_VENTA_POR_UNIDAD :Integer;
  FECHA_DE_VENCIMIENTO:TDate;
  FECHA_DE_LA_OPERACION:TDate;
  OPERACION:string;

implementation
 uses UDMFarmacia,ULogin,cxGridExportLink;
{$R *.dfm}

// BUSCAR
procedure TFEntradasSalidasFarmacia.cxButton1Click(Sender: TObject);
begin
  try
     cxGrid1DBTableView1.DataController.SelectAll;
     ExportGridToXLSX(ExtractFilePath(Application.ExeName)+'ENTRADAS Y SALIDAS FARMACIA.xlsx',cxGrid1,TRUE,TRUE,TRUE,'xlsx');
     ShowMessage('TABLA EXPORTADA A: "'+ExtractFilePath(Application.ExeName)+'ENTRADAS Y SALIDAS FARMACIA.xlsx"');
  except on E: Exception do
    ShowMessage('NO SE PUDO EXPORTAR LA TABLA');
  end;

end;

procedure TFEntradasSalidasFarmacia.cxButton3Click(Sender: TObject);
begin
   try
     FDMFarmacia.Qfarmaciafecha.ParamByName('FECHADESDE').AsDate:=cxDateEdit2.Date;
     FDMFarmacia.Qfarmaciafecha.ParamByName('FECHAHASTA').AsDate:=cxDateEdit3.Date;
     FDMFarmacia.Qfarmaciafecha.Execute;

     cxGrid1DBTableView1.DataController.DataSource.DataSet.Active:=True;
     cxGrid1DBTableView1.DataController.DataSource.DataSet.Refresh;

   except on E: Exception do
   end;

end;

procedure TFEntradasSalidasFarmacia.cxGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  CODIGOE2:= cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldValues['CODIGO'];
end;

// POPUP ELIMINAR
procedure TFEntradasSalidasFarmacia.ELIMINARREGISTRO1Click(Sender: TObject);
begin
  if (FLogin.CARGO = 'DIRECTOR MEDICO')  or (FLogin.CARGO = 'DIRECTOR ADMINISTRATIVO') then
  begin
    try
       FDMFarmacia.QEliminarRegistro.ParamByName('CODIGO').AsInteger:=CODIGOE2;
       FDMFarmacia.QEliminarRegistro.Execute;

       cxGrid1DBTableView1.DataController.DataSource.DataSet.Refresh;

       ShowMessage('REGISTRO ELIMINADO CON EXITO');
    except on E: Exception do
    end;
  end;
end;

procedure TFEntradasSalidasFarmacia.FormActivate(Sender: TObject);
begin
    try

      if FLogin.CARGO = 'FARMACEUTICO' then
      begin
        PopupMenu1.Items.Clear;
      end;

     // MOSTRANDO SOLO LOS ULTIMOS 6 MESES

      cxDateEdit3.Date:=Now;
      cxDateEdit2.Date:=NOW-180;

    except on E: Exception do
    end;

end;

procedure TFEntradasSalidasFarmacia.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  try
     cxDateEdit2.Clear;
     cxDateEdit3.Clear;
     cxDateEdit2.SetFocus;
     cxGrid1DBTableView1.DataController.DataSource.DataSet.Active:=False
  except

  end;
end;

end.
