unit UAlmacenAgregar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxContainer,
  cxGroupBox, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, Vcl.ComCtrls, dxCore, cxDateUtils,
  cxDropDownEdit, cxCalendar, cxMaskEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxTextEdit, cxLabel, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, cxRadioGroup, cxGridCustomPopupMenu,
  cxGridPopupMenu;

type
  TFAlmacenAgregar = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cxMaskEdit1: TcxMaskEdit;
    cxTextEdit1: TcxTextEdit;
    cxDateEdit1: TcxDateEdit;
    cxMaskEdit3: TcxMaskEdit;
    cxMaskEdit5: TcxMaskEdit;
    cxLookupComboBox1: TcxLookupComboBox;
    cxRadioGroup1: TcxRadioGroup;
    cxRadioButton1: TcxRadioButton;
    cxRadioButton3: TcxRadioButton;
    cxLookupComboBox2: TcxLookupComboBox;
    cxLookupComboBox3: TcxLookupComboBox;
    cxLookupComboBox4: TcxLookupComboBox;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxLabel3: TcxLabel;
    cxLabel1: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel4: TcxLabel;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxLookupComboBox1Click(Sender: TObject);
    procedure cxRadioButton1Click(Sender: TObject);
    procedure cxRadioButton3Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
    { Private declarations }
    procedure ACT_PROD_ALMACEN_MED;
    procedure ACT_PROD_ALMACEN_INSU;
  public
    { Public declarations }
  end;

var
  FAlmacenAgregar: TFAlmacenAgregar;
  CODIGO_PRODUC: Integer;
  TIPO: string;
  CODIGO, CODIGO2, CODIGOE, Existencia, EXISTENCIA1,
    EXISTENCIA_EN_VENCIMIENTO: Integer;

  // CODIGO1:Integer;
  CODIGO_PRODUCTO: Integer;
  NOMBRE: string;
  TIPO1: string;
  PROVEEDOR: string;
  PRESENTACION: string;
  LABORATORIO: string;
  LOTE: string;
  ENTRADA: Integer;
  FECHA_DE_ENTRADA: TDate;
  SALIDA: Integer;
  FECHA_DE_SALIDA: TDate;
  PRECIO_COSTO_POR_UNIDAD: Integer;
  PRECIO_VENTA_POR_UNIDAD: Integer;
  FECHA_DE_VENCIMIENTO: TDate;
  FECHA_DE_LA_OPERACION: TDate;
  OPERACION: string;

implementation

uses UDMCodificadores, UDMAlmacen;
{$R *.dfm}

procedure TFAlmacenAgregar.ACT_PROD_ALMACEN_INSU;
begin
  try
    // insertando en la tabla donde existencia = existencia + cantidad
    with FDMAlmacen.QAgregarProdAlmacen do
    begin
      ParamByName('Pnombre').AsString := cxLookupComboBox1.Text;
      ParamByName('Pcodigo_producto').AsInteger := CODIGO_PRODUC;
      ParamByName('Ptipo').AsString := TIPO;
      ParamByName('PLote').AsString := cxTextEdit1.Text;
      ParamByName('PEntrada').AsInteger := StrToInt(cxMaskEdit1.Text);
      ParamByName('PFechadeentrada').AsDate := Now;
      ParamByName('PSALIDA').AsInteger := 0;
      // ParamByName('PExistencia').AsInteger:=EXISTENCIA1;
      ParamByName('PFechaVencimiento').AsDate := Now;
      ParamByName('PPrecioCostoPorUnidad').AsInteger :=
        StrToInt(cxMaskEdit3.Text);
      ParamByName('PPrecioVentaPorUnidad').AsInteger :=
        StrToInt(cxMaskEdit5.Text);
      ParamByName('PPresentacion').AsString := cxLookupComboBox2.Text;
      ParamByName('PLaboratorio').AsString := cxLookupComboBox3.Text;
      ParamByName('PProveedor').AsString := cxLookupComboBox4.Text;
      // ParamByName('PUltimo').AsInteger:=StrToInt('1');
      ParamByName('PFECHA_DE_LA_OPERACION').AsDate := Now;
      ParamByName('OPERACION').AsString := 'ENTRADA';
      Execute;
    end;


    // ACTUALIZANDO LA TABLA DE FEHCAS DE VENCIMIENTO ALMACEN

    // 1- preguntando si hay un registro con esa fecha Y ESE LOTE
    FDMAlmacen.QProduct_venc_Almac.ParamByName('PCODIGO').AsInteger :=
      CODIGO_PRODUC;
    FDMAlmacen.QProduct_venc_Almac.ParamByName('PFECHA').AsDate := Now;
    // NO PARA INSUMO
    FDMAlmacen.QProduct_venc_Almac.ParamByName('PPRESENTACION').AsString :=
      cxLookupComboBox2.Text; // NO PARA INSUMO
    FDMAlmacen.QProduct_venc_Almac.ParamByName('PLABORATORIO').AsString :=
      cxLookupComboBox3.Text; // NO PARA INSUMO
    FDMAlmacen.QProduct_venc_Almac.ParamByName('PPROVEEDOR').AsString :=
      cxLookupComboBox4.Text;
    FDMAlmacen.QProduct_venc_Almac.ParamByName('PLOTE').AsString :=
      cxTextEdit1.Text;
    FDMAlmacen.QProduct_venc_Almac.ParamByName('PPRECIOVENTA').AsInteger :=
      StrToInt(cxMaskEdit5.Text);
    FDMAlmacen.QProduct_venc_Almac.ParamByName('PPRECIOCOSTO').AsInteger :=
      StrToInt(cxMaskEdit3.Text);
    FDMAlmacen.QProduct_venc_Almac.ParamByName('PTIPO').AsString := TIPO;
    FDMAlmacen.QProduct_venc_Almac.Execute;

    // si existe actualizarlo
    if FDMAlmacen.QProduct_venc_Almac.RecordCount > 0 then
    begin
      EXISTENCIA_EN_VENCIMIENTO := FDMAlmacen.QProduct_venc_Almac.FieldByName
        ('Existencia').AsInteger;

      /// /        FDMAlmacen.QUpdateProducVencAlmac.ParamByName('PEXISTENCIA').AsInteger:=EXISTENCIA_EN_VENCIMIENTO + StrToInt(cxMaskEdit1.Text);
      // FDMAlmacen.QUpdateProducVencAlmac.ParamByName('PCODIGO').AsInteger:=CODIGO_PRODUC;
      /// /        FDMAlmacen.QUpdateProducVencAlmac.ParamByName('PFECHA').AsDate:=NOW;         // NO PARA INSUMO
      // FDMAlmacen.QUpdateProducVencAlmac.ParamByName('PPRESENTACION').AsString:=cxLookupComboBox2.Text;  // NO PARA INSUMO
      // FDMAlmacen.QUpdateProducVencAlmac.ParamByName('PLABORATORIO').AsString:=cxLookupComboBox3.Text;   // NO PARA INSUMO
      // FDMAlmacen.QUpdateProducVencAlmac.ParamByName('PPROVEEDOR').AsString:=cxLookupComboBox4.Text;
      // FDMAlmacen.QUpdateProducVencAlmac.ParamByName('PLOTE').AsString:= cxTextEdit1.Text;
      // FDMAlmacen.QUpdateProducVencAlmac.ParamByName('PPRECIOVENTA').AsInteger:=StrToInt(cxMaskEdit5.Text);
      // FDMAlmacen.QUpdateProducVencAlmac.ParamByName('PPRECIOCOSTO').AsInteger:=StrToInt(cxMaskEdit3.Text);
      // FDMAlmacen.QUpdateProducVencAlmac.ParamByName('PTIPO').AsString:=TIPO;
      // FDMAlmacen.QUpdateProducVencAlmac.Execute;

    end
    else // sino existe insertar nuevo registro
    begin

      FDMAlmacen.QInsertarProducVencAlmac.ParamByName('PCODIGO').AsInteger :=
        CODIGO_PRODUC;
      FDMAlmacen.QInsertarProducVencAlmac.ParamByName('PNOMBRE').AsString :=
        cxLookupComboBox1.Text;
      FDMAlmacen.QInsertarProducVencAlmac.ParamByName('PLOTE').AsString :=
        cxTextEdit1.Text;
      // FDMAlmacen.QInsertarProducVencAlmac.ParamByName('PEXISTENCIA').AsInteger:= StrToInt(cxMaskEdit1.text);
      FDMAlmacen.QInsertarProducVencAlmac.ParamByName('PFECHA_VENCIMIENTO')
        .AsDate := Now; // NO PARA INSUMO
      FDMAlmacen.QInsertarProducVencAlmac.ParamByName('PPRESENTACION').AsString
        := cxLookupComboBox2.Text; // NO PARA INSUMO
      FDMAlmacen.QInsertarProducVencAlmac.ParamByName('PLABORATORIO').AsString
        := cxLookupComboBox3.Text; // NO PARA INSUMO
      FDMAlmacen.QInsertarProducVencAlmac.ParamByName('PPROVEEDOR').AsString :=
        cxLookupComboBox4.Text;
      FDMAlmacen.QInsertarProducVencAlmac.ParamByName('PPRECIOVENTA').AsInteger
        := StrToInt(cxMaskEdit5.Text);
      FDMAlmacen.QInsertarProducVencAlmac.ParamByName('PPRECIOCOSTO').AsInteger
        := StrToInt(cxMaskEdit3.Text);
      FDMAlmacen.QInsertarProducVencAlmac.ParamByName('PTIPO').AsString := TIPO;
      FDMAlmacen.QInsertarProducVencAlmac.Execute;
    end;


    // EXISTENCIA_EN_VENCIMIENTO:=0;
    // Existencia:=0;
    // EXISTENCIA1:=0;

    cxLookupComboBox1.Clear;
    cxLookupComboBox2.Clear;
    cxLookupComboBox3.Clear;
    cxLookupComboBox4.Clear;
    cxMaskEdit1.Clear;
    cxDateEdit1.Date;
    cxMaskEdit3.Clear;
    cxMaskEdit5.Clear;
    cxDateEdit1.Clear;
    cxTextEdit1.Clear;
    cxLookupComboBox1.SetFocus;

  except
    on E: Exception do
  end;

end;

procedure TFAlmacenAgregar.ACT_PROD_ALMACEN_MED;
begin
  try
    // insertando en PRODUCTOS EN ALMACEN
    with FDMAlmacen.QAgregarProdAlmacen do
    begin
      ParamByName('Pnombre').AsString := cxLookupComboBox1.Text;
      ParamByName('Pcodigo_producto').AsInteger := CODIGO_PRODUC;
      ParamByName('Ptipo').AsString := TIPO;
      ParamByName('PLote').AsString := cxTextEdit1.Text;
      ParamByName('PEntrada').AsInteger := StrToInt(cxMaskEdit1.Text);
      ParamByName('PSALIDA').AsInteger := 0;
      ParamByName('PFechadeentrada').AsDate := Now;
      // ParamByName('PExistencia').AsInteger:=EXISTENCIA1;
      ParamByName('PFechaVencimiento').AsDate := cxDateEdit1.Date;
      // NO PARA INSUMO
      ParamByName('PPrecioCostoPorUnidad').AsInteger :=
        StrToInt(cxMaskEdit3.Text);
      ParamByName('PPrecioVentaPorUnidad').AsInteger :=
        StrToInt(cxMaskEdit5.Text);
      ParamByName('PPresentacion').AsString := cxLookupComboBox2.Text;
      // NO PARA INSUMO
      ParamByName('PLaboratorio').AsString := cxLookupComboBox3.Text;
      // NO PARA INSUMO
      ParamByName('PProveedor').AsString := cxLookupComboBox4.Text;
      // ParamByName('PUltimo').AsInteger:=StrToInt('1');
      ParamByName('PFECHA_DE_LA_OPERACION').AsDate := Now;
      ParamByName('OPERACION').AsString := 'ENTRADA';
      Execute;
    end;

    // ACTUALIZANDO LA TABLA DE FEHCAS DE VENCIMIENTO ALMACEN

    // 1- preguntando si hay un registro con esa fecha Y ESE LOTE
    FDMAlmacen.QProduct_venc_Almac.ParamByName('PCODIGO').AsInteger :=
      CODIGO_PRODUC;
    FDMAlmacen.QProduct_venc_Almac.ParamByName('PFECHA').AsDate :=
      cxDateEdit1.Date; // NO PARA INSUMO
    FDMAlmacen.QProduct_venc_Almac.ParamByName('PPRESENTACION').AsString :=
      cxLookupComboBox2.Text; // NO PARA INSUMO
    FDMAlmacen.QProduct_venc_Almac.ParamByName('PLABORATORIO').AsString :=
      cxLookupComboBox3.Text; // NO PARA INSUMO
    FDMAlmacen.QProduct_venc_Almac.ParamByName('PPROVEEDOR').AsString :=
      cxLookupComboBox4.Text;
    FDMAlmacen.QProduct_venc_Almac.ParamByName('PLOTE').AsString :=
      cxTextEdit1.Text;
    FDMAlmacen.QProduct_venc_Almac.ParamByName('PPRECIOVENTA').AsInteger :=
      StrToInt(cxMaskEdit5.Text);
    FDMAlmacen.QProduct_venc_Almac.ParamByName('PPRECIOCOSTO').AsInteger :=
      StrToInt(cxMaskEdit3.Text);
    FDMAlmacen.QProduct_venc_Almac.ParamByName('PTIPO').AsString := TIPO;
    FDMAlmacen.QProduct_venc_Almac.Execute;

    // si existe actualizarlo
    if FDMAlmacen.QProduct_venc_Almac.RecordCount > 0 then
    begin
      // EXISTENCIA_EN_VENCIMIENTO:= FDMAlmacen.QProduct_venc_Almac.FieldByName('Existencia').AsInteger;

      /// /          FDMAlmacen.QUpdateProducVencAlmac.ParamByName('PEXISTENCIA').AsInteger:=EXISTENCIA_EN_VENCIMIENTO + StrToInt(cxMaskEdit1.Text);
      // FDMAlmacen.QUpdateProducVencAlmac.ParamByName('PCODIGO').AsInteger:=CODIGO_PRODUC;
      // FDMAlmacen.QUpdateProducVencAlmac.ParamByName('PFECHA').AsDate:=cxDateEdit1.Date;         // NO PARA INSUMO
      // FDMAlmacen.QUpdateProducVencAlmac.ParamByName('PPRESENTACION').AsString:=cxLookupComboBox2.Text;  // NO PARA INSUMO
      // FDMAlmacen.QUpdateProducVencAlmac.ParamByName('PLABORATORIO').AsString:=cxLookupComboBox3.Text;   // NO PARA INSUMO
      // FDMAlmacen.QUpdateProducVencAlmac.ParamByName('PPROVEEDOR').AsString:=cxLookupComboBox4.Text;
      // FDMAlmacen.QUpdateProducVencAlmac.ParamByName('PLOTE').AsString:= cxTextEdit1.Text;
      // FDMAlmacen.QUpdateProducVencAlmac.ParamByName('PPRECIOVENTA').AsInteger:=StrToInt(cxMaskEdit5.Text);
      // FDMAlmacen.QUpdateProducVencAlmac.ParamByName('PPRECIOCOSTO').AsInteger:=StrToInt(cxMaskEdit3.Text);
      // FDMAlmacen.QUpdateProducVencAlmac.ParamByName('PTIPO').AsString:=TIPO;
      // FDMAlmacen.QUpdateProducVencAlmac.Execute;

    end
    else // sino existe insertar nuevo registro
    begin
      // FDMAlmacen.QInsertarProducVencAlmac.ParamByName('PEXISTENCIA').AsInteger:= StrToInt(cxMaskEdit1.text);
      FDMAlmacen.QInsertarProducVencAlmac.ParamByName('PCODIGO').AsInteger :=
        CODIGO_PRODUC;
      FDMAlmacen.QInsertarProducVencAlmac.ParamByName('PNOMBRE').AsString :=
        cxLookupComboBox1.Text;
      FDMAlmacen.QInsertarProducVencAlmac.ParamByName('PLOTE').AsString :=
        cxTextEdit1.Text;
      FDMAlmacen.QInsertarProducVencAlmac.ParamByName('PFECHA_VENCIMIENTO')
        .AsDate := cxDateEdit1.Date; // NO PARA INSUMO
      FDMAlmacen.QInsertarProducVencAlmac.ParamByName('PPRESENTACION').AsString
        := cxLookupComboBox2.Text; // NO PARA INSUMO
      FDMAlmacen.QInsertarProducVencAlmac.ParamByName('PLABORATORIO').AsString
        := cxLookupComboBox3.Text; // NO PARA INSUMO
      FDMAlmacen.QInsertarProducVencAlmac.ParamByName('PPROVEEDOR').AsString :=
        cxLookupComboBox4.Text;
      FDMAlmacen.QInsertarProducVencAlmac.ParamByName('PPRECIOVENTA').AsInteger
        := StrToInt(cxMaskEdit5.Text);
      FDMAlmacen.QInsertarProducVencAlmac.ParamByName('PPRECIOCOSTO').AsInteger
        := StrToInt(cxMaskEdit3.Text);
      FDMAlmacen.QInsertarProducVencAlmac.ParamByName('PTIPO').AsString := TIPO;
      FDMAlmacen.QInsertarProducVencAlmac.Execute;
    end;



    // EXISTENCIA_EN_VENCIMIENTO:=0;
    // Existencia:=0;
    // EXISTENCIA1:=0;

    cxLookupComboBox1.Clear;
    cxLookupComboBox2.Clear;
    cxLookupComboBox3.Clear;
    cxLookupComboBox4.Clear;
    cxMaskEdit1.Clear;
    cxDateEdit1.Date;
    cxMaskEdit3.Clear;
    cxMaskEdit5.Clear;
    cxDateEdit1.Clear;
    cxTextEdit1.Clear;
    cxLookupComboBox1.SetFocus;

  except
    on E: Exception do
  end;

end;

// AGREGAR PRODUCTO
procedure TFAlmacenAgregar.cxButton1Click(Sender: TObject);
begin

  if StrToInt(cxMaskEdit5.Text) <= StrToInt(cxMaskEdit3.Text) then
  begin
    ShowMessage('EL PRECIO DE VENTA NO PUEDE SER MENOR QUE EL DE COSTO');
  end
  else
  begin
    // INSERTANDO EL NUEVO PRODUCTO
    try
      // SI ES UN MEDICAMENTO
      if cxRadioButton1.Checked then
      begin
        if (cxLookupComboBox1.Text <> '') and (cxLookupComboBox2.Text <> '') and
          (cxLookupComboBox3.Text <> '') and (cxLookupComboBox4.Text <> '') and
          (cxMaskEdit1.Text <> '') and (cxDateEdit1.Text <> '') and
          (cxMaskEdit3.Text <> '') and (cxTextEdit1.Text <> '') and
          (cxMaskEdit5.Text <> '') then
        begin
          ACT_PROD_ALMACEN_MED;
          ShowMessage('EL MEDICAMENTO SE HA AGREGADO CON EXITO.');
        end
        else
        begin
          ShowMessage('DEBE LLENAR TODOS LOS CAMPOS.');
        end;
      end;

      // SI ES UN INSUMO
      if cxRadioButton3.Checked then
      begin
        if (cxLookupComboBox1.Text <> '') and (cxLookupComboBox4.Text <> '') and
          (cxMaskEdit1.Text <> '') and (cxMaskEdit3.Text <> '') and
          (cxTextEdit1.Text <> '') and (cxMaskEdit5.Text <> '') then
        begin
          ACT_PROD_ALMACEN_INSU;
          ShowMessage('EL INSUMO SE HA AGREGADO CON EXITO.');
        end
        else
        begin
          ShowMessage('DEBE LLENAR TODOS LOS CAMPOS.');
        end;
      end;
    except
      on E: Exception do
        ShowMessage('NO SE PUDO AGREGAR EL INSUMO.');
    end;
  end;

end;

// CANCELAR
procedure TFAlmacenAgregar.cxButton2Click(Sender: TObject);
begin
  try
    cxLookupComboBox1.Clear;
    cxLookupComboBox2.Clear;
    cxLookupComboBox3.Clear;
    cxLookupComboBox4.Clear;
    cxMaskEdit1.Clear;
    // cxDateEdit1.Date;
    cxMaskEdit3.Clear;
    cxMaskEdit5.Clear;
    cxDateEdit1.Clear;
    cxTextEdit1.Clear;
    cxLookupComboBox1.SetFocus;
  except
    on E: Exception do
  end;
end;

// SELECCIONANDO EL PRODUCTO
procedure TFAlmacenAgregar.cxLookupComboBox1Click(Sender: TObject);
VAR
  NOM: string;
begin
  try
    if cxRadioButton1.Checked = True then // SI ES MEDICAMENTO
    begin
      // BUSCANDO EL CODIGO DEL MEDICAMENTO
      NOM := cxLookupComboBox1.Text;
      FDMAlmacen.QCODIGO_MED.ParamByName('PNOMBRE').AsString := NOM;
      FDMAlmacen.QCODIGO_MED.Execute;
      CODIGO_PRODUC := FDMAlmacen.QCODIGO_MED.FieldByName('CODIGO').AsInteger;

      // // BUSCANDO EL TIPO DE MEDICAMENTO (TABLA TIPO_PROD)
      // FDMAlmacen.QTIPO.ParamByName('PNOMBRE').AsString:=NOM;
      // FDMAlmacen.QTIPO.Execute;
      // TIPO:= FDMAlmacen.QTIPO.FieldByName('TIPO').AsString;
    end;

    if cxRadioButton3.Checked = True then // SI ES INSUMO
    begin
      // BUSCANDO EL CODIGO DEL INSUMO
      NOM := cxLookupComboBox1.Text;
      FDMAlmacen.QCODIGO_INSU.ParamByName('PNOMBRE').AsString := NOM;
      FDMAlmacen.QCODIGO_INSU.Execute;
      CODIGO_PRODUC := FDMAlmacen.QCODIGO_INSU.FieldByName('CODIGO').AsInteger;

      // // BUSCANDO EL TIPO DE INSUMO (TABLA TIPO_PROD)
      // FDMAlmacen.QTIPO.ParamByName('PNOMBRE').AsString:=NOM;
      // FDMAlmacen.QTIPO.Execute;
      // TIPO:= FDMAlmacen.QTIPO.FieldByName('TIPO').AsString;
    end;
  except
    on E: Exception do
  end;

end;

// RADIO MEDICAMENTOS
procedure TFAlmacenAgregar.cxRadioButton1Click(Sender: TObject);
begin
  try
    cxLabel1.Caption := 'SELECCIONE UN MEDICAMENTO';
    TIPO := 'MEDICAMENTO';

    cxLookupComboBox1.Properties.ListSource := FDMCodificadores.DSMedicamentos;
    cxLookupComboBox1.Properties.ListFieldNames := 'NOMBRE';
    cxLookupComboBox1.Properties.KeyFieldNames := 'CODIGO';

    cxLookupComboBox1.Properties.DataController.DataSet.Active := True;
    cxLookupComboBox1.Clear;

    // HABILITAR ENTRADAS
    cxLookupComboBox2.Enabled := True;
    cxLookupComboBox3.Enabled := True;
    cxDateEdit1.Enabled := True;
  except
    on E: Exception do
  end;

end;

// RADIO INSUMOS
procedure TFAlmacenAgregar.cxRadioButton3Click(Sender: TObject);
begin
  try
    cxLabel1.Caption := 'SELECCIONE UN INSUMO';
    TIPO := 'INSUMO';

    cxLookupComboBox1.Properties.ListSource := FDMCodificadores.DSInsumos;
    cxLookupComboBox1.Properties.ListFieldNames := 'NOMBRE';
    cxLookupComboBox1.Properties.KeyFieldNames := 'CODIGO';

    cxLookupComboBox1.Properties.DataController.DataSet.Active := True;
    cxLookupComboBox1.Clear;

    // DESABILITAR ENTRADAS
    // cxLookupComboBox2.Enabled:=False;
    // cxLookupComboBox3.Enabled:=False;
    // cxDateEdit1.Enabled:=False;
  except
    on E: Exception do
  end;

end;

// ONACTIVATE
procedure TFAlmacenAgregar.FormActivate(Sender: TObject);
VAR
  FECHA_3_MESES: TDate;
begin
  try
    // MOSTRANDO SOLO LOS ULTIMOS 6 MESES
    cxRadioButton1.Checked := True;
    TIPO := 'MEDICAMENTO';

    cxRadioButton1.Checked := True;
    cxLookupComboBox1.Properties.DataController.DataSet.Active := True;
    cxLookupComboBox2.Properties.DataController.DataSet.Active := True;
    cxLookupComboBox3.Properties.DataController.DataSet.Active := True;
    cxLookupComboBox4.Properties.DataController.DataSet.Active := True;
  except
    on E: Exception do
  end;
end;

procedure TFAlmacenAgregar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  try
    cxLookupComboBox1.Clear;
    cxLookupComboBox2.Clear;
    cxLookupComboBox3.Clear;
    cxLookupComboBox4.Clear;
    cxMaskEdit1.Clear;
    // cxDateEdit1.Date;
    cxMaskEdit3.Clear;
    cxMaskEdit5.Clear;
    cxDateEdit1.Clear;
    cxTextEdit1.Clear;
    cxLookupComboBox1.SetFocus;
  except

  end;

end;

end.
