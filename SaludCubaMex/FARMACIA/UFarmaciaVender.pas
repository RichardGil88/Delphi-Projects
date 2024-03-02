unit UFarmaciaVender;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxGroupBox, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxDBEdit, cxLabel,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, Vcl.DBCtrls, Vcl.Menus,
  Vcl.ComCtrls, cxListView, Vcl.StdCtrls, cxButtons, cxListBox, Vcl.Grids,
  cxGridBandedTableView, cxGridCustomPopupMenu, cxGridPopupMenu, cxSplitter,
  cxPC, Vcl.ExtCtrls,dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, cxSpinEdit, dxDockPanel, dxDockControl;

type
  VENT = record
    CODIGO: Integer;
    CODIGO_MEDICAMENTO: Integer;
    CODIGO_FARMACIA: Integer;
    NOMBRE: string;
    TIPO: string;
    LOTE: string;
    PRECIO_VENTA_POR_UNIDAD: Integer;
    PRECIO_COSTO_POR_UNIDAD: Integer;
    PRESENTACION: string;
    LABORATORIO: string;
    PROVEEDOR: string;
    FECHA_DE_VENCIMIENTO: TDate;
    PRECIO_TOTAL: Integer;
    ENTRADA: Integer;
    FECHA_DE_ENTRADA: TDateTime;
    SALIDA: Integer;
    FECHA_DE_SALIDA: TDateTime;
    EXISTENCIA: Integer;

  end;

type
  TFFarmaciaVender = class(TForm)
    PopupMenu1: TPopupMenu;
    EliminarProducto1: TMenuItem;
    cxGroupBox1: TcxGroupBox;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxGroupBox2: TcxGroupBox;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGroupBox3: TcxGroupBox;
    cxTextEdit1: TcxTextEdit;
    cxTextEdit6: TcxTextEdit;
    cxTextEdit7: TcxTextEdit;
    cxTextEdit8: TcxTextEdit;
    cxTextEdit9: TcxTextEdit;
    cxTextEdit2: TcxTextEdit;
    cxTextEdit4: TcxTextEdit;
    cxTextEdit5: TcxTextEdit;
    cxSpinEdit1: TcxSpinEdit;
    cxGrid2DBTableView1NOMBRE: TcxGridDBColumn;
    cxGrid2DBTableView1PRECIO_VENTA_POR_UNIDAD: TcxGridDBColumn;
    cxGrid2DBTableView1PRECIO_TOTAL: TcxGridDBColumn;
    cxGrid2DBTableView1SALIDA: TcxGridDBColumn;
    cxGrid2DBTableView1QUEDA: TcxGridDBColumn;
    cxGroupBox5: TcxGroupBox;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1CODIGO_PRODUCTO: TcxGridDBColumn;
    cxGrid1DBTableView1NOMBRE: TcxGridDBColumn;
    cxGrid1DBTableView1PRECIO_VENTA_POR_UNIDAD: TcxGridDBColumn;
    cxGrid1DBTableView1LOTE: TcxGridDBColumn;
    cxGrid1DBTableView1PRESENTACION: TcxGridDBColumn;
    cxGrid1DBTableView1LABORATORIO: TcxGridDBColumn;
    cxGrid1DBTableView1PROVEEDOR: TcxGridDBColumn;
    cxGrid1DBTableView1FECHA_DE_VENCIMIENTO: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxTextEdit10: TcxTextEdit;
    cxLabel5: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel1: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    cxLabel12: TcxLabel;
    cxLabel13: TcxLabel;
    cxLabel14: TcxLabel;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure EliminarProducto1Click(Sender: TObject);
    procedure cxGrid2DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxButton2Click(Sender: TObject);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxTextEdit10PropertiesEditValueChanged(Sender: TObject);
    procedure FormActivate(Sender: TObject);

  private
    { Private declarations }
    procedure VERIFICAR_EXISTENCIA;

  public
    { Public declarations }
    VENTAS: VENT;
  end;

var
  FFarmaciaVender: TFFarmaciaVender;
  producto, ProdSelec: string;
  PrecioVentaPorUnidad, PrecioTotal, EXISTENCIA, CODIGO, CODIGO1,
    CodigoMedicamento: Integer;
  num, ENTRADA: Integer;
  FechaEntrada: TDate;
  SACAR: Boolean;

implementation

uses UDM1, UDMFarmacia, ULogin;
{$R *.dfm}

// EXISTENCIA
procedure TFFarmaciaVender.VERIFICAR_EXISTENCIA;
var
  I: Integer;
  E, S, T: Integer;

begin
  try
    E := 0;
    S := 0;
    T := 0;

    FDMFarmacia.QBuscarExistencia.ParamByName('NOMBRE').AsString :=
      VENTAS.NOMBRE;
    FDMFarmacia.QBuscarExistencia.ParamByName('PRESENTACION').AsString :=
      VENTAS.PRESENTACION;
    FDMFarmacia.QBuscarExistencia.ParamByName('LABORATORIO').AsString :=
      VENTAS.LABORATORIO;
    FDMFarmacia.QBuscarExistencia.ParamByName('LOTE').AsString := VENTAS.LOTE;
    FDMFarmacia.QBuscarExistencia.ParamByName('PROVEEDOR').AsString :=
      VENTAS.PROVEEDOR;
    FDMFarmacia.QBuscarExistencia.ParamByName('FECHA_DE_VENCIMIENTO').AsDate :=
      VENTAS.FECHA_DE_VENCIMIENTO;
    FDMFarmacia.QBuscarExistencia.EXECUTE;

    if FDMFarmacia.QBuscarExistencia.RecordCount > 0 then
    begin
      for I := 0 to FDMFarmacia.QBuscarExistencia.RecordCount - 1 do
      begin
        if I = 0 then
          FDMFarmacia.QBuscarExistencia.First;

        E := E + FDMFarmacia.QBuscarExistencia.FieldValues['ENTRADA'];
        S := S + FDMFarmacia.QBuscarExistencia.FieldValues['SALIDA'];

        FDMFarmacia.QBuscarExistencia.Next;
      end;

      T := E - S;
      cxTextEdit10.Text := IntToStr(T);
    end
    else
    begin
      cxTextEdit10.Text := IntToStr(0);
    end;

  except
    on E: Exception do
  end;

end;

// AÑADIR A LA LISTA
procedure TFFarmaciaVender.cxButton1Click(Sender: TObject);
var
  I, total1, total2, CODIGO_TEMP, QUEDA: Integer;
begin

  if (cxTextEdit1.Text = '') then
  begin
    ShowMessage('DEBE SELECCIONAR PRIMERO UN MEDICAMENTO');
  end
  else
  begin
    if (cxSpinEdit1.Text = '0') or (cxSpinEdit1.Text = '') then
    begin
      ShowMessage('DEBE LLENAR EL CAMPO CANTIDAD A VENDER');
    end
    else
    begin
      if StrToInt(cxSpinEdit1.Text) > StrToInt(cxTextEdit10.Text) then
      begin
        ShowMessage('USTED NO CUENTA CON LA EXISTENCIA SUFICIENTE');
      end
      else
      begin
        // VERIFICAR SI EXISTE UNO CON ESE NOMBRE Y ULTIMO =1
        FDMFarmacia.QUltimoTemp.ParamByName('NOMBRE').AsString := VENTAS.NOMBRE;
        FDMFarmacia.QUltimoTemp.EXECUTE;

        // SI EXISTE UN REGISTRO
        if FDMFarmacia.QUltimoTemp.RecordCount > 0 then
        begin

          FDMFarmacia.QUltimoTemp.First;

          CODIGO_TEMP := FDMFarmacia.QUltimoTemp.FieldValues['CODIGO'];
          QUEDA := FDMFarmacia.QUltimoTemp.FieldValues['QUEDA'];

          FDMFarmacia.QUltimoTemp.Close;

          VENTAS.SALIDA := StrToInt(cxSpinEdit1.Text);
          total1 := VENTAS.SALIDA * VENTAS.PRECIO_VENTA_POR_UNIDAD;

          if VENTAS.SALIDA > QUEDA then
          begin
            ShowMessage('USTED NO CUENTA CON LA CANTIDAD SOLICITADA ');
            // limpiando los edits
            cxTextEdit1.Clear;
            cxTextEdit2.Clear;
            cxTextEdit10.Clear;
            cxTextEdit4.Clear;
            cxTextEdit5.Clear;
            cxTextEdit6.Clear;
            cxTextEdit7.Clear;
            cxTextEdit8.Clear;
            cxSpinEdit1.Clear;
            cxSpinEdit1.SetFocus;
          end
          else
          begin

            // PONIENDO ULTIMO_REG =0
            FDMFarmacia.QUpdateTemp.ParamByName('PCODIGO').AsInteger :=
              CODIGO_TEMP;
            FDMFarmacia.QUpdateTemp.EXECUTE;


            // INSERTAR EL REG CON QUEDA = QUEDA- VENTAS.SALIDA  Y ULTIMO =1

            // insertando una nueva venta a la tabla ventas provicional MEDICAMENTOS
            with FDMFarmacia.QInsertarVentaProv do
            begin

              // ParamByName('CODIGO_FARMACIA').AsInteger:=ventas.CODIGO_FARMACIA;
              ParamByName('CODIGO_MEDICAMENTO').AsInteger :=
                VENTAS.CODIGO_MEDICAMENTO;
              ParamByName('NOMBRE').AsString := VENTAS.NOMBRE;
              ParamByName('TIPO').AsString := VENTAS.TIPO;
              ParamByName('LOTE').AsString := VENTAS.LOTE;
              ParamByName('PRESENTACION').AsString := VENTAS.PRESENTACION;
              ParamByName('LABORATORIO').AsString := VENTAS.LABORATORIO;
              ParamByName('PROVEEDOR').AsString := VENTAS.PROVEEDOR;
              ParamByName('EXISTENCIA').AsInteger := VENTAS.EXISTENCIA;
              ParamByName('FECHA_DE_VENCIMIENTO').AsDate :=
                VENTAS.FECHA_DE_VENCIMIENTO;
              ParamByName('PRECIO_COSTO_POR_UNIDAD').AsInteger :=
                VENTAS.PRECIO_COSTO_POR_UNIDAD;
              ParamByName('PRECIO_VENTA_POR_UNIDAD').AsInteger :=
                VENTAS.PRECIO_VENTA_POR_UNIDAD;
              ParamByName('PRECIO_TOTAL').AsInteger := total1;
              ParamByName('ENTRADA').AsInteger := VENTAS.ENTRADA;
              ParamByName('FECHA_DE_ENTRADA').AsDate := VENTAS.FECHA_DE_ENTRADA;
              ParamByName('SALIDA').AsInteger := VENTAS.SALIDA;
              ParamByName('FECHA_DE_SALIDA').AsDate := NOW;
              ParamByName('QUEDA').AsInteger := QUEDA - VENTAS.SALIDA;
              ParamByName('ULTIMO_REG').AsInteger := 1;
              EXECUTE;
            end;
          end;
        end
        else // SINO EXISTE QUEDA = EXISTENCIA - SALIDA
        begin
          VENTAS.SALIDA := StrToInt(cxSpinEdit1.Text);
          total1 := VENTAS.SALIDA * VENTAS.PRECIO_VENTA_POR_UNIDAD;

          // insertando una nueva venta a la tabla ventas provicional MEDICAMENTOS
          with FDMFarmacia.QInsertarVentaProv do
          begin

            // ParamByName('CODIGO_FARMACIA').AsInteger:=ventas.CODIGO_FARMACIA;
            ParamByName('CODIGO_MEDICAMENTO').AsInteger :=
              VENTAS.CODIGO_MEDICAMENTO;
            ParamByName('NOMBRE').AsString := VENTAS.NOMBRE;
            ParamByName('TIPO').AsString := VENTAS.TIPO;
            ParamByName('LOTE').AsString := VENTAS.LOTE;
            ParamByName('PRESENTACION').AsString := VENTAS.PRESENTACION;
            ParamByName('LABORATORIO').AsString := VENTAS.LABORATORIO;
            ParamByName('PROVEEDOR').AsString := VENTAS.PROVEEDOR;
            ParamByName('EXISTENCIA').AsInteger := VENTAS.EXISTENCIA;
            ParamByName('FECHA_DE_VENCIMIENTO').AsDate :=
              VENTAS.FECHA_DE_VENCIMIENTO;
            ParamByName('PRECIO_COSTO_POR_UNIDAD').AsInteger :=
              VENTAS.PRECIO_COSTO_POR_UNIDAD;
            ParamByName('PRECIO_VENTA_POR_UNIDAD').AsInteger :=
              VENTAS.PRECIO_VENTA_POR_UNIDAD;
            ParamByName('PRECIO_TOTAL').AsInteger := total1;
            ParamByName('ENTRADA').AsInteger := VENTAS.ENTRADA;
            ParamByName('FECHA_DE_ENTRADA').AsDate := VENTAS.FECHA_DE_ENTRADA;
            ParamByName('SALIDA').AsInteger := VENTAS.SALIDA;
            ParamByName('FECHA_DE_SALIDA').AsDate := NOW;
            ParamByName('QUEDA').AsInteger := StrToInt(cxTextEdit10.Text) -
              VENTAS.SALIDA;
            ParamByName('ULTIMO_REG').AsInteger := 1;
            EXECUTE;

          end;

        end;

        // ACTUALIZANDO la tabla PROVICIONAL EN PANTALLA
        with FDMFarmacia.QVentaProvicionalTodos do
        begin
          EXECUTE;
          // Calculando el total de dinero
          num := 0;
          for I := 0 to FDMFarmacia.QVentaProvicionalTodos.RecordCount - 1 do
          begin
            if I = 0 then
              FDMFarmacia.QVentaProvicionalTodos.First;
            total2 := FDMFarmacia.QVentaProvicionalTodos.FieldValues
              ['PRECIO_TOTAL'];
            num := num + total2;
            FDMFarmacia.QVentaProvicionalTodos.Next;
          end;
          cxTextEdit9.Text := IntToStr(num);
        end;

        cxGrid2DBTableView1.DataController.DataSource.DataSet.open;
        cxGrid2DBTableView1.DataController.DataSource.DataSet.Refresh;

        // limpiando los edits
        cxTextEdit1.Clear;
        cxTextEdit2.Clear;
        cxTextEdit10.Clear;
        cxTextEdit4.Clear;
        cxTextEdit5.Clear;
        cxTextEdit6.Clear;
        cxTextEdit7.Clear;
        cxTextEdit8.Clear;
        cxSpinEdit1.Clear;
        cxSpinEdit1.SetFocus;

        // limpiando las var
        total1 := 0;
        total2 := 0;
        num := 0;
        I := 0;

      end;
    end;
  end;

end;

// Vender
procedure TFFarmaciaVender.cxButton2Click(Sender: TObject);
var
  I: Integer;
begin
  try
    if FDMFarmacia.QVentaProvicionalTodos.RecordCount > 0 then
    begin
      // recorriendo la tabla provicional
      for I := 0 to FDMFarmacia.QVentaProvicionalTodos.RecordCount - 1 do
      begin
        if I = 0 then
          FDMFarmacia.QVentaProvicionalTodos.First;

        // INSERTANDO EN LA TABLA VENTA DE PRODUCTOS.
        With FDMFarmacia.QInsertarVenta do
        begin
          ParamByName('CODIGO_PRODUCTO').AsInteger :=
            FDMFarmacia.QVentaProvicionalTodos.FieldValues
            ['CODIGO_MEDICAMENTO'];
          ParamByName('NOMBRE').AsString :=
            FDMFarmacia.QVentaProvicionalTodos.FieldValues['NOMBRE'];
          ParamByName('TIPO').AsString :=
            FDMFarmacia.QVentaProvicionalTodos.FieldValues['TIPO'];
          ParamByName('PROVEEDOR').AsString :=
            FDMFarmacia.QVentaProvicionalTodos.FieldValues['PROVEEDOR'];
          ParamByName('PRESENTACION').AsString :=
            FDMFarmacia.QVentaProvicionalTodos.FieldValues['PRESENTACION'];
          ParamByName('LABORATORIO').AsString :=
            FDMFarmacia.QVentaProvicionalTodos.FieldValues['LABORATORIO'];
          ParamByName('LOTE').AsString :=
            FDMFarmacia.QVentaProvicionalTodos.FieldValues['LOTE'];
          ParamByName('FECHA_DE_VENCIMIENTO').AsDate :=
            FDMFarmacia.QVentaProvicionalTodos.FieldValues
            ['FECHA_DE_VENCIMIENTO'];
          ParamByName('PRECIO_COSTO_POR_UNIDAD').AsInteger :=
            FDMFarmacia.QVentaProvicionalTodos.FieldValues
            ['PRECIO_COSTO_POR_UNIDAD'];
          ParamByName('PRECIO_VENTA_POR_UNIDAD').AsInteger :=
            FDMFarmacia.QVentaProvicionalTodos.FieldValues
            ['PRECIO_VENTA_POR_UNIDAD'];
          ParamByName('CANTIDAD_VENDIDO').AsInteger :=
            FDMFarmacia.QVentaProvicionalTodos.FieldValues['SALIDA'];
          ParamByName('PRECIO_TOTAL').AsInteger :=
            FDMFarmacia.QVentaProvicionalTodos.FieldValues['PRECIO_TOTAL'];
          ParamByName('FECHA_DE_VENTA').AsDate := NOW;
          ParamByName('HORA_DE_VENTA').AsTime := Time;
          ParamByName('VENDEDOR').AsString := Flogin.NOMBRE_COMPLETO;
          EXECUTE;
        end;

        // insertando en PRODUCTOS EN ALMACEN donde existencia = existencia + cantidad
        with FDMFarmacia.QAgregarProdFarmacia do
        begin
          ParamByName('NOMBRE').AsString :=
            FDMFarmacia.QVentaProvicionalTodos.FieldValues['NOMBRE'];
          ParamByName('CODIGO_MEDICAMENTO').AsInteger :=
            FDMFarmacia.QVentaProvicionalTodos.FieldValues
            ['CODIGO_MEDICAMENTO'];
          ParamByName('TIPO').AsString :=
            FDMFarmacia.QVentaProvicionalTodos.FieldValues['TIPO'];
          ParamByName('LOTE').AsString :=
            FDMFarmacia.QVentaProvicionalTodos.FieldValues['LOTE'];
          ParamByName('ENTRADA').AsInteger := 0;
          // ParamByName('FECHA_DE_ENTRADA').AsDate:=FDMFarmacia.QVentaProvicionalTodos.FieldValues['FECHA_DE_ENTRADA'];
          ParamByName('SALIDA').AsInteger :=
            FDMFarmacia.QVentaProvicionalTodos.FieldValues['SALIDA'];
          ParamByName('FECHA_DE_SALIDA').AsDate :=
            FDMFarmacia.QVentaProvicionalTodos.FieldValues['FECHA_DE_SALIDA'];
          ParamByName('FECHA_DE_VENCIMIENTO').AsDate :=
            FDMFarmacia.QVentaProvicionalTodos.FieldValues
            ['FECHA_DE_VENCIMIENTO'];
          ParamByName('PRECIO_COSTO_POR_UNIDAD').AsInteger :=
            FDMFarmacia.QVentaProvicionalTodos.FieldValues
            ['PRECIO_COSTO_POR_UNIDAD'];
          ParamByName('PRECIO_VENTA_POR_UNIDAD').AsInteger :=
            FDMFarmacia.QVentaProvicionalTodos.FieldValues
            ['PRECIO_VENTA_POR_UNIDAD'];
          ParamByName('PRESENTACION').AsString :=
            FDMFarmacia.QVentaProvicionalTodos.FieldValues['PRESENTACION'];
          ParamByName('LABORATORIO').AsString :=
            FDMFarmacia.QVentaProvicionalTodos.FieldValues['LABORATORIO'];
          ParamByName('PROVEEDOR').AsString :=
            FDMFarmacia.QVentaProvicionalTodos.FieldValues['PROVEEDOR'];
          ParamByName('VENDEDOR').AsString := Flogin.NOMBRE_COMPLETO;
          ParamByName('OPERACION').AsString := 'SALIDA';
          ParamByName('FECHA_DE_LA_OPERACION').AsDate := NOW;
          EXECUTE;

        end;


        // INSERTANDO O ACTUALIZANDO LA TABLA DE FEHCAS DE VENCIMIENTO EN FARMACIA

        // 1- preguntando si hay un registro QUE COINCIDA TODO
        FDMFarmacia.QProduc_Venc_Farm.ParamByName('PCODIGO').AsInteger :=
          FDMFarmacia.QVentaProvicionalTodos.FieldValues['CODIGO_MEDICAMENTO'];
        FDMFarmacia.QProduc_Venc_Farm.ParamByName('PFECHA').AsDate :=
          FDMFarmacia.QVentaProvicionalTodos.FieldValues
          ['FECHA_DE_VENCIMIENTO'];
        FDMFarmacia.QProduc_Venc_Farm.ParamByName('PPRESENTACION').AsString :=
          FDMFarmacia.QVentaProvicionalTodos.FieldValues['PRESENTACION'];
        FDMFarmacia.QProduc_Venc_Farm.ParamByName('PLABORATORIO').AsString :=
          FDMFarmacia.QVentaProvicionalTodos.FieldValues['LABORATORIO'];
        FDMFarmacia.QProduc_Venc_Farm.ParamByName('PPROVEEDOR').AsString :=
          FDMFarmacia.QVentaProvicionalTodos.FieldValues['PROVEEDOR'];
        FDMFarmacia.QProduc_Venc_Farm.ParamByName('PLOTE').AsString :=
          FDMFarmacia.QVentaProvicionalTodos.FieldValues['LOTE'];
        FDMFarmacia.QProduc_Venc_Farm.ParamByName('PPRECIOVENTA').AsInteger :=
          FDMFarmacia.QVentaProvicionalTodos.FieldValues
          ['PRECIO_VENTA_POR_UNIDAD'];
        FDMFarmacia.QProduc_Venc_Farm.ParamByName('PPRECIOCOSTO').AsInteger :=
          FDMFarmacia.QVentaProvicionalTodos.FieldValues
          ['PRECIO_COSTO_POR_UNIDAD'];
        FDMFarmacia.QProduc_Venc_Farm.ParamByName('PTIPO').AsString :=
          FDMFarmacia.QVentaProvicionalTodos.FieldValues['TIPO'];
        FDMFarmacia.QProduc_Venc_Farm.EXECUTE;

        // si existe actualizarlo
        if FDMFarmacia.QProduc_Venc_Farm.RecordCount > 0 then
        begin

          FDMFarmacia.QUpdateProducVencFarm.ParamByName('PCODIGO').AsInteger :=
            FDMFarmacia.QVentaProvicionalTodos.FieldValues
            ['CODIGO_MEDICAMENTO'];
          FDMFarmacia.QUpdateProducVencFarm.ParamByName('PFECHA').AsDate :=
            FDMFarmacia.QVentaProvicionalTodos.FieldValues
            ['FECHA_DE_VENCIMIENTO'];
          FDMFarmacia.QUpdateProducVencFarm.ParamByName('PPRESENTACION')
            .AsString := FDMFarmacia.QVentaProvicionalTodos.FieldValues
            ['PRESENTACION'];
          FDMFarmacia.QUpdateProducVencFarm.ParamByName('PLABORATORIO').AsString
            := FDMFarmacia.QVentaProvicionalTodos.FieldValues['LABORATORIO'];
          FDMFarmacia.QUpdateProducVencFarm.ParamByName('PPROVEEDOR').AsString
            := FDMFarmacia.QVentaProvicionalTodos.FieldValues['PROVEEDOR'];
          FDMFarmacia.QUpdateProducVencFarm.ParamByName('PLOTE').AsString :=
            FDMFarmacia.QVentaProvicionalTodos.FieldValues['LOTE'];
          FDMFarmacia.QUpdateProducVencFarm.ParamByName('PPRECIOVENTA')
            .AsInteger := FDMFarmacia.QVentaProvicionalTodos.FieldValues
            ['PRECIO_VENTA_POR_UNIDAD'];
          FDMFarmacia.QUpdateProducVencFarm.ParamByName('PPRECIOCOSTO')
            .AsInteger := FDMFarmacia.QVentaProvicionalTodos.FieldValues
            ['PRECIO_COSTO_POR_UNIDAD'];
          FDMFarmacia.QUpdateProducVencFarm.ParamByName('PTIPO').AsString :=
            FDMFarmacia.QVentaProvicionalTodos.FieldValues['TIPO'];
          FDMFarmacia.QUpdateProducVencFarm.EXECUTE;

        end
        else // sino existe insertar nuevo registro
        begin

          FDMFarmacia.QInsertarProducVencFarm.ParamByName('PCODIGO').AsInteger
            := FDMFarmacia.QVentaProvicionalTodos.FieldValues
            ['CODIGO_MEDICAMENTO'];
          FDMFarmacia.QInsertarProducVencFarm.ParamByName('PFECHA_VENCIMIENTO')
            .AsDate := FDMFarmacia.QVentaProvicionalTodos.FieldValues
            ['FECHA_DE_VENCIMIENTO'];
          FDMFarmacia.QInsertarProducVencFarm.ParamByName('PPRESENTACION')
            .AsString := FDMFarmacia.QVentaProvicionalTodos.FieldValues
            ['PRESENTACION'];
          FDMFarmacia.QInsertarProducVencFarm.ParamByName('PLABORATORIO')
            .AsString := FDMFarmacia.QVentaProvicionalTodos.FieldValues
            ['LABORATORIO'];
          FDMFarmacia.QInsertarProducVencFarm.ParamByName('PPROVEEDOR').AsString
            := FDMFarmacia.QVentaProvicionalTodos.FieldValues['PROVEEDOR'];
          FDMFarmacia.QInsertarProducVencFarm.ParamByName('PLOTE').AsString :=
            FDMFarmacia.QVentaProvicionalTodos.FieldValues['LOTE'];
          FDMFarmacia.QInsertarProducVencFarm.ParamByName('PPRECIOVENTA')
            .AsInteger := FDMFarmacia.QVentaProvicionalTodos.FieldValues
            ['PRECIO_VENTA_POR_UNIDAD'];
          FDMFarmacia.QInsertarProducVencFarm.ParamByName('PPRECIOCOSTO')
            .AsInteger := FDMFarmacia.QVentaProvicionalTodos.FieldValues
            ['PRECIO_COSTO_POR_UNIDAD'];
          FDMFarmacia.QInsertarProducVencFarm.ParamByName('PTIPO').AsString :=
            FDMFarmacia.QVentaProvicionalTodos.FieldValues['TIPO'];
          FDMFarmacia.QInsertarProducVencFarm.EXECUTE;
        end;

        FDMFarmacia.QVentaProvicionalTodos.Next;
      end;
    end;

    // Cancelando todo
    with FDMFarmacia.Qcancelar do
    begin
      EXECUTE;
    end;

    // limpiando los edits
    cxTextEdit1.Clear;
    cxTextEdit2.Clear;
    cxTextEdit10.Clear;
    cxTextEdit4.Clear;
    cxTextEdit5.Clear;
    cxTextEdit6.Clear;
    cxTextEdit7.Clear;
    cxTextEdit8.Clear;
    cxTextEdit9.Clear;
    cxSpinEdit1.Clear;
    cxSpinEdit1.SetFocus;

    CODIGO := 0;

    cxGrid2DBTableView1.DataController.DataSource.DataSet.open;
    cxGrid2DBTableView1.DataController.DataSource.DataSet.Refresh;
    cxGrid1DBTableView1.DataController.DataSource.DataSet.open;
    cxGrid1DBTableView1.DataController.DataSource.DataSet.Refresh;

  except
    on E: Exception do
  end;
end;

// Cancelar
procedure TFFarmaciaVender.cxButton3Click(Sender: TObject); // cancelar todo
begin
  try
    // Cancelando todo
    with FDMFarmacia.Qcancelar do
    begin
      EXECUTE;
      cxGrid2DBTableView1.DataController.DataSource.DataSet.open;
      cxGrid2DBTableView1.DataController.DataSource.DataSet.Refresh;
    end;

    // limpiando los edits
    cxTextEdit1.Clear;
    cxTextEdit2.Clear;
    cxTextEdit10.Clear;
    cxTextEdit4.Clear;
    cxTextEdit5.Clear;
    cxTextEdit6.Clear;
    cxTextEdit7.Clear;
    cxTextEdit8.Clear;
    cxTextEdit9.Clear;
    cxSpinEdit1.Clear;
    cxSpinEdit1.SetFocus;
  except
    on E: Exception do
  end;

end;

// MOSTRANDO LOS DATOS EN PANTALLA
procedure TFFarmaciaVender.cxGrid1DBTableView1CellClick
  (Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  // capturando los datos del grid
  try
    VENTAS.CODIGO := cxGrid1DBTableView1.DataController.DataSet.FieldValues['CODIGO']; // ID
    VENTAS.CODIGO_MEDICAMENTO := cxGrid1DBTableView1.DataController.DataSet.FieldValues['CODIGO_PRODUCTO'];
    VENTAS.NOMBRE := cxGrid1DBTableView1.DataController.DataSet.FieldValues['NOMBRE'];
    VENTAS.TIPO := cxGrid1DBTableView1.DataController.DataSet.FieldValues['TIPO'];
    VENTAS.PRECIO_VENTA_POR_UNIDAD :=cxGrid1DBTableView1.DataController.DataSet.FieldValues['PRECIO_VENTA_POR_UNIDAD'];
    VENTAS.PRECIO_COSTO_POR_UNIDAD :=cxGrid1DBTableView1.DataController.DataSet.FieldValues['PRECIO_COSTO_POR_UNIDAD'];
    VENTAS.LOTE := cxGrid1DBTableView1.DataController.DataSet.FieldValues['LOTE'];
    VENTAS.PRESENTACION := cxGrid1DBTableView1.DataController.DataSet.FieldValues['PRESENTACION'];
    VENTAS.LABORATORIO := cxGrid1DBTableView1.DataController.DataSet.FieldValues['LABORATORIO'];
    VENTAS.PROVEEDOR := cxGrid1DBTableView1.DataController.DataSet.FieldValues['PROVEEDOR'];

    if VENTAS.TIPO = 'MEDICAMENTO' then
    begin
      VENTAS.FECHA_DE_VENCIMIENTO := cxGrid1DBTableView1.DataController.DataSet.
        FieldValues['FECHA_DE_VENCIMIENTO'];
    end;

    // LENANDO LOS EDITS
    cxTextEdit1.Text := VENTAS.NOMBRE;
    cxTextEdit2.Text := VENTAS.PRESENTACION;
    // cxTextEdit3.Text:=IntToStr(VENTAS.EXISTENCIA);
    cxTextEdit4.Text := VENTAS.LABORATORIO;
    cxTextEdit5.Text := IntToStr(VENTAS.PRECIO_VENTA_POR_UNIDAD);
    cxTextEdit6.Text := VENTAS.PROVEEDOR;
    cxTextEdit7.Text := VENTAS.LOTE;
    cxTextEdit8.Text := DateToStr(VENTAS.FECHA_DE_VENCIMIENTO);
    // cxSpinEdit1.SetFocus;

    VERIFICAR_EXISTENCIA;

  except

  end;
end;

procedure TFFarmaciaVender.cxGrid2DBTableView1CellClick
  (Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  CODIGO1 := cxGrid2DBTableView1.DataController.DataSet.FieldValues['CODIGO'];
end;

// cambiando de colores los edits
procedure TFFarmaciaVender.cxTextEdit10PropertiesEditValueChanged
  (Sender: TObject);
begin

  if (cxTextEdit10.Text <> '') OR (cxTextEdit10.Text <> '') then
  begin
    if (StrToInt(cxTextEdit10.Text) > 0) then
    begin
      cxTextEdit10.Style.Color := cLGreen;
      cxTextEdit10.StyleDisabled.Color := cLGreen;
      // cxTextEdit3.StyleFocused.Color:=cLGreen;
      cxTextEdit10.StyleHot.Color := cLGreen;
    end
    else
    begin
      cxTextEdit10.Style.Color := clWebRed;
      cxTextEdit10.StyleDisabled.Color := clWebRed;
      // cxTextEdit3.StyleFocused.Color:=clWebRed;
      cxTextEdit10.StyleHot.Color := clWebRed;
    end;
  end
  ELSE
  begin
    cxTextEdit10.Style.Color := $0061514E;
    cxTextEdit10.StyleDisabled.Color := $0061514E;
    // cxTextEdit3.StyleFocused.Color:=cLGreen;
    cxTextEdit10.StyleHot.Color := $0061514E;
  end;

end;

// ELIMINAR PRODUCTO
procedure TFFarmaciaVender.EliminarProducto1Click(Sender: TObject);
begin
  if (Flogin.CARGO = 'DIRECTOR MEDICO') or
     (Flogin.CARGO = 'DIRECTOR ADMINISTRATIVO') then
  begin
    try
      FDMFarmacia.QEliminarRegistroF.ParamByName('CODIGO').AsInteger :=
        VENTAS.CODIGO;
      FDMFarmacia.QEliminarRegistroF.EXECUTE;
      cxGrid1DBTableView1.DataController.DataSource.DataSet.Refresh;

      ShowMessage('PRODUCTO ELIMINADO CON EXITO');
    except
      on E: Exception do
    end;
  end;
end;

// ONACTIVATE
procedure TFFarmaciaVender.FormActivate(Sender: TObject);
begin
  try
    if Flogin.CARGO = 'FARMACEUTICO' then
    begin
      PopupMenu1.Items.Clear;
    end;

    cxGrid1DBTableView1.DataController.DataSource.DataSet.open;

  except
    on E: Exception do
  end;
end;

// ONCLOSE
procedure TFFarmaciaVender.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  try
     // Cancelando todo
    with FDMFarmacia.Qcancelar do
    begin
      EXECUTE;
      cxGrid2DBTableView1.DataController.DataSource.DataSet.open;
      cxGrid2DBTableView1.DataController.DataSource.DataSet.Refresh;
    end;

    cxGrid1DBTableView1.DataController.DataSource.DataSet.Close;
    cxGrid2DBTableView1.DataController.DataSource.DataSet.Close;

    // limpiando los edits
    cxTextEdit1.Clear;
    cxTextEdit2.Clear;
    cxTextEdit10.Clear;
    cxTextEdit4.Clear;
    cxTextEdit5.Clear;
    cxTextEdit6.Clear;
    cxTextEdit7.Clear;
    cxTextEdit8.Clear;
    cxTextEdit9.Clear;
    cxSpinEdit1.Clear;
  except
    on E: Exception do
  end;

end;

end.
