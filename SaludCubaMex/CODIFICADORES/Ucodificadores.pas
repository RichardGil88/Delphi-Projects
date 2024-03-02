unit Ucodificadores;

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
  cxGroupBox;

type
  TFCodificadores = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cxTextEdit1: TcxTextEdit;
    cxLabel1: TcxLabel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
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
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCodificadores: TFCodificadores;
  CODIGO:Integer;

implementation
 USES Umain, UDMCodificadores;
{$R *.dfm}


//AGREGAR CODIFICADOR
procedure TFCodificadores.cxButton1Click(Sender: TObject);
var valor:string;
begin
    valor:=cxTextEdit1.Text;
   if valor <> '' then
   begin
     if FMain.CODIFICADOR = 'PRESENTACION' then
     begin
        try
           with  FDMCodificadores.QInsertar do
           begin
             SQL.Clear;
             SQL.Add('INSERT INTO `presentacion` (`presentacion`.`nombre`) values (:valor);');
             ParamByName('valor').AsString:=valor;
             Execute;
           end;
           cxGrid1DBTableView1.DataController.DataSource.DataSet.Refresh;
           cxTextEdit1.Clear;
           ShowMessage('PRESENTACION AGREGADA CON EXITO');
        except on E: Exception do
        end;
     end;

      if FMain.CODIFICADOR = 'MOTIVOS' then
     begin
        try
           with  FDMCodificadores.QInsertar do
           begin
             SQL.Clear;
             SQL.Add('INSERT INTO `cod_citas_motivos` (`cod_citas_motivos`.`nombre`) values (:valor);');
             ParamByName('valor').AsString:=valor;
             Execute;
           end;
           cxGrid1DBTableView1.DataController.DataSource.DataSet.Refresh;
           cxTextEdit1.Clear;
           ShowMessage('MOTIVO AGREGADO CON EXITO');
        except on E: Exception do
        end;
     end;

     if FMain.CODIFICADOR = 'TIPOS_DE_SANGRE' then
     begin
        try
           with  FDMCodificadores.QInsertar do
           begin
             SQL.Clear;
             SQL.Add('INSERT INTO `cod_tipo_de_sangre` (`cod_tipo_de_sangre`.`nombre`) values (:valor);');
             ParamByName('valor').AsString:=valor;
             Execute;
           end;
           cxGrid1DBTableView1.DataController.DataSource.DataSet.Refresh;
           cxTextEdit1.Clear;
           ShowMessage('TIPO DE SANGRE AGREGADO CON EXITO');
        except on E: Exception do
        end;
     end;

     if FMain.CODIFICADOR = 'CATEGORIAS' then
     begin
        try
           with  FDMCodificadores.QInsertar do
           begin
             SQL.Clear;
             SQL.Add('INSERT INTO `cod_categorias` (`cod_categorias`.`nombre`) values (:valor);');
             ParamByName('valor').AsString:=valor;
             Execute;
           end;
           cxGrid1DBTableView1.DataController.DataSource.DataSet.Refresh;
           cxTextEdit1.Clear;
           ShowMessage('CATEGORIA AGREGADA CON EXITO');
        except on E: Exception do
        end;
     end;

     if FMain.CODIFICADOR = 'ESTADOS' then
     begin
        try
           with  FDMCodificadores.QInsertar do
           begin
             SQL.Clear;
             SQL.Add('INSERT INTO `cod_citas_estados` (`cod_citas_estados`.`nombre`) values (:valor);');
             ParamByName('valor').AsString:=valor;
             Execute;
           end;
           cxGrid1DBTableView1.DataController.DataSource.DataSet.Refresh;
           cxTextEdit1.Clear;
           ShowMessage('ESTADO AGREGADO CON EXITO');
        except on E: Exception do
        end;
     end;

     if FMain.CODIFICADOR = 'INSUMOS' then
     begin
        try
           with  FDMCodificadores.QInsertar do
           begin
             SQL.Clear;
             SQL.Add('INSERT INTO `INSUMOS` (`INSUMOS`.`nombre`) values (:valor);');
             ParamByName('valor').AsString:=valor;
             Execute;
           end;
           cxGrid1DBTableView1.DataController.DataSource.DataSet.Refresh;
           cxTextEdit1.Clear;
           ShowMessage('INSUMO AGREGADO CON EXITO');
        except on E: Exception do
        end;
     end;
   end
   else
   begin
     ShowMessage('DEBE LLENAR EL CAMPO NOMBRE');
   end;
   

end;

// ELIMINAR CODIFICADOR
procedure TFCodificadores.cxButton3Click(Sender: TObject);
var ValorE:string;
begin

   ValorE:=cxTextEdit2.Text;

   if ValorE <> '' then
   begin
     if FMain.CODIFICADOR = 'PRESENTACION' then
     begin
        try
           with  FDMCodificadores.QEliminar do
           begin
             SQL.Clear;
             SQL.Add('DELETE FROM `presentacion` WHERE `presentacion`.`CODIGO` = :CODIGO ;');
             ParamByName('CODIGO').AsInteger:=CODIGO;
             Execute;
           end;
           cxGrid1DBTableView1.DataController.DataSource.DataSet.Refresh;
           cxTextEdit2.Clear;
           ShowMessage('PRESENTACION ELIMINADA CON EXITO');
        except on E: Exception do
        end;
     end;

     if FMain.CODIFICADOR = 'MOTIVOS' then
     begin
        try
           with  FDMCodificadores.QEliminar do
           begin
             SQL.Clear;
             SQL.Add('DELETE FROM `cod_citas_motivos` WHERE `cod_citas_motivos`.`CODIGO` = :CODIGO ;');
             ParamByName('CODIGO').AsInteger:=CODIGO;
             Execute;
           end;
           cxGrid1DBTableView1.DataController.DataSource.DataSet.Refresh;
           cxTextEdit2.Clear;
           ShowMessage('MOTIVO ELIMINADO CON EXITO');
        except on E: Exception do
        end;
     end;

     if FMain.CODIFICADOR = 'TIPOS_DE_SANGRE' then
     begin
        try
           with  FDMCodificadores.QEliminar do
           begin
             SQL.Clear;
             SQL.Add('DELETE FROM `cod_tipo_de_sangre` WHERE `cod_tipo_de_sangre`.`CODIGO` = :CODIGO ;');
             ParamByName('CODIGO').AsInteger:=CODIGO;
             Execute;
           end;
           cxGrid1DBTableView1.DataController.DataSource.DataSet.Refresh;
           cxTextEdit2.Clear;
           ShowMessage('TIPO DE SANGRE ELIMINADO CON EXITO');
        except on E: Exception do
        end;
     end;

     if FMain.CODIFICADOR = 'CATEGORIAS' then
     begin
        try
           with  FDMCodificadores.QEliminar do
           begin
             SQL.Clear;
             SQL.Add('DELETE FROM `cod_categorias` WHERE `cod_categorias`.`CODIGO` = :CODIGO ;');
             ParamByName('CODIGO').AsInteger:=CODIGO;
             Execute;
           end;
           cxGrid1DBTableView1.DataController.DataSource.DataSet.Refresh;
           cxTextEdit2.Clear;
           ShowMessage('CATEGORIA ELIMINADA CON EXITO');
        except on E: Exception do
        end;
     end;

     if FMain.CODIFICADOR = 'ESTADOS' then
     begin
        try
           with  FDMCodificadores.QEliminar do
           begin
             SQL.Clear;
             SQL.Add('DELETE FROM `cod_citas_estados` WHERE `cod_citas_estados`.`CODIGO` = :CODIGO ;');
             ParamByName('CODIGO').AsInteger:=CODIGO;
             Execute;
           end;
           cxGrid1DBTableView1.DataController.DataSource.DataSet.Refresh;
           cxTextEdit2.Clear;
           ShowMessage('ESTADO ELIMINADO CON EXITO');
        except on E: Exception do
        end;
     end;

     if FMain.CODIFICADOR = 'INSUMOS' then
     begin
        try
           with  FDMCodificadores.QEliminar do
           begin
             SQL.Clear;
             SQL.Add('DELETE FROM `INSUMOS` WHERE `INSUMOS`.`CODIGO` = :CODIGO ;');
             ParamByName('CODIGO').AsInteger:=CODIGO;
             Execute;
           end;
           cxGrid1DBTableView1.DataController.DataSource.DataSet.Refresh;
           cxTextEdit2.Clear;
           ShowMessage('INSUMO ELIMINADO CON EXITO');
        except on E: Exception do
        end;
     end;

   end
   else
   begin
     ShowMessage('DEBE SELECCIONAR UN CODIFICADOR EN LA TABLA');
   end;
end;

procedure TFCodificadores.cxGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
   try
     CODIGO:= cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldValues['CODIGO'];

     cxTextEdit2.Text:= cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldValues['NOMBRE'];

   except on E: Exception do
   end;
end;

procedure TFCodificadores.FormActivate(Sender: TObject);
begin

   if FMain.CODIFICADOR = 'PRESENTACION' then
   begin
     //cxGrid1DBTableView1.DELETE ALL COLLUMS

     cxGrid1DBTableView1.DataController.DataSource:=FDMCodificadores.DSPresentacion;
     cxGrid1DBTableView1.DataController.DataSource.DataSet:=FDMCodificadores.QPresentacion;
     cxGrid1DBTableView1.DataController.DataSource.DataSet.Active:=True;

     cxGroupBox2.Caption:= 'PRESENTACIONES';
     FCodificadores.Caption:= 'PRESENTACIONES';
   end;

   if FMain.CODIFICADOR = 'MOTIVOS' then
   begin
     //cxGrid1DBTableView1.DELETE ALL COLLUMS

     cxGrid1DBTableView1.DataController.DataSource:=FDMCodificadores.DSCod_Cita_Motivos;
     cxGrid1DBTableView1.DataController.DataSource.DataSet:=FDMCodificadores.QCod_Cita_Motivos;
     cxGrid1DBTableView1.DataController.DataSource.DataSet.Active:=True;

     cxGroupBox2.Caption:= 'MOTIVOS';
     FCodificadores.Caption:= 'MOTIVOS';
   end;

   if FMain.CODIFICADOR = 'TIPOS_DE_SANGRE' then
   begin
     //cxGrid1DBTableView1.DELETE ALL COLLUMS

     cxGrid1DBTableView1.DataController.DataSource:=FDMCodificadores.DSCod_Tipos_De_Sangre;
     cxGrid1DBTableView1.DataController.DataSource.DataSet:=FDMCodificadores.QCod_Tipos_De_Sangre;
     cxGrid1DBTableView1.DataController.DataSource.DataSet.Active:=True;

     cxGroupBox2.Caption:= 'TIPOS_DE_SANGRE';
     FCodificadores.Caption:= 'TIPOS_DE_SANGRE';
   end;

   if FMain.CODIFICADOR = 'CATEGORIAS' then
   begin
     //cxGrid1DBTableView1.DELETE ALL COLLUMS

     cxGrid1DBTableView1.DataController.DataSource:=FDMCodificadores.DSCategorias;
     cxGrid1DBTableView1.DataController.DataSource.DataSet:=FDMCodificadores.QCategorias;
     cxGrid1DBTableView1.DataController.DataSource.DataSet.Active:=True;

      cxGroupBox2.Caption:= 'CATEGORIAS';
      FCodificadores.Caption:= 'CATEGORIAS';
   end;

   if FMain.CODIFICADOR = 'ESTADOS' then
   begin
     //cxGrid1DBTableView1.DELETE ALL COLLUMS

     cxGrid1DBTableView1.DataController.DataSource:=FDMCodificadores.DSCod_Cita_Estados;
     cxGrid1DBTableView1.DataController.DataSource.DataSet:=FDMCodificadores.QCod_Cita_Estados;
     cxGrid1DBTableView1.DataController.DataSource.DataSet.Active:=True;

     cxGroupBox2.Caption:= 'ESTADOS';
     FCodificadores.Caption:= 'ESTADOS';
   end;

   if FMain.CODIFICADOR = 'INSUMOS' then
   begin
     //cxGrid1DBTableView1.DELETE ALL COLLUMS

     cxGrid1DBTableView1.DataController.DataSource:=FDMCodificadores.DSInsumos;
     cxGrid1DBTableView1.DataController.DataSource.DataSet:=FDMCodificadores.QInsumos;
     cxGrid1DBTableView1.DataController.DataSource.DataSet.Active:=True;

     cxGroupBox2.Caption:= 'INSUMOS';
     FCodificadores.Caption:= 'INSUMOS';
   end;

end;

procedure TFCodificadores.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  cxGrid1DBTableView1.DataController.DataSource.DataSet.Active:=False;
  cxTextEdit1.Clear;
  cxTextEdit2.Clear;
end;

end.
