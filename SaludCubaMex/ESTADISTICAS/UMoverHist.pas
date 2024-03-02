unit UMoverHist;

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
  dxSkinXmas2008Blue, cxProgressBar, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  cxLabel, cxGroupBox;

type
  TFMoverHist = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cxLabel1: TcxLabel;
    cxProgressBar1: TcxProgressBar;
    cxProgressBar2: TcxProgressBar;
    cxProgressBar3: TcxProgressBar;
    cxButton1: TcxButton;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxProgressBar4: TcxProgressBar;
    cxLabel4: TcxLabel;
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure   MOV_PROD_ALMACEN_HIST;
    procedure   MOV_PROD_FARMACIA_HIST;
    procedure   MOV_PROD_INSUMOS_HIST;
    procedure   MOV_EST_VENTAS;
  end;

var
  FMoverHist: TFMoverHist;

  CODIGO_PRODUC:Integer;
  TIPO:string;
  CODIGO_MEDICAMENTO,CODIGO,CODIGO2,CODIGOE,Existencia,EXISTENCIA1,EXISTENCIA_EN_VENCIMIENTO:Integer;

  //CODIGO1:Integer;
  CODIGO_PRODUCTO,CODIGO_PACIENTE:Integer;
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

  CANTIDAD_VENDIDO:Integer;
  PRECIO_TOTAL:Integer;
  FECHA_DE_VENTA:TDate;
  HORA_DE_VENTA:TTime;
  VENDEDOR:string;

implementation

{$R *.dfm}
 USES UDMAlmacen,UDMFarmacia,UDMPacientes,UDMEstadisticas;

procedure TFMoverHist.cxButton1Click(Sender: TObject);
begin
  try
     MOV_PROD_ALMACEN_HIST;
  except on E: Exception do
  end;

  try
     MOV_PROD_FARMACIA_HIST;
  except on E: Exception do
  end;

  try
     MOV_PROD_INSUMOS_HIST;
  except on E: Exception do
  end;

  try
     MOV_EST_VENTAS
  except on E: Exception do
  end;

end;


procedure TFMoverHist.MOV_EST_VENTAS;
var i:Integer;
begin
   // MOV PA HISTORIAL LOS ANTERIORES A 6 MESES
    try
      cxProgressBar4.Properties.Min:=0;

      FDMEstadisticas.QVentas6Meses.ParamByName('FECHA').AsDate:= NOW-180;
      FDMEstadisticas.QVentas6Meses.Execute;

       cxProgressBar4.Properties.Max:=FDMEstadisticas.QVentas6Meses.RecordCount;

      if FDMEstadisticas.QVentas6Meses.RecordCount > 0  then
      begin
         for I := 0 to FDMEstadisticas.QVentas6Meses.RecordCount -1 do
         begin
           if I = 0 then FDMEstadisticas.QVentas6Meses.First;

           cxProgressBar4.Position:=cxProgressBar4.Position+1;

           // CAPTURANDO LOS DATOS
           CODIGO_PRODUCTO:=FDMEstadisticas.QVentas6Meses.FieldValues['CODIGO_PRODUCTO'];
           CODIGOE:=FDMEstadisticas.QVentas6Meses.FieldValues['CODIGO'];
           NOMBRE:=FDMEstadisticas.QVentas6Meses.FieldValues['NOMBRE'];
           TIPO1:=FDMEstadisticas.QVentas6Meses.FieldValues['TIPO'];
           PROVEEDOR:=FDMEstadisticas.QVentas6Meses.FieldValues['PROVEEDOR'];
           PRESENTACION:=FDMEstadisticas.QVentas6Meses.FieldValues['PRESENTACION'];
           LABORATORIO:=FDMEstadisticas.QVentas6Meses.FieldValues['LABORATORIO'];
           LOTE:=FDMEstadisticas.QVentas6Meses.FieldValues['LOTE'];
           FECHA_DE_VENCIMIENTO:=FDMEstadisticas.QVentas6Meses.FieldValues['FECHA_DE_VENCIMIENTO'];
           PRECIO_COSTO_POR_UNIDAD:=FDMEstadisticas.QVentas6Meses.FieldValues['PRECIO_COSTO_POR_UNIDAD'];
           PRECIO_VENTA_POR_UNIDAD:=FDMEstadisticas.QVentas6Meses.FieldValues['PRECIO_VENTA_POR_UNIDAD'];
           CANTIDAD_VENDIDO:=FDMEstadisticas.QVentas6Meses.FieldValues['CANTIDAD_VENDIDO'];
           PRECIO_TOTAL:=FDMEstadisticas.QVentas6Meses.FieldValues['PRECIO_TOTAL'];
           FECHA_DE_VENTA:=FDMEstadisticas.QVentas6Meses.FieldValues['FECHA_DE_VENTA'];
           HORA_DE_VENTA:=FDMEstadisticas.QVentas6Meses.FieldValues['HORA_DE_VENTA'];
           VENDEDOR:=FDMEstadisticas.QVentas6Meses.FieldValues['VENDEDOR'];


           // INSERTANDO EN HISTORIAL
            with FDMEstadisticas.QAgregarProdVentasHistorial do
            begin
              ParamByName('CODIGO_PRODUCTO').AsInteger:= CODIGO_PRODUCTO;
              ParamByName('NOMBRE').AsString:=NOMBRE;
              ParamByName('TIPO').AsString:=TIPO1;
              ParamByName('LOTE').AsString:=LOTE;
              ParamByName('CANTIDAD_VENDIDO').AsInteger:=CANTIDAD_VENDIDO;
              ParamByName('FECHA_DE_VENTA').AsDate:=FECHA_DE_VENTA;
              ParamByName('HORA_DE_VENTA').ASTIME:=HORA_DE_VENTA;
              ParamByName('PRECIO_TOTAL').AsInteger:=PRECIO_TOTAL;
              ParamByName('FECHA_DE_VENCIMIENTO').AsDate:=FECHA_DE_VENCIMIENTO;       // NO PARA INSUMO
              ParamByName('PRECIO_COSTO_POR_UNIDAD').AsInteger:=PRECIO_COSTO_POR_UNIDAD;
              ParamByName('PRECIO_VENTA_POR_UNIDAD').AsInteger:=PRECIO_VENTA_POR_UNIDAD;
              ParamByName('PRESENTACION').AsString:=PRESENTACION;  // NO PARA INSUMO
              ParamByName('LABORATORIO').AsString:=LABORATORIO;   // NO PARA INSUMO
              ParamByName('PROVEEDOR').AsString:=PROVEEDOR;
              ParamByName('VENDEDOR').AsString:=VENDEDOR;
              Execute;
            end;

           // ELIMINANDO EL REGISTRO VIEJO
           FDMEstadisticas.QEliminarRegistro.ParamByName('CODIGO').AsInteger:=CODIGOE;
           FDMEstadisticas.QEliminarRegistro.Execute;

           FDMEstadisticas.QVentas6Meses.Next;
         end;

      end
      else
      begin
        cxProgressBar4.Position:=100;
      end;

    except on E: Exception do
    end;
end;

procedure TFMoverHist.MOV_PROD_ALMACEN_HIST;
var i:Integer;
begin
    // MOV PA HISTORIAL LOS ANTERIORES A 6 MESES
    try
      cxProgressBar1.Properties.Min:=0;

      FDMAlmacen.QAlmacen6Meses.ParamByName('FECHA').AsDate:= NOW-180;
      FDMAlmacen.QAlmacen6Meses.Execute;

       cxProgressBar1.Properties.Max:=FDMAlmacen.QAlmacen6Meses.RecordCount;

      if FDMAlmacen.QAlmacen6Meses.RecordCount > 0  then
      begin
         for I := 0 to FDMAlmacen.QAlmacen6Meses.RecordCount -1 do
         begin
           if I = 0 then FDMAlmacen.QAlmacen6Meses.First;

           cxProgressBar1.Position:=cxProgressBar1.Position+1;

           TIPO1:=FDMAlmacen.QAlmacen6Meses.FieldValues['TIPO'];
           OPERACION:=FDMAlmacen.QAlmacen6Meses.FieldValues['OPERACION'];

           if TIPO1 = 'MEDICAMENTO' then
           begin
              if OPERACION = 'ENTRADA' then
              begin
                 // CAPTURANDO LOS DATOS
                 CODIGOE:=FDMAlmacen.QAlmacen6Meses.FieldValues['CODIGO'];
                 CODIGO_PRODUCTO:=FDMAlmacen.QAlmacen6Meses.FieldValues['CODIGO_PRODUCTO'];
                 NOMBRE:=FDMAlmacen.QAlmacen6Meses.FieldValues['NOMBRE'];
                 PROVEEDOR:=FDMAlmacen.QAlmacen6Meses.FieldValues['PROVEEDOR'];
                 PRESENTACION:=FDMAlmacen.QAlmacen6Meses.FieldValues['PRESENTACION'];
                 LABORATORIO:=FDMAlmacen.QAlmacen6Meses.FieldValues['LABORATORIO'];
                 LOTE:=FDMAlmacen.QAlmacen6Meses.FieldValues['LOTE'];
                 ENTRADA:=FDMAlmacen.QAlmacen6Meses.FieldValues['ENTRADA'];
                 FECHA_DE_ENTRADA:=FDMAlmacen.QAlmacen6Meses.FieldValues['FECHA_DE_ENTRADA'];
                 SALIDA:=FDMAlmacen.QAlmacen6Meses.FieldValues['SALIDA'];
               //  FECHA_DE_SALIDA:=FDMAlmacen.QAlmacen6Meses.FieldValues['FECHA_DE_SALIDA'];
                 PRECIO_COSTO_POR_UNIDAD:=FDMAlmacen.QAlmacen6Meses.FieldValues['PRECIO_COSTO_POR_UNIDAD'];
                 PRECIO_VENTA_POR_UNIDAD:=FDMAlmacen.QAlmacen6Meses.FieldValues['PRECIO_VENTA_POR_UNIDAD'];
                 FECHA_DE_VENCIMIENTO:=FDMAlmacen.QAlmacen6Meses.FieldValues['FECHA_DE_VENCIMIENTO'];
                 FECHA_DE_LA_OPERACION:=FDMAlmacen.QAlmacen6Meses.FieldValues['FECHA_DE_LA_OPERACION'];

                  // INSERTANDO EN HISTORIAL
                  with FDMAlmacen.QAgregarProdAlmacenHistorial do
                  begin
                    ParamByName('Pnombre').AsString:=NOMBRE;
                    ParamByName('Pcodigo_producto').AsInteger:= CODIGO_PRODUCTO;
                    ParamByName('Ptipo').AsString:=TIPO1;
                    ParamByName('PLote').AsString:=LOTE;
                    ParamByName('PEntrada').AsInteger:=ENTRADA;
                    ParamByName('PFechadeentrada').AsDate:=FECHA_DE_ENTRADA;
                    ParamByName('PSALIDA').AsInteger:=SALIDA;
                 //   ParamByName('PFECHADESALIDA').AsDate:=FECHA_DE_SALIDA;
                    ParamByName('PFechaVencimiento').AsDate:=FECHA_DE_VENCIMIENTO;       // NO PARA INSUMO
                    ParamByName('PPrecioCostoPorUnidad').AsInteger:=PRECIO_COSTO_POR_UNIDAD;
                    ParamByName('PPrecioVentaPorUnidad').AsInteger:=PRECIO_VENTA_POR_UNIDAD;
                    ParamByName('PPresentacion').AsString:=PRESENTACION;  // NO PARA INSUMO
                    ParamByName('PLaboratorio').AsString:=LABORATORIO;   // NO PARA INSUMO
                    ParamByName('PProveedor').AsString:=PROVEEDOR;
                    ParamByName('PFECHA_DE_LA_OPERACION').AsDate:=FECHA_DE_LA_OPERACION;
                    ParamByName('OPERACION').AsString:=OPERACION;
                    Execute;
                  end;
              end;

              if OPERACION = 'SALIDA' then
              begin
                 // CAPTURANDO LOS DATOS
                 CODIGOE:=FDMAlmacen.QAlmacen6Meses.FieldValues['CODIGO'];
                 CODIGO_PRODUCTO:=FDMAlmacen.QAlmacen6Meses.FieldValues['CODIGO_PRODUCTO'];
                 NOMBRE:=FDMAlmacen.QAlmacen6Meses.FieldValues['NOMBRE'];
                 PROVEEDOR:=FDMAlmacen.QAlmacen6Meses.FieldValues['PROVEEDOR'];
                 PRESENTACION:=FDMAlmacen.QAlmacen6Meses.FieldValues['PRESENTACION'];
                 LABORATORIO:=FDMAlmacen.QAlmacen6Meses.FieldValues['LABORATORIO'];
                 LOTE:=FDMAlmacen.QAlmacen6Meses.FieldValues['LOTE'];
                 ENTRADA:=FDMAlmacen.QAlmacen6Meses.FieldValues['ENTRADA'];
               //  FECHA_DE_ENTRADA:=FDMAlmacen.QAlmacen6Meses.FieldValues['FECHA_DE_ENTRADA'];
                 SALIDA:=FDMAlmacen.QAlmacen6Meses.FieldValues['SALIDA'];
                 FECHA_DE_SALIDA:=FDMAlmacen.QAlmacen6Meses.FieldValues['FECHA_DE_SALIDA'];
                 PRECIO_COSTO_POR_UNIDAD:=FDMAlmacen.QAlmacen6Meses.FieldValues['PRECIO_COSTO_POR_UNIDAD'];
                 PRECIO_VENTA_POR_UNIDAD:=FDMAlmacen.QAlmacen6Meses.FieldValues['PRECIO_VENTA_POR_UNIDAD'];
                 FECHA_DE_VENCIMIENTO:=FDMAlmacen.QAlmacen6Meses.FieldValues['FECHA_DE_VENCIMIENTO'];
                 FECHA_DE_LA_OPERACION:=FDMAlmacen.QAlmacen6Meses.FieldValues['FECHA_DE_LA_OPERACION'];

                  // INSERTANDO EN HISTORIAL
                  with FDMAlmacen.QAgregarProdAlmacenHistorial do
                  begin
                    ParamByName('Pnombre').AsString:=NOMBRE;
                    ParamByName('Pcodigo_producto').AsInteger:= CODIGO_PRODUC;
                    ParamByName('Ptipo').AsString:=TIPO1;
                    ParamByName('PLote').AsString:=LOTE;
                    ParamByName('PEntrada').AsInteger:=ENTRADA;
                  //  ParamByName('PFechadeentrada').AsDate:=FECHA_DE_ENTRADA;
                    ParamByName('PSALIDA').AsInteger:=SALIDA;
                    ParamByName('PFECHADESALIDA').AsDate:=FECHA_DE_SALIDA;
                    ParamByName('PFechaVencimiento').AsDate:=FECHA_DE_VENCIMIENTO;       // NO PARA INSUMO
                    ParamByName('PPrecioCostoPorUnidad').AsInteger:=PRECIO_COSTO_POR_UNIDAD;
                    ParamByName('PPrecioVentaPorUnidad').AsInteger:=PRECIO_VENTA_POR_UNIDAD;
                    ParamByName('PPresentacion').AsString:=PRESENTACION;  // NO PARA INSUMO
                    ParamByName('PLaboratorio').AsString:=LABORATORIO;   // NO PARA INSUMO
                    ParamByName('PProveedor').AsString:=PROVEEDOR;
                    ParamByName('PFECHA_DE_LA_OPERACION').AsDate:=FECHA_DE_LA_OPERACION;
                    ParamByName('OPERACION').AsString:=OPERACION;
                    Execute;
                  end;
              end;

           end;

           if TIPO1 = 'INSUMO' then
           begin
              if OPERACION = 'ENTRADA' then
              begin
                 // CAPTURANDO LOS DATOS
                 CODIGOE:=FDMAlmacen.QAlmacen6Meses.FieldValues['CODIGO'];
                 CODIGO_PRODUCTO:=FDMAlmacen.QAlmacen6Meses.FieldValues['CODIGO_PRODUCTO'];
                 NOMBRE:=FDMAlmacen.QAlmacen6Meses.FieldValues['NOMBRE'];
                 PROVEEDOR:=FDMAlmacen.QAlmacen6Meses.FieldValues['PROVEEDOR'];
                 PRESENTACION:=FDMAlmacen.QAlmacen6Meses.FieldValues['PRESENTACION'];
                 LABORATORIO:=FDMAlmacen.QAlmacen6Meses.FieldValues['LABORATORIO'];
                 LOTE:=FDMAlmacen.QAlmacen6Meses.FieldValues['LOTE'];
                 ENTRADA:=FDMAlmacen.QAlmacen6Meses.FieldValues['ENTRADA'];
                 FECHA_DE_ENTRADA:=FDMAlmacen.QAlmacen6Meses.FieldValues['FECHA_DE_ENTRADA'];
                 SALIDA:=FDMAlmacen.QAlmacen6Meses.FieldValues['SALIDA'];
               //  FECHA_DE_SALIDA:=FDMAlmacen.QAlmacen6Meses.FieldValues['FECHA_DE_SALIDA'];
                 PRECIO_COSTO_POR_UNIDAD:=FDMAlmacen.QAlmacen6Meses.FieldValues['PRECIO_COSTO_POR_UNIDAD'];
                 PRECIO_VENTA_POR_UNIDAD:=FDMAlmacen.QAlmacen6Meses.FieldValues['PRECIO_VENTA_POR_UNIDAD'];
                 FECHA_DE_VENCIMIENTO:=FDMAlmacen.QAlmacen6Meses.FieldValues['FECHA_DE_VENCIMIENTO'];
                 FECHA_DE_LA_OPERACION:=FDMAlmacen.QAlmacen6Meses.FieldValues['FECHA_DE_LA_OPERACION'];

                  // INSERTANDO EN HISTORIAL
                  with FDMAlmacen.QAgregarProdAlmacenHistorial do
                  begin
                    ParamByName('Pnombre').AsString:=NOMBRE;
                    ParamByName('Pcodigo_producto').AsInteger:= CODIGO_PRODUC;
                    ParamByName('Ptipo').AsString:=TIPO1;
                    ParamByName('PLote').AsString:=LOTE;
                    ParamByName('PEntrada').AsInteger:=ENTRADA;
                    ParamByName('PFechadeentrada').AsDate:=FECHA_DE_ENTRADA;
                    ParamByName('PSALIDA').AsInteger:=SALIDA;
                  //  ParamByName('PFECHADESALIDA').AsDate:=FECHA_DE_SALIDA;
                    ParamByName('PFechaVencimiento').AsDate:=FECHA_DE_VENCIMIENTO;       // NO PARA INSUMO
                    ParamByName('PPrecioCostoPorUnidad').AsInteger:=PRECIO_COSTO_POR_UNIDAD;
                    ParamByName('PPrecioVentaPorUnidad').AsInteger:=PRECIO_VENTA_POR_UNIDAD;
                    ParamByName('PPresentacion').AsString:=PRESENTACION;  // NO PARA INSUMO
                    ParamByName('PLaboratorio').AsString:=LABORATORIO;   // NO PARA INSUMO
                    ParamByName('PProveedor').AsString:=PROVEEDOR;
                    ParamByName('PFECHA_DE_LA_OPERACION').AsDate:=FECHA_DE_LA_OPERACION;
                    ParamByName('OPERACION').AsString:=OPERACION;
                    Execute;
                  end;
              end;

              if OPERACION = 'SALIDA' then
              begin
                 // CAPTURANDO LOS DATOS
                 CODIGOE:=FDMAlmacen.QAlmacen6Meses.FieldValues['CODIGO'];
                 CODIGO_PRODUCTO:=FDMAlmacen.QAlmacen6Meses.FieldValues['CODIGO_PRODUCTO'];
                 NOMBRE:=FDMAlmacen.QAlmacen6Meses.FieldValues['NOMBRE'];
                 PROVEEDOR:=FDMAlmacen.QAlmacen6Meses.FieldValues['PROVEEDOR'];
                 PRESENTACION:=FDMAlmacen.QAlmacen6Meses.FieldValues['PRESENTACION'];
                 LABORATORIO:=FDMAlmacen.QAlmacen6Meses.FieldValues['LABORATORIO'];
                 LOTE:=FDMAlmacen.QAlmacen6Meses.FieldValues['LOTE'];
                 ENTRADA:=FDMAlmacen.QAlmacen6Meses.FieldValues['ENTRADA'];
               //  FECHA_DE_ENTRADA:=FDMAlmacen.QAlmacen6Meses.FieldValues['FECHA_DE_ENTRADA'];
                 SALIDA:=FDMAlmacen.QAlmacen6Meses.FieldValues['SALIDA'];
                 FECHA_DE_SALIDA:=FDMAlmacen.QAlmacen6Meses.FieldValues['FECHA_DE_SALIDA'];
                 PRECIO_COSTO_POR_UNIDAD:=FDMAlmacen.QAlmacen6Meses.FieldValues['PRECIO_COSTO_POR_UNIDAD'];
                 PRECIO_VENTA_POR_UNIDAD:=FDMAlmacen.QAlmacen6Meses.FieldValues['PRECIO_VENTA_POR_UNIDAD'];
                 FECHA_DE_VENCIMIENTO:=FDMAlmacen.QAlmacen6Meses.FieldValues['FECHA_DE_VENCIMIENTO'];
                 FECHA_DE_LA_OPERACION:=FDMAlmacen.QAlmacen6Meses.FieldValues['FECHA_DE_LA_OPERACION'];

                  // INSERTANDO EN HISTORIAL
                  with FDMAlmacen.QAgregarProdAlmacenHistorial do
                  begin
                    ParamByName('Pnombre').AsString:=NOMBRE;
                    ParamByName('Pcodigo_producto').AsInteger:= CODIGO_PRODUC;
                    ParamByName('Ptipo').AsString:=TIPO1;
                    ParamByName('PLote').AsString:=LOTE;
                    ParamByName('PEntrada').AsInteger:=ENTRADA;
                  //  ParamByName('PFechadeentrada').AsDate:=FECHA_DE_ENTRADA;
                    ParamByName('PSALIDA').AsInteger:=SALIDA;
                    ParamByName('PFECHADESALIDA').AsDate:=FECHA_DE_SALIDA;
                    ParamByName('PFechaVencimiento').AsDate:=FECHA_DE_VENCIMIENTO;       // NO PARA INSUMO
                    ParamByName('PPrecioCostoPorUnidad').AsInteger:=PRECIO_COSTO_POR_UNIDAD;
                    ParamByName('PPrecioVentaPorUnidad').AsInteger:=PRECIO_VENTA_POR_UNIDAD;
                    ParamByName('PPresentacion').AsString:=PRESENTACION;  // NO PARA INSUMO
                    ParamByName('PLaboratorio').AsString:=LABORATORIO;   // NO PARA INSUMO
                    ParamByName('PProveedor').AsString:=PROVEEDOR;
                    ParamByName('PFECHA_DE_LA_OPERACION').AsDate:=FECHA_DE_LA_OPERACION;
                    ParamByName('OPERACION').AsString:=OPERACION;
                    Execute;
                  end;
              end;
           end;

           // ELIMINANDO EL REGISTRO VIEJO
           FDMAlmacen.QEliminarRegistro.ParamByName('CODIGO').AsInteger:=CODIGOE;
           FDMAlmacen.QEliminarRegistro.Execute;

           FDMAlmacen.QAlmacen6Meses.Next;
         end;

      end
      else
      begin
        cxProgressBar1.Position:=100;
      end;

    except on E: Exception do
    end;
end;

procedure TFMoverHist.MOV_PROD_FARMACIA_HIST;
var i:Integer;
begin
  // MOV PA HISTORIAL LOS ANTERIORES A 6 MESES
    try
      cxProgressBar2.Properties.Min:=0;

      FDMFarmacia.QFarmacia6Meses.ParamByName('FECHA').AsDate:= NOW-180;
      FDMFarmacia.QFarmacia6Meses.Execute;

      cxProgressBar2.Properties.Max:=FDMFarmacia.QFarmacia6Meses.RecordCount;

      if FDMFarmacia.QFarmacia6Meses.RecordCount > 0  then
      begin
         for I := 0 to FDMFarmacia.QFarmacia6Meses.RecordCount -1 do
         begin
           if I = 0 then FDMFarmacia.QFarmacia6Meses.First;

           cxProgressBar2.Position:=cxProgressBar2.Position+1;

           TIPO1:=FDMFarmacia.QFarmacia6Meses.FieldValues['TIPO'];
           OPERACION:=FDMFarmacia.QFarmacia6Meses.FieldValues['OPERACION'];

           if TIPO1 = 'MEDICAMENTO' then
           begin
              if OPERACION = 'ENTRADA' then
              begin
                 // CAPTURANDO LOS DATOS
                 CODIGOE:=FDMFarmacia.QFarmacia6Meses.FieldValues['CODIGO'];
                 CODIGO_MEDICAMENTO:=FDMFarmacia.QFarmacia6Meses.FieldValues['CODIGO_MEDICAMENTO'];
                 NOMBRE:=FDMFarmacia.QFarmacia6Meses.FieldValues['NOMBRE'];
                 PROVEEDOR:=FDMFarmacia.QFarmacia6Meses.FieldValues['PROVEEDOR'];
                 PRESENTACION:=FDMFarmacia.QFarmacia6Meses.FieldValues['PRESENTACION'];
                 LABORATORIO:=FDMFarmacia.QFarmacia6Meses.FieldValues['LABORATORIO'];
                 LOTE:=FDMFarmacia.QFarmacia6Meses.FieldValues['LOTE'];
                 ENTRADA:=FDMFarmacia.QFarmacia6Meses.FieldValues['ENTRADA'];
                 FECHA_DE_ENTRADA:=FDMFarmacia.QFarmacia6Meses.FieldValues['FECHA_DE_ENTRADA'];
                 SALIDA:=FDMFarmacia.QFarmacia6Meses.FieldValues['SALIDA'];
               //  FECHA_DE_SALIDA:=FDMAlmacen.QAlmacen6Meses.FieldValues['FECHA_DE_SALIDA'];
                 PRECIO_COSTO_POR_UNIDAD:=FDMFarmacia.QFarmacia6Meses.FieldValues['PRECIO_COSTO_POR_UNIDAD'];
                 PRECIO_VENTA_POR_UNIDAD:=FDMFarmacia.QFarmacia6Meses.FieldValues['PRECIO_VENTA_POR_UNIDAD'];
                 FECHA_DE_VENCIMIENTO:=FDMFarmacia.QFarmacia6Meses.FieldValues['FECHA_DE_VENCIMIENTO'];
                 FECHA_DE_LA_OPERACION:=FDMFarmacia.QFarmacia6Meses.FieldValues['FECHA_DE_LA_OPERACION'];

                  // INSERTANDO EN HISTORIAL
                  with FDMFarmacia.QAgregarProdFarmaciaHistorial do
                  begin
                    ParamByName('Pnombre').AsString:=NOMBRE;
                    ParamByName('CODIGO_MEDICAMENTO').AsInteger:= CODIGO_MEDICAMENTO;
                    ParamByName('Ptipo').AsString:=TIPO1;
                    ParamByName('PLote').AsString:=LOTE;
                    ParamByName('PEntrada').AsInteger:=ENTRADA;
                    ParamByName('PFechadeentrada').AsDate:=FECHA_DE_ENTRADA;
                    ParamByName('PSALIDA').AsInteger:=SALIDA;
                 //   ParamByName('PFECHADESALIDA').AsDate:=FECHA_DE_SALIDA;
                    ParamByName('PFechaVencimiento').AsDate:=FECHA_DE_VENCIMIENTO;       // NO PARA INSUMO
                    ParamByName('PPrecioCostoPorUnidad').AsInteger:=PRECIO_COSTO_POR_UNIDAD;
                    ParamByName('PPrecioVentaPorUnidad').AsInteger:=PRECIO_VENTA_POR_UNIDAD;
                    ParamByName('PPresentacion').AsString:=PRESENTACION;  // NO PARA INSUMO
                    ParamByName('PLaboratorio').AsString:=LABORATORIO;   // NO PARA INSUMO
                    ParamByName('PProveedor').AsString:=PROVEEDOR;
                    ParamByName('PFECHA_DE_LA_OPERACION').AsDate:=FECHA_DE_LA_OPERACION;
                    ParamByName('OPERACION').AsString:=OPERACION;
                    Execute;
                  end;
              end;

              if OPERACION = 'SALIDA' then
              begin
                  // CAPTURANDO LOS DATOS
                 CODIGOE:=FDMFarmacia.QFarmacia6Meses.FieldValues['CODIGO'];
                 CODIGO_MEDICAMENTO:=FDMFarmacia.QFarmacia6Meses.FieldValues['CODIGO_MEDICAMENTO'];
                 NOMBRE:=FDMFarmacia.QFarmacia6Meses.FieldValues['NOMBRE'];
                 PROVEEDOR:=FDMFarmacia.QFarmacia6Meses.FieldValues['PROVEEDOR'];
                 PRESENTACION:=FDMFarmacia.QFarmacia6Meses.FieldValues['PRESENTACION'];
                 LABORATORIO:=FDMFarmacia.QFarmacia6Meses.FieldValues['LABORATORIO'];
                 LOTE:=FDMFarmacia.QFarmacia6Meses.FieldValues['LOTE'];
                 ENTRADA:=FDMFarmacia.QFarmacia6Meses.FieldValues['ENTRADA'];
                // FECHA_DE_ENTRADA:=FDMFarmacia.QFarmacia6Meses.FieldValues['FECHA_DE_ENTRADA'];
                 SALIDA:=FDMFarmacia.QFarmacia6Meses.FieldValues['SALIDA'];
                 FECHA_DE_SALIDA:=FDMFarmacia.QFarmacia6Meses.FieldValues['FECHA_DE_SALIDA'];
                 PRECIO_COSTO_POR_UNIDAD:=FDMFarmacia.QFarmacia6Meses.FieldValues['PRECIO_COSTO_POR_UNIDAD'];
                 PRECIO_VENTA_POR_UNIDAD:=FDMFarmacia.QFarmacia6Meses.FieldValues['PRECIO_VENTA_POR_UNIDAD'];
                 FECHA_DE_VENCIMIENTO:=FDMFarmacia.QFarmacia6Meses.FieldValues['FECHA_DE_VENCIMIENTO'];
                 FECHA_DE_LA_OPERACION:=FDMFarmacia.QFarmacia6Meses.FieldValues['FECHA_DE_LA_OPERACION'];

                  // INSERTANDO EN HISTORIAL
                  with FDMFarmacia.QAgregarProdFarmaciaHistorial do
                  begin
                    ParamByName('Pnombre').AsString:=NOMBRE;
                    ParamByName('CODIGO_MEDICAMENTO').AsInteger:= CODIGO_MEDICAMENTO;
                    ParamByName('Ptipo').AsString:=TIPO1;
                    ParamByName('PLote').AsString:=LOTE;
                    ParamByName('PEntrada').AsInteger:=ENTRADA;
                 //   ParamByName('PFechadeentrada').AsDate:=FECHA_DE_ENTRADA;
                    ParamByName('PSALIDA').AsInteger:=SALIDA;
                    ParamByName('PFECHADESALIDA').AsDate:=FECHA_DE_SALIDA;
                    ParamByName('PFechaVencimiento').AsDate:=FECHA_DE_VENCIMIENTO;       // NO PARA INSUMO
                    ParamByName('PPrecioCostoPorUnidad').AsInteger:=PRECIO_COSTO_POR_UNIDAD;
                    ParamByName('PPrecioVentaPorUnidad').AsInteger:=PRECIO_VENTA_POR_UNIDAD;
                    ParamByName('PPresentacion').AsString:=PRESENTACION;  // NO PARA INSUMO
                    ParamByName('PLaboratorio').AsString:=LABORATORIO;   // NO PARA INSUMO
                    ParamByName('PProveedor').AsString:=PROVEEDOR;
                    ParamByName('PFECHA_DE_LA_OPERACION').AsDate:=FECHA_DE_LA_OPERACION;
                    ParamByName('OPERACION').AsString:=OPERACION;
                    Execute;
                  end;
              end;

           end;

           // ELIMINANDO EL REGISTRO VIEJO
           FDMFarmacia.QEliminarRegistro.ParamByName('CODIGO').AsInteger:=CODIGOE;
           FDMFarmacia.QEliminarRegistro.Execute;

           FDMFarmacia.QFarmacia6Meses.Next;
         end;

     end
      else
      begin
        cxProgressBar2.Position:=100;
      end;

    except on E: Exception do
    end;
end;

procedure TFMoverHist.MOV_PROD_INSUMOS_HIST;
var i:Integer;
begin
  // MOV PA HISTORIAL LOS ANTERIORES A 6 MESES
    try
      cxProgressBar3.Properties.Min:=0;

      FDMPacientes.QConsulta6Meses.ParamByName('FECHA').AsDate:= NOW-180;
      FDMPacientes.QConsulta6Meses.Execute;

      cxProgressBar3.Properties.Max:=FDMPacientes.QConsulta6Meses.RecordCount;

      if FDMPacientes.QConsulta6Meses.RecordCount > 0  then
      begin
         for I := 0 to FDMPacientes.QConsulta6Meses.RecordCount -1 do
         begin
           if I = 0 then FDMPacientes.QConsulta6Meses.First;

           cxProgressBar3.Position:=cxProgressBar3.Position+1;

           TIPO1:=FDMPacientes.QConsulta6Meses.FieldValues['TIPO'];
           OPERACION:=FDMPacientes.QConsulta6Meses.FieldValues['OPERACION'];

           if TIPO1 = 'INSUMO' then
           begin
              if OPERACION = 'ENTRADA' then
              begin
                 // CAPTURANDO LOS DATOS
                 CODIGOE:=FDMPacientes.QConsulta6Meses.FieldValues['CODIGO'];
                 CODIGO_PRODUCTO:=FDMPacientes.QConsulta6Meses.FieldValues['CODIGO_PRODUCTO'];
                 NOMBRE:=FDMPacientes.QConsulta6Meses.FieldValues['NOMBRE'];
                 PROVEEDOR:=FDMPacientes.QConsulta6Meses.FieldValues['PROVEEDOR'];
                 PRESENTACION:=FDMPacientes.QConsulta6Meses.FieldValues['PRESENTACION'];
                 LABORATORIO:=FDMPacientes.QConsulta6Meses.FieldValues['LABORATORIO'];
                 LOTE:=FDMPacientes.QConsulta6Meses.FieldValues['LOTE'];
                 ENTRADA:=FDMPacientes.QConsulta6Meses.FieldValues['ENTRADA'];
                 FECHA_DE_ENTRADA:=FDMPacientes.QConsulta6Meses.FieldValues['FECHA_DE_ENTRADA'];
                 SALIDA:=FDMPacientes.QConsulta6Meses.FieldValues['SALIDA'];
               //  FECHA_DE_SALIDA:=FDMAlmacen.QAlmacen6Meses.FieldValues['FECHA_DE_SALIDA'];
                 PRECIO_COSTO_POR_UNIDAD:=FDMPacientes.QConsulta6Meses.FieldValues['PRECIO_COSTO_POR_UNIDAD'];
                 PRECIO_VENTA_POR_UNIDAD:=FDMPacientes.QConsulta6Meses.FieldValues['PRECIO_VENTA_POR_UNIDAD'];
                 FECHA_DE_VENCIMIENTO:=FDMPacientes.QConsulta6Meses.FieldValues['FECHA_DE_VENCIMIENTO'];
                 FECHA_DE_LA_OPERACION:=FDMPacientes.QConsulta6Meses.FieldValues['FECHA_DE_LA_OPERACION'];

                  // INSERTANDO EN HISTORIAL
                  with FDMPacientes.QAgregarProdConsultaHistorial do
                  begin
                    ParamByName('Pnombre').AsString:=NOMBRE;
                    ParamByName('CODIGO_PRODUCTO').AsInteger:= CODIGO_PRODUCTO;
                    ParamByName('Ptipo').AsString:=TIPO1;
                    ParamByName('PLote').AsString:=LOTE;
                    ParamByName('PEntrada').AsInteger:=ENTRADA;
                    ParamByName('PFechadeentrada').AsDate:=FECHA_DE_ENTRADA;
                    ParamByName('PSALIDA').AsInteger:=SALIDA;
                 //   ParamByName('PFECHADESALIDA').AsDate:=FECHA_DE_SALIDA;
                    ParamByName('PFechaVencimiento').AsDate:=FECHA_DE_VENCIMIENTO;       // NO PARA INSUMO
                    ParamByName('PPrecioCostoPorUnidad').AsInteger:=PRECIO_COSTO_POR_UNIDAD;
                    ParamByName('PPrecioVentaPorUnidad').AsInteger:=PRECIO_VENTA_POR_UNIDAD;
                    ParamByName('PPresentacion').AsString:=PRESENTACION;  // NO PARA INSUMO
                    ParamByName('PLaboratorio').AsString:=LABORATORIO;   // NO PARA INSUMO
                    ParamByName('PProveedor').AsString:=PROVEEDOR;
                    ParamByName('PFECHA_DE_LA_OPERACION').AsDate:=FECHA_DE_LA_OPERACION;
                    ParamByName('OPERACION').AsString:=OPERACION;
                    Execute;
                  end;
              end;

              if OPERACION = 'SALIDA' then
              begin
                  // CAPTURANDO LOS DATOS
                 CODIGOE:=FDMPacientes.QConsulta6Meses.FieldValues['CODIGO'];
                 CODIGO_PRODUCTO:=FDMPacientes.QConsulta6Meses.FieldValues['CODIGO_PRODUCTO'];
                 CODIGO_PACIENTE:=FDMPacientes.QConsulta6Meses.FieldValues['CODIGO_PACIENTE'];
                 NOMBRE:=FDMPacientes.QConsulta6Meses.FieldValues['NOMBRE'];
                 PROVEEDOR:=FDMPacientes.QConsulta6Meses.FieldValues['PROVEEDOR'];
                 PRESENTACION:=FDMPacientes.QConsulta6Meses.FieldValues['PRESENTACION'];
                 LABORATORIO:=FDMPacientes.QConsulta6Meses.FieldValues['LABORATORIO'];
                 LOTE:=FDMPacientes.QConsulta6Meses.FieldValues['LOTE'];
                 ENTRADA:=FDMPacientes.QConsulta6Meses.FieldValues['ENTRADA'];
                // FECHA_DE_ENTRADA:=FDMFarmacia.QFarmacia6Meses.FieldValues['FECHA_DE_ENTRADA'];
                 SALIDA:=FDMPacientes.QConsulta6Meses.FieldValues['SALIDA'];
                 FECHA_DE_SALIDA:=FDMPacientes.QConsulta6Meses.FieldValues['FECHA_DE_SALIDA'];
                 PRECIO_COSTO_POR_UNIDAD:=FDMPacientes.QConsulta6Meses.FieldValues['PRECIO_COSTO_POR_UNIDAD'];
                 PRECIO_VENTA_POR_UNIDAD:=FDMPacientes.QConsulta6Meses.FieldValues['PRECIO_VENTA_POR_UNIDAD'];
                 FECHA_DE_VENCIMIENTO:=FDMPacientes.QConsulta6Meses.FieldValues['FECHA_DE_VENCIMIENTO'];
                 FECHA_DE_LA_OPERACION:=FDMPacientes.QConsulta6Meses.FieldValues['FECHA_DE_LA_OPERACION'];

                  // INSERTANDO EN HISTORIAL
                  with FDMPacientes.QAgregarProdConsultaHistorial do
                  begin
                    ParamByName('Pnombre').AsString:=NOMBRE;
                    ParamByName('CODIGO_PRODUCTO').AsInteger:= CODIGO_PRODUCTO;
                    ParamByName('CODIGO_PACIENTE').AsInteger:= CODIGO_PACIENTE;
                    ParamByName('Ptipo').AsString:=TIPO1;
                    ParamByName('PLote').AsString:=LOTE;
                    ParamByName('PEntrada').AsInteger:=ENTRADA;
                 //   ParamByName('PFechadeentrada').AsDate:=FECHA_DE_ENTRADA;
                    ParamByName('PSALIDA').AsInteger:=SALIDA;
                    ParamByName('PFECHADESALIDA').AsDate:=FECHA_DE_SALIDA;
                    ParamByName('PFechaVencimiento').AsDate:=FECHA_DE_VENCIMIENTO;       // NO PARA INSUMO
                    ParamByName('PPrecioCostoPorUnidad').AsInteger:=PRECIO_COSTO_POR_UNIDAD;
                    ParamByName('PPrecioVentaPorUnidad').AsInteger:=PRECIO_VENTA_POR_UNIDAD;
                    ParamByName('PPresentacion').AsString:=PRESENTACION;  // NO PARA INSUMO
                    ParamByName('PLaboratorio').AsString:=LABORATORIO;   // NO PARA INSUMO
                    ParamByName('PProveedor').AsString:=PROVEEDOR;
                    ParamByName('PFECHA_DE_LA_OPERACION').AsDate:=FECHA_DE_LA_OPERACION;
                    ParamByName('OPERACION').AsString:=OPERACION;
                    Execute;
                  end;
              end;

           end;

           // ELIMINANDO EL REGISTRO VIEJO
           FDMPacientes.QEliminarRegistro.ParamByName('CODIGO').AsInteger:=CODIGOE;
           FDMPacientes.QEliminarRegistro.Execute;

           FDMPacientes.QConsulta6Meses.Next;
         end;

      end
      else
      begin
        cxProgressBar3.Position:=100;
      end;

    except on E: Exception do
    end;
end;

end.

