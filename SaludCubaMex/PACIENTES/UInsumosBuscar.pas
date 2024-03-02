unit UInsumosBuscar;

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
  dxSkinXmas2008Blue, Vcl.Menus, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, Vcl.StdCtrls, cxButtons, cxGroupBox;

type
  TFInsumosBuscar = class(TForm)
    cxGroupBox1: TcxGroupBox;
    MostrarTodos: TcxButton;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1CODIGO_PRODUCTO: TcxGridDBColumn;
    cxGrid1DBTableView1NOMBRE: TcxGridDBColumn;
    cxGrid1DBTableView1FECHA_DE_VENCIMIENTO: TcxGridDBColumn;
    cxGrid1DBTableView1LOTE: TcxGridDBColumn;
    cxGrid1DBTableView1PRESENTACION: TcxGridDBColumn;
    cxGrid1DBTableView1LABORATORIO: TcxGridDBColumn;
    cxGrid1DBTableView1PROVEEDOR: TcxGridDBColumn;
    cxGrid1DBTableView1PRECIO_COSTO_POR_UNIDAD: TcxGridDBColumn;
    cxGrid1DBTableView1PRECIO_VENTA_POR_UNIDAD: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    PopupMenu1: TPopupMenu;
    eliminarproducto1: TMenuItem;
    procedure MostrarTodosClick(Sender: TObject);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure eliminarproducto1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FInsumosBuscar: TFInsumosBuscar;
  CODIGO:Integer;
  CODIGOE,CODIGO2:Integer;
  EXISTENCIA:Integer;

  NOMBRE,PRESENTACION,LABORATORIO,PROVEEDOR,LOTE:string;
  FECHA_DE_VENCIMIENTO:TDate;

implementation

{$R *.dfm}
 USES UDMPacientes,ULogin;

procedure TFInsumosBuscar.MostrarTodosClick(Sender: TObject);
var I,A,E,S:Integer;
begin
  // mostrar todos
  try
     // TODOS LOS PRODUCTOS FARMACIA VENC
     FDMPacientes.QBuscarProd.Execute;

     //RECORRER LA TABLA POR CADA RECORD DE VENCIMIENTO..
     for I := 0 to FDMPacientes.QBuscarProd.RecordCount -1 do
     begin
        if I= 0 then FDMPacientes.QBuscarProd.First;

        CODIGOE:= FDMPacientes.QBuscarProd.FieldValues['CODIGO'];
        NOMBRE:= FDMPacientes.QBuscarProd.FieldValues['NOMBRE'];
        PRESENTACION:= FDMPacientes.QBuscarProd.FieldValues['PRESENTACION'];
        LABORATORIO:= FDMPacientes.QBuscarProd.FieldValues['LABORATORIO'];
        LOTE:= FDMPacientes.QBuscarProd.FieldValues['LOTE'];
        PROVEEDOR:= FDMPacientes.QBuscarProd.FieldValues['PROVEEDOR'];
        FECHA_DE_VENCIMIENTO:= FDMPacientes.QBuscarProd.FieldValues['FECHA_DE_VENCIMIENTO'];

        // BUSCANDO LA ENTRDADA Y SALIDA DE CADA REGISTRO.
        FDMPacientes.QBuscarExistencia.ParamByName('NOMBRE').AsString:=NOMBRE;
        FDMPacientes.QBuscarExistencia.ParamByName('PRESENTACION').AsString:=PRESENTACION;
        FDMPacientes.QBuscarExistencia.ParamByName('LABORATORIO').AsString:=LABORATORIO;
        FDMPacientes.QBuscarExistencia.ParamByName('LOTE').AsString:=LOTE;
        FDMPacientes.QBuscarExistencia.ParamByName('PROVEEDOR').AsString:=PROVEEDOR;
        FDMPacientes.QBuscarExistencia.ParamByName('FECHA_DE_VENCIMIENTO').AsDate:=FECHA_DE_VENCIMIENTO;
        FDMPacientes.QBuscarExistencia.EXECUTE;

        if FDMPacientes.QBuscarExistencia.RecordCount > 0 then
        begin
           for A := 0 to FDMPacientes.QBuscarExistencia.RecordCount -1 do
           begin
              if A=0 then  FDMPacientes.QBuscarExistencia.First;

              E:= E + FDMPacientes.QBuscarExistencia.FieldValues['ENTRADA'];
              S:= S + FDMPacientes.QBuscarExistencia.FieldValues['SALIDA'];

              FDMPacientes.QBuscarExistencia.Next;
           end;
           EXISTENCIA:= E-S;

           if EXISTENCIA < 1 then
           begin
             // ELIMINAR REGISTRO.
             FDMPacientes.QEliminarRegistroF.ParamByName('CODIGO').AsInteger:=CODIGOE;
             FDMPacientes.QEliminarRegistroF.EXECUTE;
           end;
        end
        else
        begin
          EXISTENCIA:=0;

          // ELIMINAR REGISTRO.
          FDMPacientes.QEliminarRegistroF.ParamByName('CODIGO').AsInteger:=CODIGOE;
          FDMPacientes.QEliminarRegistroF.EXECUTE;

        end;

        FDMPacientes.QBuscarProd.Next;
     end;


    cxGrid1DBTableView1.DataController.DataSource:=FDMPACIENTES.DSBuscarProd;
    cxGrid1DBTableView1.DataController.DataSource.DataSet:=FDMPACIENTES.QBuscarProd;
    cxGrid1DBTableView1.DataController.DataSource.DataSet.Open;
    cxGrid1DBTableView1.DataController.DataSource.DataSet.Refresh;

  except

  end;
end;

procedure TFInsumosBuscar.cxGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
 CODIGO:= cxGrid1DBTableView1.DataController.DataSet.FieldValues['CODIGO'];     //ID
end;

procedure TFInsumosBuscar.cxGrid1DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var FECHA__DE_VEC: TDate;
begin
  FECHA__DE_VEC:= NOW + 90;

  if (AViewInfo.GridRecord.Values[cxGrid1DBTableView1FECHA_DE_VENCIMIENTO.Index]) < FECHA__DE_VEC then
  begin
       ACanvas.Brush.Color:= clRed;
  end;

end;

procedure TFInsumosBuscar.eliminarproducto1Click(Sender: TObject);
begin
  try
     FDMPacientes.QEliminarRegistroF.ParamByName('CODIGO').AsInteger:=CODIGO;
     FDMPacientes.QEliminarRegistroF.Execute;
     cxGrid1DBTableView1.DataController.DataSource.DataSet.Refresh;

     ShowMessage('PRODUCTO ELIMINADO CON EXITO');
  except on E: Exception do
  end;
end;

procedure TFInsumosBuscar.FormActivate(Sender: TObject);
begin
  try
    if FLogin.CARGO = 'DOCTOR' then
    begin
      PopupMenu1.Items.Clear;
    end;

  except on E: Exception do
  end;
end;



end.
