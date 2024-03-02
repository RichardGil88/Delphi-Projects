unit UConsultasVender;

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
  cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxMaskEdit,
  cxSpinEdit, cxTextEdit, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, Vcl.StdCtrls,
  cxButtons, cxLabel, cxGroupBox, cxRadioGroup, dxBarBuiltInMenu, cxPC,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxCheckBox,
  dxToggleSwitch, dxSkinTheBezier,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxMemo, Vcl.ComCtrls;

type
  TFConsultasVender = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxTextEdit9: TcxTextEdit;
    cxGroupBox2: TcxGroupBox;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1NOMBRE: TcxGridDBColumn;
    cxGrid2DBTableView1PRECIO_TOTAL: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    cxRadioGroup1: TcxRadioGroup;
    cxLookupComboBox1: TcxLookupComboBox;
    cxLabel7: TcxLabel;
    cxTextEdit3: TcxTextEdit;
    cxLabel8: TcxLabel;
    cxTextEdit4: TcxTextEdit;
    SWSEXO: TdxToggleSwitch;
    cxLabel10: TcxLabel;
    cxTextEdit7: TcxTextEdit;
    cxLabel12: TcxLabel;
    cxTextEdit8: TcxTextEdit;
    cxLabel13: TcxLabel;
    cxButton1: TcxButton;
    cxGrid2DBTableView1CODIGO_PACIENTE: TcxGridDBColumn;
    cxLabel15: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel1: TcxLabel;
    cxTextEdit2: TcxTextEdit;
    cxTextEdit1: TcxTextEdit;
    cxLabel2: TcxLabel;
    RichEdit1: TRichEdit;
    procedure FormActivate(Sender: TObject);
    procedure cxLookupComboBox1Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxTextEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure cxTextEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure cxButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FConsultasVender: TFConsultasVender;
  SERVICIO:string;
  PRECIO_DE_VENTA:Integer;

  CODIGO_PRODUCTO,PRECIO_VENTA_POR_UNIDAD,PRECIO_COSTO_POR_UNIDAD:Integer;
  NOMBRE,PROVEEDOR,PRESENTACION,LABORATORIO,LOTE,TIPO:string;
  FECHA_DE_VENCIMIENTO:TDate;

implementation

{$R *.dfm}
 uses UDMPacientes,UDMCodificadores,UBuscarPaciente,ULogin;


 // ANADIR SERVICIO A LA LISTA PROVICIONAL
procedure TFConsultasVender.cxButton1Click(Sender: TObject);
var NUM,I,TOTAL1,TOTAL2,SALIDA:Integer;
begin
  try
     if (cxLookupComboBox1.Text = '')  or (cxTextEdit2.Text = '')  then
     begin
       ShowMessage('DEBE LLENAR TODOS LOS CAMPOS');
     end
     else
     begin
        PRECIO_DE_VENTA:=StrToInt(cxTextEdit2.Text);
        total1:= PRECIO_DE_VENTA;

        //insertando una nueva venta a la tabla ventas provicional MEDICAMENTOS
       with FDMPacientes.QInsertarVentaProv do
       begin
           ParamByName('CODIGO_PACIENTE').AsInteger:=StrToInt(cxTextEdit4.Text);
           ParamByName('NOMBRE').AsString:=cxLookupComboBox1.Text;
           ParamByName('PRECIO_VENTA_POR_UNIDAD').AsInteger:=PRECIO_DE_VENTA;
           ParamByName('SERVICIO').AsString:=cxLookupComboBox1.Text;
           ParamByName('TIPO').AsString:='SERVICIO';
          // ParamByName('SALIDA').AsInteger:=SALIDA;
           ParamByName('FECHA_DE_SALIDA').AsDate:=NOW;
           ParamByName('PRECIO_TOTAL').AsInteger:=total1;
           Execute;
       end;

       // ACTUALIZANDO la tabla PROVICIONAL EN PANTALLA
       with FDMPacientes.QVentaProvicionalTodos do
       begin
          Execute;
          //Calculando el total de dinero
          num:=0;
          for I := 0 to FDMPacientes.QVentaProvicionalTodos.RecordCount -1 do
          begin
            if I=0  then FDMPacientes.QVentaProvicionalTodos.First;
            total2:=  FDMPacientes.QVentaProvicionalTodos.FieldValues['PRECIO_TOTAL'];
            num:= num + total2;
            FDMPacientes.QVentaProvicionalTodos.Next;
          end;
          cxTextEdit9.Text:=IntToStr(num);
       end;

       cxGrid2DBTableView1.DataController.DataSource.DataSet.open;
       cxGrid2DBTableView1.DataController.DataSource.DataSet.Refresh;

       //limpiando los edits
       cxLookupComboBox1.Clear;
       cxTextEdit2.Text:='0';
       cxLookupComboBox1.SetFocus;


      // limpiando las var
       total1:=0;
       total2:=0;
       num:=0;
       I:=0;
     //  SALIDA:=0;
     end;
  except

  end;
   
end;


// VENDER
procedure TFConsultasVender.cxButton2Click(Sender: TObject);
var
I:Integer;
begin
  try
     if cxTextEdit9.Text<>'0' then
     begin
       if FDMPacientes.QVentaProvicionalTodos.RecordCount > 0 then
       begin
         // recorriendo la tabla provicional
         for I := 0 to FDMPacientes.QVentaProvicionalTodos.RecordCount -1 do
         begin
           if I=0  then FDMPacientes.QVentaProvicionalTodos.First;

           if FDMPacientes.QVentaProvicionalTodos.FieldValues['TIPO'] = 'SERVICIO' then
           begin
              // INSERTANDO EN LA TABLA VENTA DE PRODUCTOS.
             With FDMPacientes.QInsertarVenta do
             begin
             //  ParamByName('CODIGO_PRODUCTO').AsInteger:= FDMPacientes.QVentaProvicionalTodos.FieldValues['CODIGO_PRODUCTO'];
               ParamByName('NOMBRE').AsString:=FDMPacientes.QVentaProvicionalTodos.FieldValues['NOMBRE'];
               ParamByName('TIPO').AsString:='SERVICIO';
               ParamByName('PRECIO_VENTA_POR_UNIDAD').AsInteger:=FDMPacientes.QVentaProvicionalTodos.FieldValues['PRECIO_VENTA_POR_UNIDAD'];
              // ParamByName('CANTIDAD_VENDIDO').AsInteger:= FDMPacientes.QVentaProvicionalTodos.FieldValues['SALIDA'];
               ParamByName('PRECIO_TOTAL').AsInteger:= FDMPacientes.QVentaProvicionalTodos.FieldValues['PRECIO_TOTAL'];
               ParamByName('FECHA_DE_VENTA').asdate:= Now;
               ParamByName('HORA_DE_VENTA').AsTime:= Time;
               ParamByName('VENDEDOR').AsString:=Flogin.NOMBRE_COMPLETO;

               ParamByName('NOMBRE_PACIENTE').AsString:= cxTextEdit3.Text;
               ParamByName('PRIMER_APELLIDO').AsString:= cxTextEdit7.Text;
               ParamByName('SEGUNDO_APELLIDO').AsString:= cxTextEdit8.Text;
               Execute;
             end;

             // INSERTAR en la tabla PACIENTES SERVICIOS.
              with FDMPacientes.QInsertarPacienteSSERVICIOS do
              begin
                ParamByName('NOMBRE').AsString:=cxTextEdit3.Text;
                ParamByName('PRIMER_APELLIDO').AsString:=cxTextEdit7.Text;
                ParamByName('SEGUNDO_APELLIDO').AsString:=cxTextEdit8.Text;
                ParamByName('CODIGO_PACIENTE').AsInteger:= StrToInt(cxTextEdit4.Text);
                ParamByName('TIPO').AsString:='SERVICIO';
                ParamByName('SERVICIO').AsString:=FDMPacientes.QVentaProvicionalTodos.FieldValues['SERVICIO'];
                ParamByName('FECHA').AsDate:=Now;
                ParamByName('PRECIO_VENTA').AsInteger:=FDMPacientes.QVentaProvicionalTodos.FieldValues['PRECIO_VENTA_POR_UNIDAD'];
                ParamByName('DOCTOR').AsString:=FLogin.NOMBRE_COMPLETO;
                Execute;
              end;
           end;

           FDMPacientes.QVentaProvicionalTodos.Next;
         end;
       end;

       // insertando la estadistica
       with FDMPacientes.QInsertarVentaEstadistica do
       begin
          ParamByName('NOMBRE').AsString:=cxTextEdit3.Text;
          ParamByName('PRIMER_APELLIDO').AsString:=cxTextEdit7.Text;
          ParamByName('SEGUNDO_APELLIDO').AsString:=cxTextEdit8.Text;
          ParamByName('PRECIO').AsInteger:= StrToInt(cxTextEdit9.Text);
          ParamByName('IMPUESTO_CLINICA').AsInteger:=StrToInt(cxTextEdit1.Text);
          ParamByName('FECHA').AsDate:=Now;
          ParamByName('MEDICO').AsString:=FLogin.NOMBRE_COMPLETO;
          Execute;
       end;




       cxGrid2DBTableView1.DataController.DataSource.DataSet.Open;
       cxGrid2DBTableView1.DataController.DataSource.DataSet.Refresh;

       // imprimiendo el ticket
// imprimiendo el ticket
       RichEdit1.Lines.Add('SALUDCUBAMEX'#10);
       RichEdit1.Lines.Add('DOCTORA: '+ FLogin.NOMBRE_COMPLETO+' #10');
       RichEdit1.Lines.Add('NOMBRE: '+cxTextEdit3.Text+' '+cxTextEdit7.Text+#10);
       RichEdit1.Lines.Add('PAGAR: '+cxTextEdit9.Text+#10);
       RichEdit1.Lines.Add('FECHA: '+DateToStr(Date)+#10);
       RichEdit1.Lines.Add(' '#10);
       RichEdit1.Lines.Add(' '#10);
       RichEdit1.PlainText:=True;
       RichEdit1.Print(RichEdit1.Lines.Text);


       // Cancelando todo
       FDMPacientes.Qcancelar.Execute;
       cxTextEdit9.Text:='0';
       cxTextEdit1.Text:='0';
       cxTextEdit2.Text:='0';
       RichEdit1.Clear;

     end
     else
     begin
       ShowMessage('DEBE AGREGAR SERVICIOS PARA VENDER');
     end;

  except

  end;
end;

 // CANCELAR
procedure TFConsultasVender.cxButton3Click(Sender: TObject);
begin
   try
      // Cancelando todo
      with FDMPacientes.Qcancelar do
      begin
        Execute;
        cxGrid2DBTableView1.DataController.DataSource.DataSet.Open;
        cxGrid2DBTableView1.DataController.DataSource.DataSet.Refresh;
      end;

     //limpiando los edits
     cxTextEdit9.Text:='0';
     cxTextEdit1.Text:='0';
     cxTextEdit2.Text:='0';



   except
   end;
end;

procedure TFConsultasVender.cxButton4Click(Sender: TObject);
begin

end;

// BUSCANDO EL SERVICIO
procedure TFConsultasVender.cxLookupComboBox1Click(Sender: TObject);
begin
  try
    SERVICIO:= cxLookupComboBox1.Text;
  except

  end;
end;


procedure TFConsultasVender.FormActivate(Sender: TObject);
begin

    // MOSTRANDO LOS DATOS DEL PACIENTE
  try
     cxTextEdit4.Text:=IntToStr(FBuscarPaciente.CODIGO);
     cxTextEdit3.Text:=FBuscarPaciente.NOMBRE;
     cxTextEdit7.Text:=FBuscarPaciente.PRIMER_APELLIDO;
     cxTextEdit8.Text:=FBuscarPaciente.SEGUNDO_APELLIDO;

     if FBuscarPaciente.SEGUNDO_APELLIDO = 'M' then  SWSEXO.Checked:=False;
     if FBuscarPaciente.SEGUNDO_APELLIDO = 'F' then  SWSEXO.Checked:=True;

  except

  end;

  try
    FDMCodificadores.QServicios.SQL.Clear;
    FDMCodificadores.QServicios.SQL.Add(' SELECT * FROM  `servicios` where CARGO = :CARGO;');
    FDMCodificadores.QServicios.ParamByName('CARGO').AsString:=FLogin.CARGO;
    FDMCodificadores.QServicios.Execute;

    cxLookupComboBox1.Properties.DataController.DataSource.DataSet.Active:=True;
  except

  end;
end;

// ONCLOSE
procedure TFConsultasVender.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   try
      // Cancelando todo
      with FDMPacientes.Qcancelar do
      begin
        Execute;
        cxGrid2DBTableView1.DataController.DataSource.DataSet.Open;
        cxGrid2DBTableView1.DataController.DataSource.DataSet.Refresh;
      end;

      cxTextEdit1.Text:='0';
      cxTextEdit2.Text:='0';
      cxTextEdit9.Text:='0';
      cxLookupComboBox1.Clear;

   except on E: Exception do

   end;
end;

// SOLO NUMEROS
procedure TFConsultasVender.cxTextEdit1KeyPress(Sender: TObject; var Key: Char);
begin
    if not(Key in ['0'..'9',#8]) then
  begin
    Key:=#0;
  end;
end;

// SOLO NUMEROS
procedure TFConsultasVender.cxTextEdit2KeyPress(Sender: TObject; var Key: Char);
begin
    if not(Key in ['0'..'9',#8]) then
  begin
    Key:=#0;
  end;
end;

end.
