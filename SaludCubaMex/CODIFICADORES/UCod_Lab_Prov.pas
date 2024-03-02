unit UCOD_LAB_PROV;

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
  cxGridCustomView, cxGrid, Vcl.StdCtrls, cxButtons, cxLabel, cxTextEdit,
  cxGroupBox, cxMaskEdit;

type
  TFCOD_LAB_PROV = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cxTextEdit1: TcxTextEdit;
    cxLabel1: TcxLabel;
    cxButton1: TcxButton;
    cxGroupBox2: TcxGroupBox;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGroupBox3: TcxGroupBox;
    cxTextEdit2: TcxTextEdit;
    cxLabel2: TcxLabel;
    cxButton4: TcxButton;
    cxButton3: TcxButton;
    cxGrid1DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1NOMBRE: TcxGridDBColumn;
    cxGrid1DBTableView1TELEFONO: TcxGridDBColumn;
    cxGrid1DBTableView1DIRECCION: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRIPCION: TcxGridDBColumn;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxTextEdit4: TcxTextEdit;
    cxTextEdit5: TcxTextEdit;
    cxLabel5: TcxLabel;
    cxTextEdit6: TcxTextEdit;
    cxLabel6: TcxLabel;
    cxMaskEdit1: TcxMaskEdit;
    cxGrid1DBTableView1EMAIL: TcxGridDBColumn;
    procedure FormActivate(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCOD_LAB_PROV: TFCOD_LAB_PROV;
  CODIGO:Integer;

implementation
   USES Umain,Ucodificadores, UDMCodificadores;
{$R *.dfm}

// INSERTAR
procedure TFCOD_LAB_PROV.cxButton1Click(Sender: TObject);
begin
     if cxTextEdit1.Text = '' then
     begin
       ShowMessage('DEBE LLENAR AL MENOS EL CAMPO NOMBRE.');
     end
     else
     begin

       if FMain.CODIFICADOR = 'LABORATORIOS' then
       begin
          try
             with  FDMCodificadores.QInsertar do
             begin
               SQL.Clear;
               SQL.Add('INSERT INTO `laboratorios` (`laboratorios`.`nombre`,`laboratorios`.`telefono`,`laboratorios`.`email`,`laboratorios`.`direccion`,`laboratorios`.`descripcion`) values (:nombre,:telefono,:email,:direccion,:descripcion);');
               ParamByName('nombre').AsString:=cxTextEdit1.Text;
               ParamByName('telefono').AsInteger:=StrToInt(cxMaskEdit1.Text);
               ParamByName('email').AsString:=cxTextEdit4.Text;
               ParamByName('direccion').AsString:=cxTextEdit5.Text;
               ParamByName('descripcion').AsString:=cxTextEdit6.Text;
               Execute;
             end;
             cxGrid1DBTableView1.DataController.DataSource.DataSet.Refresh;

             cxTextEdit1.Clear;
             cxTextEdit4.Clear;
             cxTextEdit5.Clear;
             cxTextEdit6.Clear;
             cxMaskEdit1.Clear;
             cxTextEdit1.SetFocus;

             ShowMessage('LABORATORIO AGREGADO CON EXITO');
          except on E: Exception do
          end;
       end;

        if FMain.CODIFICADOR = 'PROVEEDORES' then
       begin
          try
             with  FDMCodificadores.QInsertar do
             begin
               SQL.Clear;
               SQL.Add('INSERT INTO `PROVEEDORES` (`PROVEEDORES`.`nombre`,`PROVEEDORES`.`telefono`,`PROVEEDORES`.`email`,`PROVEEDORES`.`direccion`,`PROVEEDORES`.`descripcion`) values (:nombre,:telefono,:email,:direccion,:descripcion);');
               ParamByName('nombre').AsString:=cxTextEdit1.Text;
               ParamByName('telefono').AsInteger:=StrToInt(cxMaskEdit1.Text);
               ParamByName('email').AsString:=cxTextEdit4.Text;
               ParamByName('direccion').AsString:=cxTextEdit5.Text;
               ParamByName('descripcion').AsString:=cxTextEdit6.Text;
               Execute;
             end;
             cxGrid1DBTableView1.DataController.DataSource.DataSet.Refresh;
             cxTextEdit1.Clear;
             ShowMessage('PROVEEDOR AGREGADO CON EXITO');
          except on E: Exception do
          end;
       end;
     end;
     
end;

// ELIMINAR
procedure TFCOD_LAB_PROV.cxButton3Click(Sender: TObject);
var ValorE:string;
begin
    ValorE:=cxTextEdit2.Text;

   if ValorE <> '' then
   begin
     if FMain.CODIFICADOR = 'LABORATORIOS' then
     begin
        try
           with  FDMCodificadores.QEliminar do
           begin
             SQL.Clear;
             SQL.Add('DELETE FROM `LABORATORIOS` WHERE `LABORATORIOS`.`CODIGO` = :CODIGO ;');
             ParamByName('CODIGO').AsInteger:=CODIGO;
             Execute;
           end;
           cxGrid1DBTableView1.DataController.DataSource.DataSet.Refresh;
           cxTextEdit2.Clear;
           ShowMessage('LABORATORIO ELIMINADO CON EXITO');
        except on E: Exception do
        end;
     end;
   end
   else
   begin
     ShowMessage('DEBE SELECCIONAR UN CODIFICADOR EN LA TABLA');
   end;
end;

procedure TFCOD_LAB_PROV.cxGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
   try
     CODIGO:= cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldValues['CODIGO'];

     cxTextEdit2.Text:= cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldValues['NOMBRE'];

   except on E: Exception do
   end;
end;

procedure TFCOD_LAB_PROV.FormActivate(Sender: TObject);
begin
   try
     if FMain.CODIFICADOR = 'LABORATORIOS' then
     begin
       //cxGrid1DBTableView1.DELETE ALL COLLUMS

       cxGrid1DBTableView1.DataController.DataSource:=FDMCodificadores.DSLab;
       cxGrid1DBTableView1.DataController.DataSource.DataSet:=FDMCodificadores.QLAB;
       cxGrid1DBTableView1.DataController.DataSource.DataSet.Active:=True;

       cxGroupBox2.Caption:= 'LABORATORIOS';
       FCOD_LAB_PROV.Caption:= 'LABORATORIOS';
     end;

     if FMain.CODIFICADOR = 'PROVEEDORES' then
     begin
       //cxGrid1DBTableView1.DELETE ALL COLLUMS

       cxGrid1DBTableView1.DataController.DataSource:=FDMCodificadores.DSQproveedores;
       cxGrid1DBTableView1.DataController.DataSource.DataSet:=FDMCodificadores.Qproveedores;
       cxGrid1DBTableView1.DataController.DataSource.DataSet.Active:=True;

       cxGroupBox2.Caption:= 'PROVEEDORES';
       FCOD_LAB_PROV.Caption:= 'PROVEEDORES';
     end;
     cxTextEdit1.SetFocus;
   except on E: Exception do
   end;
  
end;

procedure TFCOD_LAB_PROV.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  try
    cxGrid1DBTableView1.DataController.DataSource.DataSet.Active:=False;
    cxTextEdit1.Clear;
    cxTextEdit2.Clear;
    cxTextEdit4.Clear;
    cxTextEdit5.Clear;
    cxTextEdit6.Clear;
    cxMaskEdit1.Clear;
  except on E: Exception do
  end;
    
end;

end.
