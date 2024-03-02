unit UFarmaciaBuscar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
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
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxContainer, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxLabel, cxGroupBox;

type
  TFFarmaciaBuscar = class(TForm)
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGroupBox1: TcxGroupBox;
    cxGrid1DBTableView1CODIGO_PRODUCTO: TcxGridDBColumn;
    cxGrid1DBTableView1NOMBRE: TcxGridDBColumn;
    cxGrid1DBTableView1LOTE: TcxGridDBColumn;
    cxGrid1DBTableView1PRESENTACION: TcxGridDBColumn;
    cxGrid1DBTableView1LABORATORIO: TcxGridDBColumn;
    cxGrid1DBTableView1PROVEEDOR: TcxGridDBColumn;
    cxGrid1DBTableView1FECHA_DE_VENCIMIENTO: TcxGridDBColumn;
    MostrarTodos: TcxButton;
    cxGrid1DBTableView1PRECIO_VENTA_POR_UNIDAD: TcxGridDBColumn;
    cxGrid1DBTableView1PRECIO_COSTO_POR_UNIDAD: TcxGridDBColumn;
    PopupMenu1: TPopupMenu;
    eliminarproducto1: TMenuItem;
    procedure MostrarTodosClick(Sender: TObject);
    procedure eliminarproducto1Click(Sender: TObject);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure FormActivate(Sender: TObject);
    procedure cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FFarmaciaBuscar: TFFarmaciaBuscar;
  CODIGO: Integer;
  CODIGOE, CODIGO2: Integer;
  EXISTENCIA: Integer;

  NOMBRE, PRESENTACION, LABORATORIO, PROVEEDOR, LOTE: string;
  FECHA_DE_VENCIMIENTO: TDate;

implementation

USES UDM1, UDMFarmacia, ULogin;
{$R *.dfm}

procedure TFFarmaciaBuscar.MostrarTodosClick(Sender: TObject);
var
  I, A, E, S: Integer;
begin

  // mostrar todos
  try
    // TODOS LOS PRODUCTOS FARMACIA VENC
    FDMFarmacia.QBuscarProd.Execute;

    // RECORRER LA TABLA POR CADA RECORD DE VENCIMIENTO..
    for I := 0 to FDMFarmacia.QBuscarProd.RecordCount - 1 do
    begin
      if I = 0 then
        FDMFarmacia.QBuscarProd.First;

      CODIGOE := FDMFarmacia.QBuscarProd.FieldValues['CODIGO'];
      NOMBRE := FDMFarmacia.QBuscarProd.FieldValues['NOMBRE'];
      PRESENTACION := FDMFarmacia.QBuscarProd.FieldValues['PRESENTACION'];
      LABORATORIO := FDMFarmacia.QBuscarProd.FieldValues['LABORATORIO'];
      LOTE := FDMFarmacia.QBuscarProd.FieldValues['LOTE'];
      PROVEEDOR := FDMFarmacia.QBuscarProd.FieldValues['PROVEEDOR'];
      FECHA_DE_VENCIMIENTO := FDMFarmacia.QBuscarProd.FieldValues
        ['FECHA_DE_VENCIMIENTO'];

      // BUSCANDO LA ENTRDADA Y SALIDA DE CADA REGISTRO.
      FDMFarmacia.QBuscarExistencia.ParamByName('NOMBRE').AsString := NOMBRE;
      FDMFarmacia.QBuscarExistencia.ParamByName('PRESENTACION').AsString :=
        PRESENTACION;
      FDMFarmacia.QBuscarExistencia.ParamByName('LABORATORIO').AsString :=
        LABORATORIO;
      FDMFarmacia.QBuscarExistencia.ParamByName('LOTE').AsString := LOTE;
      FDMFarmacia.QBuscarExistencia.ParamByName('PROVEEDOR').AsString :=
        PROVEEDOR;
      FDMFarmacia.QBuscarExistencia.ParamByName('FECHA_DE_VENCIMIENTO').AsDate
        := FECHA_DE_VENCIMIENTO;
      FDMFarmacia.QBuscarExistencia.Execute;

      if FDMFarmacia.QBuscarExistencia.RecordCount > 0 then
      begin
        for A := 0 to FDMFarmacia.QBuscarExistencia.RecordCount - 1 do
        begin
          if A = 0 then
            FDMFarmacia.QBuscarExistencia.First;

          E := E + FDMFarmacia.QBuscarExistencia.FieldValues['ENTRADA'];
          S := S + FDMFarmacia.QBuscarExistencia.FieldValues['SALIDA'];

          FDMFarmacia.QBuscarExistencia.Next;
        end;
        EXISTENCIA := E - S;

        if EXISTENCIA < 1 then
        begin
          // ELIMINAR REGISTRO.
          FDMFarmacia.QEliminarRegistroF.ParamByName('CODIGO').AsInteger
            := CODIGOE;
          FDMFarmacia.QEliminarRegistroF.Execute;
        end;
      end
      else
      begin
        EXISTENCIA := 0;

        // ELIMINAR REGISTRO.
        FDMFarmacia.QEliminarRegistroF.ParamByName('CODIGO').AsInteger
          := CODIGOE;
        FDMFarmacia.QEliminarRegistroF.Execute;

      end;

      FDMFarmacia.QBuscarProd.Next;
    end;

    cxGrid1DBTableView1.DataController.DataSource := FDMFarmacia.DSBuscarProd;
    cxGrid1DBTableView1.DataController.DataSource.DataSet :=
      FDMFarmacia.QBuscarProd;
    cxGrid1DBTableView1.DataController.DataSource.DataSet.Open;
    cxGrid1DBTableView1.DataController.DataSource.DataSet.Refresh;

  except

  end;
end;

procedure TFFarmaciaBuscar.cxGrid1DBTableView1CellClick
  (Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  CODIGO := cxGrid1DBTableView1.DataController.DataSet.FieldValues['CODIGO'];
  // ID
end;

procedure TFFarmaciaBuscar.cxGrid1DBTableView1CustomDrawCell
  (Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  FECHA__DE_VEC: TDate;
begin

  FECHA__DE_VEC := NOW + 90;

  if (AViewInfo.GridRecord.Values[cxGrid1DBTableView1FECHA_DE_VENCIMIENTO.Index]
    ) < FECHA__DE_VEC then
  begin
    ACanvas.Brush.Color := clRed;
  end;

end;

procedure TFFarmaciaBuscar.eliminarproducto1Click(Sender: TObject);
begin
  if (FLogin.CARGO = 'DIRECTOR MEDICO') or
    (FLogin.CARGO = 'DIRECTOR ADMINISTRATIVO') then
  begin
    try
      FDMFarmacia.QEliminarRegistroF.ParamByName('CODIGO').AsInteger := CODIGO;
      FDMFarmacia.QEliminarRegistroF.Execute;
      cxGrid1DBTableView1.DataController.DataSource.DataSet.Refresh;

      ShowMessage('PRODUCTO ELIMINADO CON EXITO');
    except
      on E: Exception do
    end;
  end;
end;

procedure TFFarmaciaBuscar.FormActivate(Sender: TObject);
begin
  try
    if FLogin.CARGO = 'FARMACEUTICO' then
    begin
      PopupMenu1.Items.Clear;
    end;

  except
    on E: Exception do
  end;
end;

procedure TFFarmaciaBuscar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  try

    cxGrid1DBTableView1.DataController.DataSource.DataSet.Close;

  except
    on E: Exception do
  end;

end;

end.
