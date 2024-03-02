unit UCod_Doctores;

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
  cxGridCustomView, cxGrid, cxMaskEdit, Vcl.StdCtrls, cxButtons, cxLabel,
  cxTextEdit, cxGroupBox, cxMemo, dxSkinTheBezier,
  cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TFCod_Doctores = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cxTextEdit1: TcxTextEdit;
    cxLabel1: TcxLabel;
    cxButton1: TcxButton;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxTextEdit4: TcxTextEdit;
    cxTextEdit5: TcxTextEdit;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxMaskEdit1: TcxMaskEdit;
    cxGroupBox2: TcxGroupBox;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGroupBox3: TcxGroupBox;
    cxTextEdit2: TcxTextEdit;
    cxLabel2: TcxLabel;
    cxButton4: TcxButton;
    cxButton3: TcxButton;
    cxMemo1: TcxMemo;
    cxGrid1DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1NOMBRE: TcxGridDBColumn;
    cxGrid1DBTableView1TELEFONO: TcxGridDBColumn;
    cxGrid1DBTableView1EMAIL: TcxGridDBColumn;
    cxGrid1DBTableView1DIRECCION: TcxGridDBColumn;
    cxGrid1DBTableView1ESPECIALIDADES: TcxGridDBColumn;
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCod_Doctores: TFCod_Doctores;
  CODIGO:Integer;

implementation
uses UDMCodificadores;
{$R *.dfm}

 // INSERTAR
procedure TFCod_Doctores.cxButton1Click(Sender: TObject);
begin
   if cxTextEdit1.Text = '' then
     begin
       ShowMessage('DEBE LLENAR AL MENOS EL CAMPO NOMBRE.');
     end
   else
   begin

        try
           with  FDMCodificadores.QInsertar do
           begin
             SQL.Clear;
             SQL.Add('INSERT INTO `DOCTORES` (`DOCTORES`.`nombre`,`DOCTORES`.`telefono`,`DOCTORES`.`email`,`DOCTORES`.`direccion`,`DOCTORES`.`ESPECIALIDADES`) values (:nombre,:telefono,:email,:direccion,:especialidades);');
             ParamByName('nombre').AsString:=cxTextEdit1.Text;
             ParamByName('telefono').AsInteger:=StrToInt(cxMaskEdit1.Text);
             ParamByName('email').AsString:=cxTextEdit4.Text;
             ParamByName('direccion').AsString:=cxTextEdit5.Text;
             ParamByName('especialidades').AsString:=cxMemo1.Lines.Text;
             Execute;
           end;
           cxGrid1DBTableView1.DataController.DataSource.DataSet.Refresh;

           cxTextEdit1.Clear;
           cxTextEdit4.Clear;
           cxTextEdit5.Clear;
           cxMemo1.Clear;
           cxMaskEdit1.Clear;
           cxTextEdit1.SetFocus;

           ShowMessage('DOCTOR AGREGADO CON EXITO');
        except
           ShowMessage('ERROR');
        end;

   end;
end;

 // ELIMINAR
procedure TFCod_Doctores.cxButton3Click(Sender: TObject);
var ValorE:string;
begin
    ValorE:=cxTextEdit2.Text;

   if ValorE <> '' then
   begin
        try
           with  FDMCodificadores.QEliminar do
           begin
             SQL.Clear;
             SQL.Add('DELETE FROM `DOCTORES` WHERE `DOCTORES`.`CODIGO` = :CODIGO ;');
             ParamByName('CODIGO').AsInteger:=CODIGO;
             Execute;
           end;
           cxGrid1DBTableView1.DataController.DataSource.DataSet.Refresh;
           cxTextEdit2.Clear;
           ShowMessage('DOCTOR ELIMINADO CON EXITO');
        except on E: Exception do
        end;

   end
   else
   begin
     ShowMessage('DEBE SELECCIONAR UN CODIFICADOR EN LA TABLA');
   end;

end;


procedure TFCod_Doctores.cxGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
   try
     CODIGO:= cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldValues['CODIGO'];

     cxTextEdit2.Text:= cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldValues['NOMBRE'];

   except on E: Exception do
   end;
end;

procedure TFCod_Doctores.FormActivate(Sender: TObject);
begin

   try
       cxGrid1DBTableView1.DataController.DataSource.DataSet.Active:=True;

       cxGroupBox2.Caption:= 'DOCTORES';
       FCod_Doctores.Caption:= 'DOCTORES';


       cxTextEdit1.SetFocus;
   except on E: Exception do
   end;

end;

procedure TFCod_Doctores.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   try
      cxGrid1DBTableView1.DataController.DataSource.DataSet.Active:=False;
      cxTextEdit1.Clear;
      cxTextEdit2.Clear;
      cxTextEdit4.Clear;
      cxTextEdit5.Clear;
      cxMemo1.Clear;
      cxMaskEdit1.Clear;
      cxTextEdit1.SetFocus;

   except on E: Exception do
   end;
end;

end.
