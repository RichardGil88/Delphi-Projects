unit UCod_Servicios;

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
  cxGroupBox, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, dxSkinTheBezier,
  cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TFCod_Servicios = class(TForm)
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
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCod_Servicios: TFCod_Servicios;
  CODIGO:Integer;

implementation
 uses Umain,UDMCodificadores,ULogin;

{$R *.dfm}

// AGREGAR
procedure TFCod_Servicios.cxButton1Click(Sender: TObject);
begin
    if (cxTextEdit1.Text = '')then
     begin
       ShowMessage('DEBE LLENAR EL CAMPOS NOMBRE.');
     end
    else
    begin
      try
         with  FDMCodificadores.QInsertar do
         begin
           SQL.Clear;
           SQL.Add('INSERT INTO `SERVICIOS` (`SERVICIOS`.`NOMBRE`,`SERVICIOS`.`CARGO`) values (:NOMBRE,:CARGO);');
           ParamByName('NOMBRE').AsString:=cxTextEdit1.Text;
           ParamByName('CARGO').AsString:=Flogin.CARGO;
           Execute;
         end;
         cxGrid1DBTableView1.DataController.DataSource.DataSet.Refresh;

         cxTextEdit1.Clear;
        // cxMaskEdit1.Clear;
         cxTextEdit1.SetFocus;

         ShowMessage('SERVICIO AGREGADO CON EXITO');
      except on E: Exception do
      end;
    end;

end;

// ELIMINAR
procedure TFCod_Servicios.cxButton3Click(Sender: TObject);
var ValorE:string;
begin
    ValorE:=cxTextEdit2.Text;

   if ValorE <> '' then
   begin
        try
           with  FDMCodificadores.QEliminar do
           begin
             SQL.Clear;
             SQL.Add('DELETE FROM `SERVICIOS` WHERE `SERVICIOS`.`CODIGO` = :CODIGO ;');
             ParamByName('CODIGO').AsInteger:=CODIGO;
             Execute;
           end;
           cxGrid1DBTableView1.DataController.DataSource.DataSet.Refresh;
           cxTextEdit2.Clear;
           ShowMessage('SERVICIO ELIMINADO CON EXITO');
        except on E: Exception do
        end;
   end
   else
   begin
     ShowMessage('DEBE SELECCIONAR UN CODIFICADOR EN LA TABLA');
   end;
end;


procedure TFCod_Servicios.cxGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
   try
     CODIGO:= cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldValues['CODIGO'];

     cxTextEdit2.Text:= cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldValues['NOMBRE'];

   except on E: Exception do
   end;
end;

procedure TFCod_Servicios.FormActivate(Sender: TObject);
begin
   try

     cxGrid1DBTableView1.DataController.DataSource.DataSet.Active:=True;
     cxGroupBox2.Caption:= 'SERVICIOS';
     FCod_Servicios.Caption:='SERVICIOS';

     FDMCodificadores.QServicios.SQL.Clear;
     FDMCodificadores.QServicios.SQL.Add(' SELECT  *FROM  `servicios`; ');
     FDMCodificadores.QServicios.Execute;
     cxTextEdit1.SetFocus;

   except on E: Exception do
   end;
   

end;

procedure TFCod_Servicios.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   try

     cxGrid1DBTableView1.DataController.DataSource.DataSet.Active:=False;
     cxTextEdit1.Clear;
     cxTextEdit2.Clear;
     cxTextEdit1.SetFocus;

   except on E: Exception do
   end;
end;

end.
