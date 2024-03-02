unit UAlmacenBuscar;

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
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxContainer, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxLabel, cxGroupBox;

type
  TFAlmacenBuscar = class(TForm)
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
    ELIMINARPRODUCTO1: TMenuItem;
    cxGrid1DBTableView1TIPO: TcxGridDBColumn;
    procedure MostrarTodosClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ELIMINARPRODUCTO1Click(Sender: TObject);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAlmacenBuscar: TFAlmacenBuscar;
  CODIGOE,CODIGO2:Integer;
  EXISTENCIA:Integer;

  NOMBRE,PRESENTACION,LABORATORIO,PROVEEDOR,LOTE:string;
  FECHA_DE_VENCIMIENTO:TDate;

implementation
 USES UDM1,UDMAlmacen,ULogin;
{$R *.dfm}


// VERIFICAR EXISTENCIA Y ELIMINANDO LOS QUE EXISTENCIA SEAN 0
procedure TFAlmacenBuscar.MostrarTodosClick(Sender: TObject);
var I,A,E,S:Integer;
begin
   // mostrar todos
    try
       // TODOS LOS PRODUCTOS ALMACEN VENC
       FDMAlmacen.QBuscarProd.Execute;

       //RECORRER LA TABLA POR CADA RECORD DE VENCIMIENTO..
       for I := 0 to FDMAlmacen.QBuscarProd.RecordCount -1 do
       begin
          if I= 0 then FDMAlmacen.QBuscarProd.First;

          CODIGOE:= FDMAlmacen.QBuscarProd.FieldValues['CODIGO'];
          NOMBRE:= FDMAlmacen.QBuscarProd.FieldValues['NOMBRE'];
          PRESENTACION:= FDMAlmacen.QBuscarProd.FieldValues['PRESENTACION'];
          LABORATORIO:= FDMAlmacen.QBuscarProd.FieldValues['LABORATORIO'];
          LOTE:= FDMAlmacen.QBuscarProd.FieldValues['LOTE'];
          PROVEEDOR:= FDMAlmacen.QBuscarProd.FieldValues['PROVEEDOR'];
          FECHA_DE_VENCIMIENTO:= FDMAlmacen.QBuscarProd.FieldValues['FECHA_DE_VENCIMIENTO'];

          // BUSCANDO LA ENTRDADA Y SALIDA DE CADA REGISTRO.
          FDMAlmacen.QBuscarExistencia.ParamByName('NOMBRE').AsString:=NOMBRE;
          FDMAlmacen.QBuscarExistencia.ParamByName('PRESENTACION').AsString:=PRESENTACION;
          FDMAlmacen.QBuscarExistencia.ParamByName('LABORATORIO').AsString:=LABORATORIO;
          FDMAlmacen.QBuscarExistencia.ParamByName('LOTE').AsString:=LOTE;
          FDMAlmacen.QBuscarExistencia.ParamByName('PROVEEDOR').AsString:=PROVEEDOR;
          FDMAlmacen.QBuscarExistencia.ParamByName('FECHA_DE_VENCIMIENTO').AsDate:=FECHA_DE_VENCIMIENTO;
          FDMAlmacen.QBuscarExistencia.EXECUTE;

          if FDMAlmacen.QBuscarExistencia.RecordCount > 0 then
          begin
             for A := 0 to FDMAlmacen.QBuscarExistencia.RecordCount -1 do
             begin
                if A=0 then  FDMAlmacen.QBuscarExistencia.First;

                E:= E + FDMAlmacen.QBuscarExistencia.FieldValues['ENTRADA'];
                S:= S + FDMAlmacen.QBuscarExistencia.FieldValues['SALIDA'];

                FDMAlmacen.QBuscarExistencia.Next;
             end;
             EXISTENCIA:= E-S;

             if EXISTENCIA < 1 then
             begin
               // ELIMINAR REGISTRO.
               FDMAlmacen.QEliminarRegistroF.ParamByName('CODIGO').AsInteger:=CODIGOE;
               FDMAlmacen.QEliminarRegistroF.EXECUTE;
             end;
          end
          else
          begin
            EXISTENCIA:=0;

            // ELIMINAR REGISTRO.
            FDMAlmacen.QEliminarRegistroF.ParamByName('CODIGO').AsInteger:=CODIGOE;
            FDMAlmacen.QEliminarRegistroF.EXECUTE;

          end;

          FDMAlmacen.QBuscarProd.Next;
       end;

       cxGrid1DBTableView1.DataController.DataSource:=FDMAlmacen.DSBuscarProd;
       cxGrid1DBTableView1.DataController.DataSource.DataSet:=FDMAlmacen.QBuscarProd;
       cxGrid1DBTableView1.DataController.DataSource.DataSet.Open;

       cxGrid1DBTableView1.DataController.DataSource.DataSet.Refresh;

    except

    end;
end;

procedure TFAlmacenBuscar.cxGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  try
      CODIGO2:= cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldValues['CODIGO'];
  except on E: Exception do
  end;

end;

procedure TFAlmacenBuscar.cxGrid1DBTableView1CustomDrawCell(
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

  // ELIMINAR
procedure TFAlmacenBuscar.ELIMINARPRODUCTO1Click(Sender: TObject);
begin
  if (FLogin.CARGO = 'DIRECTOR MEDICO')  or (FLogin.CARGO = 'DIRECTOR ADMINISTRATIVO') then
  begin
    try
       FDMAlmacen.QEliminarRegistroF.ParamByName('CODIGO').AsInteger:=CODIGO2;
       FDMAlmacen.QEliminarRegistroF.Execute;
       cxGrid1DBTableView1.DataController.DataSource.DataSet.Refresh;

       ShowMessage('PRODUCTO ELIMINADO CON EXITO');
    except on E: Exception do
    end;
  end;

end;


procedure TFAlmacenBuscar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   cxGrid1DBTableView1.DataController.DataSource.DataSet.Close;
end;

end.
