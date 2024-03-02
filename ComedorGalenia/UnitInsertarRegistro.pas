unit UnitInsertarRegistro;

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
  dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, Vcl.ComCtrls, dxCore, cxDateUtils, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, cxSpinEdit, cxTimeEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxTextEdit, cxDBEdit, cxLabel, cxGroupBox, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxMemo, Vcl.DBCtrls, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid;

type
  TFormInsertarRegistro = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1Nombres: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxGroupBox3: TcxGroupBox;
    cxLabel1: TcxLabel;
    cxTextEdit1: TcxTextEdit;
    cxButton1: TcxButton;
    cxGroupBox2: TcxGroupBox;
    cxButton2: TcxButton;
    cxDateEdit1: TcxDateEdit;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxTimeEdit1: TcxTimeEdit;
    Usuario: TcxLabel;
    cxTextEdit2: TcxTextEdit;
    procedure FormActivate(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure dblkcbb1Click(Sender: TObject);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    Nombre:string;
  end;

var
  FormInsertarRegistro: TFormInsertarRegistro;

implementation
  uses  UnitDataModule1, UnitPrincipal;
{$R *.dfm}

procedure TFormInsertarRegistro.cxButton1Click(Sender: TObject);
begin
  try

    DataModule1.QBuscarUsuario.SQL.Clear;
    DataModule1.QBuscarUsuario.SQL.Add( 'SELECT * FROM usuarios ');
    DataModule1.QBuscarUsuario.SQL.Add( 'WHERE nombres LIKE ''%' + cxTextEdit1.Text +'%''') ;
    DataModule1.QBuscarUsuario.SQL.Add( 'AND status = 1 ');
    DataModule1.QBuscarUsuario.Execute;
  except

  end;
end;

procedure TFormInsertarRegistro.cxButton2Click(Sender: TObject);
begin
  try
    if nombre <> '' then
    begin
       // primero preguntar si existe ese usuario en la bd
       DataModule1.QUsuariosPorNombre.ParamByName('Nombre').AsString:=Nombre;
       DataModule1.QUsuariosPorNombre.Execute;

        // si esta activo y si tiene permiso de comer
       if DataModule1.QUsuariosPorNombre.FieldValues['status'] = False then
       begin
         nombre:='';
         ShowMessage('El usuario no está activo en el sistema');
         Exit
       end;
       if DataModule1.QUsuariosPorNombre.FieldValues['AccesoComedor'] = False then
       begin
         nombre:='';
         ShowMessage('El usuario no tiene acceso al comedor');
         Exit
       end;

       with DataModule1.QInsertarRegistro do
       begin
         ParamByName('Nombres').AsString:= DataModule1.QUsuariosPorNombre.FieldValues['Nombres'];
         ParamByName('Credencial').AsString:= DataModule1.QUsuariosPorNombre.FieldValues['Credencial'];
         ParamByName('Fecha').AsDate:= cxDateEdit1.Date;
         ParamByName('Hora').AsTime:= cxTimeEdit1.Time;
         ParamByName('Departamento').AsString:= DataModule1.QUsuariosPorNombre.FieldValues['Departamento'];
         // ver que tipo de comida es
         if (time >=FormPrincipal.DesayunoI) and (time <=FormPrincipal.DesayunoF) then
         begin
            ParamByName('Tipo').AsString:='Desayuno';
         end
         else
         if (time >=FormPrincipal.ComidaI) and (time <=FormPrincipal.ComidaF) then
         begin
            ParamByName('Tipo').AsString:='Comida';
         end
         else
         if (time >=FormPrincipal.CenaI) and (time <=FormPrincipal.CenaF) then
         begin
            ParamByName('Tipo').AsString:='Cena';
         end
         else
         begin
           ParamByName('Tipo').AsString:='Fuera de Hora';
         end;

         Execute;
         nombre:='';
         cxTextEdit1.Clear;
         cxTextEdit1.SetFocus;
         cxTextEdit2.Clear;
         cxDateEdit1.Clear;
         cxTimeEdit1.Clear;
         FormPrincipal.CantidadesPorTipo;
         cxButton2.Enabled:=False;

         DataModule1.QBuscarUsuario.Close;


         ShowMessage('Registro insertado satisfactoriamente.');
       end;
    end
    else
    begin
      ShowMessage('Debe llenar una credencial.');
    end;
  except
    ShowMessage('No se pudo insertar el registro');
  end;

end;

procedure TFormInsertarRegistro.cxGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
 cxButton2.Enabled:=True;
 nombre:= cxGrid1DBTableView1.DataController.DataSet.FieldByName('Nombres').AsString;
 cxTextEdit2.Text:=nombre;
end;

procedure TFormInsertarRegistro.dblkcbb1Click(Sender: TObject);
begin
     ShowMessage(DataModule1.QUsuarios.FieldValues['ApellidoPaterno']);
end;

procedure TFormInsertarRegistro.FormActivate(Sender: TObject);
begin

   try
      nombre:='';
      cxTextEdit1.SetFocus;
      cxButton2.Enabled:=False;
      DataModule1.QUsuarios.Execute;
      DataModule1.QUsuarios.Refresh;
   except
      ShowMessage('No se pudo cargar la tabla de usuarios.');
   end;

   cxDateEdit1.Date:=Date;
   cxTimeEdit1.Time:=Time;
end;

procedure TFormInsertarRegistro.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  cxTextEdit1.Clear;
  cxTextEdit2.Clear;
  cxDateEdit1.Clear;
  cxTimeEdit1.Clear;
end;

end.
