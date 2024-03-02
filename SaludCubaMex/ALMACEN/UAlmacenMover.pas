unit UAlmacenMover;

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
  cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxGroupBox, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxLabel, cxTextEdit, cxMaskEdit, cxSpinEdit, Vcl.Menus,
  Vcl.StdCtrls, cxButtons;

type
  TFAlmacenMover = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGroupBox2: TcxGroupBox;
    cxSpinEdit1: TcxSpinEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxGrid1DBTableView1CODIGO_PRODUCTO: TcxGridDBColumn;
    cxGrid1DBTableView1NOMBRE: TcxGridDBColumn;
    cxGrid1DBTableView1FECHA_DE_VENCIMIENTO: TcxGridDBColumn;
    cxLabel6: TcxLabel;
    cxLabel8: TcxLabel;
    cxTextEdit1: TcxTextEdit;
    cxTextEdit2: TcxTextEdit;
    cxTextEdit3: TcxTextEdit;
    cxTextEdit5: TcxTextEdit;
    cxTextEdit6: TcxTextEdit;
    cxTextEdit7: TcxTextEdit;
    cxGrid1DBTableView1PRECIO_VENTA_POR_UNIDAD: TcxGridDBColumn;
    cxGrid1DBTableView1PRECIO_COSTO_POR_UNIDAD: TcxGridDBColumn;
    cxLabel9: TcxLabel;
    cxTextEdit8: TcxTextEdit;
    cxLabel10: TcxLabel;
    cxTextEdit9: TcxTextEdit;
    cxButton1: TcxButton;
    cxGrid1DBTableView1TIPO: TcxGridDBColumn;
    cxLabel11: TcxLabel;
    cxTextEdit10: TcxTextEdit;
    cxGrid1DBTableView1LOTE: TcxGridDBColumn;
    cxGrid1DBTableView1PRESENTACION: TcxGridDBColumn;
    cxGrid1DBTableView1LABORATORIO: TcxGridDBColumn;
    cxGrid1DBTableView1PROVEEDOR: TcxGridDBColumn;
    cxLabel7: TcxLabel;
    cxTextEdit4: TcxTextEdit;
    PopupMenu1: TPopupMenu;
    ELIMINARREGISTRO1: TMenuItem;
    procedure FormActivate(Sender: TObject);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ELIMINARREGISTRO1Click(Sender: TObject);
    procedure cxTextEdit4PropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
    procedure ACT_PROD_ALMACEN_MED ;
    procedure ACT_PROD_ALMACEN_INSU;
    procedure MOV_PROD_FARMACIA;
    procedure MOV_PROD_CONSULTA;
    procedure VERIFICAR_EXISTENCIA ;
  public
    { Public declarations }
  end;

var
  FAlmacenMover: TFAlmacenMover;
  CODIGOE,CODIGO_FARMACIA,CODIGO,CODIGO_ALMACEN,
  //,EXISTENCIA,
//  EXISTENCIA1,
//  EXISTENCIA_EN_VENCIMIENTO_FARM, EXISTENCIA_EN_VENCIMIENTO_ALM,
//  EXISTENCIA_RESTADA,

  CODIGO_PRODUC,ENTRADA:Integer;
  TIPO,NOMBRE,PRESENTACION,LABORATORIO,LOTE,PROVEEDOR:string;
  FECHA_DE_ENTRADA,FECHA_DE_VENCIMIENTO:TDate;


implementation
  uses UDM1,UDMAlmacen,ULogin;
{$R *.dfm}

procedure TFAlmacenMover.VERIFICAR_EXISTENCIA;
var I:Integer;
E,S,T:Integer;

begin
    try
      E:=0;
      S:=0;
      T:=0;

         FDMAlmacen.QBuscarExistencia.ParamByName('NOMBRE').AsString:=NOMBRE;
         FDMAlmacen.QBuscarExistencia.ParamByName('PRESENTACION').AsString:=PRESENTACION;
         FDMAlmacen.QBuscarExistencia.ParamByName('LABORATORIO').AsString:=LABORATORIO;
         FDMAlmacen.QBuscarExistencia.ParamByName('LOTE').AsString:=LOTE;
         FDMAlmacen.QBuscarExistencia.ParamByName('PROVEEDOR').AsString:=PROVEEDOR;
         FDMAlmacen.QBuscarExistencia.ParamByName('FECHA_DE_VENCIMIENTO').AsDate:=FECHA_DE_VENCIMIENTO;
         FDMAlmacen.QBuscarExistencia.Execute;

      if FDMAlmacen.QBuscarExistencia.RecordCount > 0 then
      begin
         for I := 0 to FDMAlmacen.QBuscarExistencia.RecordCount -1 do
         begin
            if I=0 then  FDMAlmacen.QBuscarExistencia.First;

            E:= E + FDMAlmacen.QBuscarExistencia.FieldValues['ENTRADA'];
            S:= S + FDMAlmacen.QBuscarExistencia.FieldValues['SALIDA'];

            FDMAlmacen.QBuscarExistencia.Next;
         end;
         T:= E-S;
         cxTextEdit4.Text:=IntToStr(T);
      end
      else
      begin
        cxTextEdit4.Text:=IntToStr(0);
      end;
    except on E: Exception do
    end;
end;

procedure TFAlmacenMover.ACT_PROD_ALMACEN_INSU;
begin
   try
       // insertando en PRODUCTOS EN ALMACEN
        with FDMAlmacen.QAgregarProdAlmacen do
        begin
          ParamByName('Pnombre').AsString:=cxTextEdit1.Text;
          ParamByName('Pcodigo_producto').AsInteger:= CODIGO_PRODUC;
          ParamByName('Ptipo').AsString:=TIPO;
          ParamByName('PLote').AsString:=cxTextEdit5.Text;
          ParamByName('PEntrada').AsInteger:=0;
         // ParamByName('PFechadeentrada').AsDate:=FECHA_DE_ENTRADA;
          ParamByName('PSALIDA').AsInteger:=StrToInt(cxSpinEdit1.Text);
          ParamByName('PFECHADESALIDA').AsDate:=NOW;
        //  ParamByName('PExistencia').AsInteger:=EXISTENCIA1;
         ParamByName('PFechaVencimiento').AsDate:=StrToDate(cxTextEdit7.Text);       // NO PARA INSUMO
          ParamByName('PPrecioCostoPorUnidad').AsInteger:=StrToInt(cxTextEdit8.Text);
          ParamByName('PPrecioVentaPorUnidad').AsInteger:=StrToInt(cxTextEdit9.Text);
         ParamByName('PPresentacion').AsString:=cxTextEdit2.Text;  // NO PARA INSUMO
         ParamByName('PLaboratorio').AsString:=cxTextEdit3.Text;   // NO PARA INSUMO
          ParamByName('PProveedor').AsString:=cxTextEdit6.Text;
         // ParamByName('PUltimo').AsInteger:=StrToInt('1');
          ParamByName('PFECHA_DE_LA_OPERACION').AsDate:=Now;
          ParamByName('OPERACION').AsString:='SALIDA';
          Execute;
        end;

        cxGrid1DBTableView1.DataController.DataSource.DataSet.Refresh;

//        // ACTUALIZANDO LA TABLA DE FEHCAS DE VENCIMIENTO ALMACEN
//
//       // 1- preguntando si hay un registro con esa fecha Y ESE LOTE
//       FDMAlmacen.QProduct_venc_Almac.ParamByName('PCODIGO').AsInteger:= CODIGO_PRODUC;
//     //  FDMAlmacen.QProduct_venc_Almac.ParamByName('PFECHA').AsDate:= StrToDate(cxTextEdit7.Text);   // NO PARA INSUMO
//     //  FDMAlmacen.QProduct_venc_Almac.ParamByName('PPRESENTACION').AsString:=cxTextEdit2.Text;  // NO PARA INSUMO
//     //  FDMAlmacen.QProduct_venc_Almac.ParamByName('PLABORATORIO').AsString:=cxTextEdit3.Text;    // NO PARA INSUMO
//       FDMAlmacen.QProduct_venc_Almac.ParamByName('PPROVEEDOR').AsString:=cxTextEdit6.Text;
//       FDMAlmacen.QProduct_venc_Almac.ParamByName('PLOTE').AsString:= cxTextEdit5.Text;
//       FDMAlmacen.QProduct_venc_Almac.ParamByName('PPRECIOVENTA').AsInteger:=StrToInt(cxTextEdit9.Text);
//       FDMAlmacen.QProduct_venc_Almac.ParamByName('PPRECIOCOSTO').AsInteger:=StrToInt(cxTextEdit8.Text);
//       FDMAlmacen.QProduct_venc_Almac.ParamByName('PTIPO').AsString:=TIPO;
//       FDMAlmacen.QProduct_venc_Almac.Execute;
//
//       // si existe actualizarlo
//       if FDMAlmacen.QProduct_venc_Almac.RecordCount > 0 then
//       begin
//       //   EXISTENCIA_EN_VENCIMIENTO_ALM:= FDMAlmacen.QProduct_venc_Almac.FieldByName('Existencia').AsInteger;
//
//       //   FDMAlmacen.QUpdateProducVencAlmac.ParamByName('PEXISTENCIA').AsInteger:=EXISTENCIA_EN_VENCIMIENTO_ALM - StrToInt(cxSpinEdit1.Text);
//          FDMAlmacen.QUpdateProducVencAlmac.ParamByName('PCODIGO').AsInteger:=CODIGO_PRODUC;
//        //  FDMAlmacen.QUpdateProducVencAlmac.ParamByName('PFECHA').AsDate:=StrToDate(cxTextEdit7.Text);          // NO PARA INSUMO
//        //  FDMAlmacen.QUpdateProducVencAlmac.ParamByName('PPRESENTACION').AsString:=cxTextEdit2.Text;  // NO PARA INSUMO
//        //  FDMAlmacen.QUpdateProducVencAlmac.ParamByName('PLABORATORIO').AsString:=cxTextEdit3.Text;   // NO PARA INSUMO
//          FDMAlmacen.QUpdateProducVencAlmac.ParamByName('PPROVEEDOR').AsString:=cxTextEdit6.Text;
//          FDMAlmacen.QUpdateProducVencAlmac.ParamByName('PLOTE').AsString:= cxTextEdit5.Text;
//          FDMAlmacen.QUpdateProducVencAlmac.ParamByName('PPRECIOVENTA').AsInteger:=StrToInt(cxTextEdit9.Text);
//          FDMAlmacen.QUpdateProducVencAlmac.ParamByName('PPRECIOCOSTO').AsInteger:=StrToInt(cxTextEdit8.Text);
//          FDMAlmacen.QUpdateProducVencAlmac.ParamByName('PTIPO').AsString:=TIPO;
//          FDMAlmacen.QUpdateProducVencAlmac.Execute;
//
//       end;

   except on E: Exception do
   end;
end;

procedure TFAlmacenMover.ACT_PROD_ALMACEN_MED;
begin
 // insertando en PRODUCTOS EN ALMACEN  la salida
    try
      with FDMAlmacen.QAgregarProdAlmacen do
      begin
        ParamByName('Pnombre').AsString:=cxTextEdit1.Text;
        ParamByName('Pcodigo_producto').AsInteger:= CODIGO_PRODUC;
        ParamByName('Ptipo').AsString:=TIPO;
        ParamByName('PLote').AsString:=cxTextEdit5.Text;
        ParamByName('PEntrada').AsInteger:=0;
      //  ParamByName('PFechadeentrada').AsDate:=FECHA_DE_ENTRADA;
        ParamByName('PSALIDA').AsInteger:=StrToInt(cxSpinEdit1.Text);
        ParamByName('PFECHADESALIDA').AsDate:=NOW;
      //  ParamByName('PExistencia').AsInteger:=EXISTENCIA1;
        ParamByName('PFechaVencimiento').AsDate:=StrToDate(cxTextEdit7.Text);       // NO PARA INSUMO
        ParamByName('PPrecioCostoPorUnidad').AsInteger:=StrToInt(cxTextEdit8.Text);
        ParamByName('PPrecioVentaPorUnidad').AsInteger:=StrToInt(cxTextEdit9.Text);
        ParamByName('PPresentacion').AsString:=cxTextEdit2.Text;  // NO PARA INSUMO
        ParamByName('PLaboratorio').AsString:=cxTextEdit3.Text;   // NO PARA INSUMO
        ParamByName('PProveedor').AsString:=cxTextEdit6.Text;
        ParamByName('OPERACION').AsString:='SALIDA';
        //ParamByName('PUltimo').AsInteger:=StrToInt('1');
        ParamByName('PFECHA_DE_LA_OPERACION').AsDate:=Now;
        Execute;
      end;

//      // ACTUALIZANDO LA TABLA DE FEHCAS DE VENCIMIENTO ALMACEN
//
//     // 1- preguntando si hay un registro con esa fecha Y ESE LOTE
//       FDMAlmacen.QProduct_venc_Almac.ParamByName('PCODIGO').AsInteger:= CODIGO_PRODUC;
//       FDMAlmacen.QProduct_venc_Almac.ParamByName('PFECHA').AsDate:= StrToDate(cxTextEdit7.Text);   // NO PARA INSUMO
//       FDMAlmacen.QProduct_venc_Almac.ParamByName('PPRESENTACION').AsString:=cxTextEdit2.Text;  // NO PARA INSUMO
//       FDMAlmacen.QProduct_venc_Almac.ParamByName('PLABORATORIO').AsString:=cxTextEdit3.Text;    // NO PARA INSUMO
//       FDMAlmacen.QProduct_venc_Almac.ParamByName('PPROVEEDOR').AsString:=cxTextEdit6.Text;
//       FDMAlmacen.QProduct_venc_Almac.ParamByName('PLOTE').AsString:= cxTextEdit5.Text;
//       FDMAlmacen.QProduct_venc_Almac.ParamByName('PPRECIOVENTA').AsInteger:=StrToInt(cxTextEdit9.Text);
//       FDMAlmacen.QProduct_venc_Almac.ParamByName('PPRECIOCOSTO').AsInteger:=StrToInt(cxTextEdit8.Text);
//       FDMAlmacen.QProduct_venc_Almac.ParamByName('PTIPO').AsString:=TIPO;
//       FDMAlmacen.QProduct_venc_Almac.Execute;
//
//     // si existe actualizarlo
//     if FDMAlmacen.QProduct_venc_Almac.RecordCount > 0 then
//     begin
//      // EXISTENCIA_EN_VENCIMIENTO_ALM:= FDMAlmacen.QProduct_venc_Almac.FieldByName('Existencia').AsInteger;
//
//      // FDMAlmacen.QUpdateProducVencAlmac.ParamByName('PEXISTENCIA').AsInteger:=EXISTENCIA_EN_VENCIMIENTO_ALM - StrToInt(cxSpinEdit1.Text);
//        FDMAlmacen.QUpdateProducVencAlmac.ParamByName('PCODIGO').AsInteger:=CODIGO_PRODUC;
//        FDMAlmacen.QUpdateProducVencAlmac.ParamByName('PFECHA').AsDate:=StrToDate(cxTextEdit7.Text);          // NO PARA INSUMO
//        FDMAlmacen.QUpdateProducVencAlmac.ParamByName('PPRESENTACION').AsString:=cxTextEdit2.Text;  // NO PARA INSUMO
//        FDMAlmacen.QUpdateProducVencAlmac.ParamByName('PLABORATORIO').AsString:=cxTextEdit3.Text;   // NO PARA INSUMO
//        FDMAlmacen.QUpdateProducVencAlmac.ParamByName('PPROVEEDOR').AsString:=cxTextEdit6.Text;
//        FDMAlmacen.QUpdateProducVencAlmac.ParamByName('PLOTE').AsString:= cxTextEdit5.Text;
//        FDMAlmacen.QUpdateProducVencAlmac.ParamByName('PPRECIOVENTA').AsInteger:=StrToInt(cxTextEdit9.Text);
//        FDMAlmacen.QUpdateProducVencAlmac.ParamByName('PPRECIOCOSTO').AsInteger:=StrToInt(cxTextEdit8.Text);
//        FDMAlmacen.QUpdateProducVencAlmac.ParamByName('PTIPO').AsString:=TIPO;
//        FDMAlmacen.QUpdateProducVencAlmac.Execute;
//
//     end;

       cxGrid1DBTableView1.DataController.DataSource.DataSet.Refresh;

    except on E: Exception do
    end;

end;

procedure TFAlmacenMover.MOV_PROD_CONSULTA;
begin
    //  INSUMO
                         // AGREGAR LOS OTROS DATOS DE LOS INSUMOS......
   try
      // INSERTAR en la tabla PRODUCTOS EN FARMACIA donde existencia = existencia + cantidad
      with FDMAlmacen.QAgregarProdCONSULTA do
      begin
        ParamByName('NOMBRE').AsString:=cxTextEdit1.Text;
        ParamByName('CODIGO_PRODUCTO').AsInteger:= CODIGO_PRODUC;
        ParamByName('TIPO').AsString:=TIPO;
        ParamByName('LOTE').AsString:=cxTextEdit5.Text;
        ParamByName('PRESENTACION').AsString:=cxTextEdit2.Text;
        ParamByName('LABORATORIO').AsString:=cxTextEdit3.Text;
        ParamByName('FECHA_DE_VENCIMIENTO').AsDate:=StrToDate(cxTextEdit7.Text);
        ParamByName('ENTRADA').AsInteger:=StrToInt(cxSpinEdit1.Text);
        ParamByName('SALIDA').AsInteger:=0;
        ParamByName('FECHA_DE_ENTRADA').AsDate:=Now;
        ParamByName('PRECIO_COSTO_POR_UNIDAD').AsInteger:=StrToInt(cxTextEdit9.Text);
        ParamByName('PRECIO_VENTA_POR_UNIDAD').AsInteger:=StrToInt(cxTextEdit8.Text);
        ParamByName('PROVEEDOR').AsString:=cxTextEdit6.Text;
        ParamByName('FECHA_DE_LA_OPERACION').AsDate:=Now;
        ParamByName('OPERACION').AsString:='ENTRADA';
        Execute;
      end;


      //  INSERTANDO O ACTUALIZANDO LA TABLA DE FEHCAS DE VENCIMIENTO EN CONSULTA
//
     // 1- preguntando si hay un registro QUE COINCIDA TODO
     FDMAlmacen.QProduc_Venc_Cons.ParamByName('PCODIGO').AsInteger:= CODIGO_PRODUC;
     FDMAlmacen.QProduc_Venc_Cons.ParamByName('PPROVEEDOR').AsString:=cxTextEdit6.Text;
     FDMAlmacen.QProduc_Venc_Cons.ParamByName('LOTE').AsString:=cxTextEdit5.Text;
     FDMAlmacen.QProduc_Venc_Cons.ParamByName('PRESENTACION').AsString:=cxTextEdit2.Text;
     FDMAlmacen.QProduc_Venc_Cons.ParamByName('LABORATORIO').AsString:=cxTextEdit3.Text;
     FDMAlmacen.QProduc_Venc_Cons.ParamByName('FECHA_DE_VENCIMIENTO').AsDate:=StrToDate(cxTextEdit7.Text);
     FDMAlmacen.QProduc_Venc_Cons.ParamByName('PPRECIOVENTA').AsInteger:=StrToInt(cxTextEdit9.Text);
     FDMAlmacen.QProduc_Venc_Cons.ParamByName('PPRECIOCOSTO').AsInteger:=StrToInt(cxTextEdit8.Text);
     FDMAlmacen.QProduc_Venc_Cons.ParamByName('PTIPO').AsString:=TIPO;
     FDMAlmacen.QProduc_Venc_Cons.Execute;
//
//     // si existe actualizarlo
     if FDMAlmacen.QProduc_Venc_Cons.RecordCount > 0 then
     begin
//       // EXISTENCIA_EN_VENCIMIENTO_FARM:= FDMAlmacen.QProduc_Venc_Farm.FieldByName('Existencia').AsInteger;
//
//       // FDMAlmacen.QUpdateProducVencFarm.ParamByName('PEXISTENCIA').AsInteger:=EXISTENCIA_EN_VENCIMIENTO_FARM + StrToInt(cxSpinEdit1.Text);
//        FDMAlmacen.QUpdateProducVencFarm.ParamByName('PCODIGO').AsInteger:=CODIGO_PRODUC;
//        FDMAlmacen.QUpdateProducVencFarm.ParamByName('PFECHA').AsDate:=StrToDate(cxTextEdit7.Text);
//        FDMAlmacen.QUpdateProducVencFarm.ParamByName('PPRESENTACION').AsString:=cxTextEdit2.Text;
//        FDMAlmacen.QUpdateProducVencFarm.ParamByName('PLABORATORIO').AsString:=cxTextEdit3.Text;
//        FDMAlmacen.QUpdateProducVencFarm.ParamByName('PPROVEEDOR').AsString:=cxTextEdit6.Text;
//        FDMAlmacen.QUpdateProducVencFarm.ParamByName('PLOTE').AsString:= cxTextEdit5.Text;
//        FDMAlmacen.QUpdateProducVencFarm.ParamByName('PPRECIOVENTA').AsInteger:=StrToInt(cxTextEdit9.Text);
//        FDMAlmacen.QUpdateProducVencFarm.ParamByName('PPRECIOCOSTO').AsInteger:=StrToInt(cxTextEdit8.Text);
//        FDMAlmacen.QUpdateProducVencFarm.ParamByName('PTIPO').AsString:=TIPO;
//        FDMAlmacen.QUpdateProducVencFarm.Execute;

     end
     else   // sino existe insertar nuevo registro
     begin
       FDMAlmacen.QInsertarProducVencCons.ParamByName('PCODIGO').AsInteger:= CODIGO_PRODUC;
       FDMAlmacen.QInsertarProducVencCons.ParamByName('PNOMBRE').AsString:= cxTextEdit1.Text;
       FDMAlmacen.QInsertarProducVencCons.ParamByName('PPROVEEDOR').AsString:=cxTextEdit6.Text;
       FDMAlmacen.QInsertarProducVencCons.ParamByName('LOTE').AsString:=cxTextEdit5.Text;
       FDMAlmacen.QInsertarProducVencCons.ParamByName('PRESENTACION').AsString:=cxTextEdit2.Text;
       FDMAlmacen.QInsertarProducVencCons.ParamByName('LABORATORIO').AsString:=cxTextEdit3.Text;
       FDMAlmacen.QInsertarProducVencCons.ParamByName('FECHA_DE_VENCIMIENTO').AsDate:=StrToDate(cxTextEdit7.Text);
       FDMAlmacen.QInsertarProducVencCons.ParamByName('PPRECIOVENTA').AsInteger:=StrToInt(cxTextEdit9.Text);
       FDMAlmacen.QInsertarProducVencCons.ParamByName('PPRECIOCOSTO').AsInteger:=StrToInt(cxTextEdit8.Text);
       FDMAlmacen.QInsertarProducVencCons.ParamByName('PTIPO').AsString:=TIPO;
       FDMAlmacen.QInsertarProducVencCons.Execute;
     end;

   except on E: Exception do
   end;



end;

procedure TFAlmacenMover.MOV_PROD_FARMACIA;
begin
   // MEDICAMENTO

   try
      // INSERTAR en la tabla PRODUCTOS EN FARMACIA donde existencia = existencia + cantidad
      with FDMAlmacen.QAgregarProdFarmacia do
      begin
        ParamByName('Pnombre').AsString:=cxTextEdit1.Text;
        ParamByName('Pcodigo_medicamento').AsInteger:= CODIGO_PRODUC;
        ParamByName('Ptipo').AsString:=TIPO;
        ParamByName('PLote').AsString:=cxTextEdit5.Text;
        ParamByName('PEntrada').AsInteger:=StrToInt(cxSpinEdit1.Text);
        ParamByName('PSalida').AsInteger:=0;
        ParamByName('PFechadeentrada').AsDate:=Now;
      //  ParamByName('PExistencia').AsInteger:=EXISTENCIA1;
        ParamByName('PFechaVencimiento').AsDate:=StrToDate(cxTextEdit7.Text);
        ParamByName('PPrecioVentaPorUnidad').AsInteger:=StrToInt(cxTextEdit9.Text);
        ParamByName('PPrecioCostoPorUnidad').AsInteger:=StrToInt(cxTextEdit8.Text);
        ParamByName('PPresentacion').AsString:=cxTextEdit2.Text;
        ParamByName('PLaboratorio').AsString:=cxTextEdit3.Text;
        ParamByName('PProveedor').AsString:=cxTextEdit6.Text;
      //  ParamByName('PUltimo').AsInteger:=StrToInt('1');
        ParamByName('PFECHA_DE_LA_OPERACION').AsDate:=Now;
        ParamByName('OPERACION').AsString:='ENTRADA';
        Execute;
      end;

      //  INSERTANDO O ACTUALIZANDO LA TABLA DE FEHCAS DE VENCIMIENTO EN FARMACIA

     // 1- preguntando si hay un registro QUE COINCIDA TODO
     FDMAlmacen.QProduc_Venc_Farm.ParamByName('PCODIGO').AsInteger:= CODIGO_PRODUC;
     FDMAlmacen.QProduc_Venc_Farm.ParamByName('PFECHA').AsDate:= StrToDate(cxTextEdit7.Text);
     FDMAlmacen.QProduc_Venc_Farm.ParamByName('PPRESENTACION').AsString:=cxTextEdit2.Text;
     FDMAlmacen.QProduc_Venc_Farm.ParamByName('PLABORATORIO').AsString:=cxTextEdit3.Text;
     FDMAlmacen.QProduc_Venc_Farm.ParamByName('PPROVEEDOR').AsString:=cxTextEdit6.Text;
     FDMAlmacen.QProduc_Venc_Farm.ParamByName('PLOTE').AsString:= cxTextEdit5.Text;
     FDMAlmacen.QProduc_Venc_Farm.ParamByName('PPRECIOVENTA').AsInteger:=StrToInt(cxTextEdit9.Text);
     FDMAlmacen.QProduc_Venc_Farm.ParamByName('PPRECIOCOSTO').AsInteger:=StrToInt(cxTextEdit8.Text);
     FDMAlmacen.QProduc_Venc_Farm.ParamByName('PTIPO').AsString:=TIPO;
     FDMAlmacen.QProduc_Venc_Farm.Execute;

     // si existe actualizarlo
     if FDMAlmacen.QProduc_Venc_Farm.RecordCount > 0 then
     begin
//       // EXISTENCIA_EN_VENCIMIENTO_FARM:= FDMAlmacen.QProduc_Venc_Farm.FieldByName('Existencia').AsInteger;
//
//       // FDMAlmacen.QUpdateProducVencFarm.ParamByName('PEXISTENCIA').AsInteger:=EXISTENCIA_EN_VENCIMIENTO_FARM + StrToInt(cxSpinEdit1.Text);
//        FDMAlmacen.QUpdateProducVencFarm.ParamByName('PCODIGO').AsInteger:=CODIGO_PRODUC;
//        FDMAlmacen.QUpdateProducVencFarm.ParamByName('PFECHA').AsDate:=StrToDate(cxTextEdit7.Text);
//        FDMAlmacen.QUpdateProducVencFarm.ParamByName('PPRESENTACION').AsString:=cxTextEdit2.Text;
//        FDMAlmacen.QUpdateProducVencFarm.ParamByName('PLABORATORIO').AsString:=cxTextEdit3.Text;
//        FDMAlmacen.QUpdateProducVencFarm.ParamByName('PPROVEEDOR').AsString:=cxTextEdit6.Text;
//        FDMAlmacen.QUpdateProducVencFarm.ParamByName('PLOTE').AsString:= cxTextEdit5.Text;
//        FDMAlmacen.QUpdateProducVencFarm.ParamByName('PPRECIOVENTA').AsInteger:=StrToInt(cxTextEdit9.Text);
//        FDMAlmacen.QUpdateProducVencFarm.ParamByName('PPRECIOCOSTO').AsInteger:=StrToInt(cxTextEdit8.Text);
//        FDMAlmacen.QUpdateProducVencFarm.ParamByName('PTIPO').AsString:=TIPO;
//        FDMAlmacen.QUpdateProducVencFarm.Execute;
//
     end
     else   // sino existe insertar nuevo registro
     begin
       FDMAlmacen.QInsertarProducVencFarm.ParamByName('PCODIGO').AsInteger:= CODIGO_PRODUC;
       FDMAlmacen.QInsertarProducVencFarm.ParamByName('PFECHA_VENCIMIENTO').AsDate:= StrToDate(cxTextEdit7.Text);
       FDMAlmacen.QInsertarProducVencFarm.ParamByName('PPRESENTACION').AsString:=cxTextEdit2.Text;
       FDMAlmacen.QInsertarProducVencFarm.ParamByName('PNOMBRE').AsString:= cxTextEdit1.Text;
       FDMAlmacen.QInsertarProducVencFarm.ParamByName('PLOTE').AsString:= cxTextEdit5.Text;
      // FDMAlmacen.QInsertarProducVencFarm.ParamByName('PEXISTENCIA').AsInteger:= StrToInt(cxSpinEdit1.text);
       FDMAlmacen.QInsertarProducVencFarm.ParamByName('PLABORATORIO').AsString:=cxTextEdit3.Text;
       FDMAlmacen.QInsertarProducVencFarm.ParamByName('PPROVEEDOR').AsString:=cxTextEdit6.Text;
       FDMAlmacen.QInsertarProducVencFarm.ParamByName('PPRECIOVENTA').AsInteger:=StrToInt(cxTextEdit9.Text);
       FDMAlmacen.QInsertarProducVencFarm.ParamByName('PPRECIOCOSTO').AsInteger:=StrToInt(cxTextEdit8.Text);
       FDMAlmacen.QInsertarProducVencFarm.ParamByName('PTIPO').AsString:=TIPO;
       FDMAlmacen.QInsertarProducVencFarm.Execute;
     end;

   except on E: Exception do
   end;

end;


// SACAR PRODUCTO DEL ALMACEN
procedure TFAlmacenMover.cxButton1Click(Sender: TObject);
begin
  // SI LA CANTIDAD A MOVER ES CERO O NULO
  if   (cxSpinEdit1.Text <> '') or (cxSpinEdit1.Text <> '0') then
   begin

        //  SI LA CANTIDAD A MOVER SOBREPASA LA EXISTENCIA
      if StrToInt(cxSpinEdit1.Text) > StrToInt(cxTextEdit4.Text)  then
      begin
         ShowMessage('USTED NO CUENTA CON LA CANTIDAD SOLICITADA');
      end
      else
      begin
        if StrToInt(cxSpinEdit1.Text) > 0 then
        begin

         try
           // SI TIPO ES MEDICAMENTO
           if TIPO = 'MEDICAMENTO' then
           begin
             ACT_PROD_ALMACEN_MED;

             MOV_PROD_FARMACIA;      // LAS DOS TABLAS

             ShowMessage(' MEDICAMENTO MOVIDO PARA FARMACIA CON EXITO.');

           end;

           //  SI TIPO ES INSUMO
           if TIPO = 'INSUMO' then
           begin
             ACT_PROD_ALMACEN_INSU;

             MOV_PROD_CONSULTA;      // LAS DOS TABLAS

             ShowMessage(' INSUMO MOVIDO PARA LAS CONSULTAS CON EXITO.');
           end;

           cxGrid1DBTableView1.DataController.DataSource.DataSet.Refresh;

           cxTextEdit1.Clear;
           cxTextEdit2.Clear;
           cxTextEdit3.Clear;
           cxTextEdit4.Clear;
           cxTextEdit5.Clear;
           cxTextEdit6.Clear;
           cxTextEdit7.Clear;
           cxTextEdit8.Clear;
           cxTextEdit9.Clear;
           cxTextEdit10.Clear;
           cxSpinEdit1.Clear;
           cxSpinEdit1.SetFocus;

         except on E: Exception do
           ShowMessage(' NO SE PUDO MOVER EL PRODUCTO.');
         end;
        end
        else
        begin
          ShowMessage('LA CANTIDAD A MOVER NO PUEDE SER 0.');
        end;
      end;

   end
  else
   begin
     ShowMessage('DEBE LLENAR EL CAMPO CANTIDAD A MOVER');
   end;

end;


procedure TFAlmacenMover.cxGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
   //OBTENIENDO TODOS LOS DATOS
   try
      CODIGOE:= cxGrid1DBTableView1.DataController.DataSet.FieldValues['CODIGO'];
      CODIGO_ALMACEN:= cxGrid1DBTableView1.DataController.DataSet.FieldValues['CODIGO'];
      CODIGO_PRODUC:=cxGrid1DBTableView1.DataController.DataSet.FieldValues['CODIGO_PRODUCTO'];
      TIPO:=cxGrid1DBTableView1.DataController.DataSet.FieldValues['TIPO'];
      NOMBRE:=cxGrid1DBTableView1.DataController.DataSet.FieldValues['NOMBRE'];
      PRESENTACION:=cxGrid1DBTableView1.DataController.DataSet.FieldValues['PRESENTACION'];
      LABORATORIO:=cxGrid1DBTableView1.DataController.DataSet.FieldValues['LABORATORIO'];
      LOTE:=cxGrid1DBTableView1.DataController.DataSet.FieldValues['LOTE'];
      PROVEEDOR:=cxGrid1DBTableView1.DataController.DataSet.FieldValues['PROVEEDOR'];
      FECHA_DE_VENCIMIENTO:=cxGrid1DBTableView1.DataController.DataSet.FieldValues['FECHA_DE_VENCIMIENTO'];


      cxTextEdit1.Text:=cxGrid1DBTableView1.DataController.DataSet.FieldValues['NOMBRE'];
      cxTextEdit5.Text:=cxGrid1DBTableView1.DataController.DataSet.FieldValues['LOTE'];
      cxTextEdit2.Text:=cxGrid1DBTableView1.DataController.DataSet.FieldValues['PRESENTACION'];
      cxTextEdit3.Text:=cxGrid1DBTableView1.DataController.DataSet.FieldValues['LABORATORIO'];
      cxTextEdit6.Text:=cxGrid1DBTableView1.DataController.DataSet.FieldValues['PROVEEDOR'];
      cxTextEdit7.Text:=cxGrid1DBTableView1.DataController.DataSet.FieldValues['FECHA_DE_VENCIMIENTO'];
      cxTextEdit8.Text:=cxGrid1DBTableView1.DataController.DataSet.FieldValues['PRECIO_COSTO_POR_UNIDAD'];
      cxTextEdit9.Text:=cxGrid1DBTableView1.DataController.DataSet.FieldValues['PRECIO_VENTA_POR_UNIDAD'];
      cxTextEdit10.Text:=cxGrid1DBTableView1.DataController.DataSet.FieldValues['TIPO'];

      VERIFICAR_EXISTENCIA;

   except

   end;

end;

procedure TFAlmacenMover.cxTextEdit4PropertiesEditValueChanged(Sender: TObject);
begin
    if (cxTextEdit4.Text <> '') OR (cxTextEdit4.Text <> '')then
      begin
        if (StrToInt(cxTextEdit4.Text) > 0) then
        begin
          cxTextEdit4.Style.Color:=cLGreen;
          cxTextEdit4.StyleDisabled.Color:=cLGreen;
         // cxTextEdit3.StyleFocused.Color:=cLGreen;
          cxTextEdit4.StyleHot.Color:=cLGreen;
        end
        else
        begin
          cxTextEdit4.Style.Color:=clWebRed;
          cxTextEdit4.StyleDisabled.Color:=clWebRed;
         // cxTextEdit3.StyleFocused.Color:=clWebRed;
          cxTextEdit4.StyleHot.Color:=clWebRed;
        end;
      end
    else
    begin
        cxTextEdit4.Style.Color:=$0061514E;
        cxTextEdit4.StyleDisabled.Color:=$0061514E;
       // cxTextEdit3.StyleFocused.Color:=cLGreen;
        cxTextEdit4.StyleHot.Color:=$0061514E;
    end;
end;

// ELIMINAR
procedure TFAlmacenMover.ELIMINARREGISTRO1Click(Sender: TObject);
begin
  if (FLogin.CARGO = 'DIRECTOR MEDICO')  or (FLogin.CARGO = 'DIRECTOR ADMINISTRATIVO') then
  begin
    try
       FDMAlmacen.QEliminarRegistroF.ParamByName('CODIGO').AsInteger:=CODIGOE;
       FDMAlmacen.QEliminarRegistro.Execute;
       cxGrid1DBTableView1.DataController.DataSource.DataSet.Refresh;

       ShowMessage('PRODUCTO ELIMINADO CON EXITO');
    except on E: Exception do
        ShowMessage('NO SE PUDO ELIMINAR EL PRODUCTO');
    end;
  end;


end;


procedure TFAlmacenMover.FormActivate(Sender: TObject);
begin
  try
    cxGrid1DBTableView1.DataController.DataSource.DataSet.Open;
  except on E: Exception do
  end;
end;

procedure TFAlmacenMover.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    try
      cxTextEdit1.Clear;
      cxTextEdit2.Clear;
      cxTextEdit3.Clear;
      cxTextEdit4.Clear;
      cxTextEdit5.Clear;
      cxTextEdit6.Clear;
      cxTextEdit7.Clear;
      cxTextEdit8.Clear;
      cxTextEdit9.Clear;
      cxTextEdit10.Clear;
      cxSpinEdit1.Clear;
      cxSpinEdit1.SetFocus;

      cxGrid1DBTableView1.DataController.DataSource.DataSet.Close;

    except on E: Exception do
    end;

    
end;


end.
