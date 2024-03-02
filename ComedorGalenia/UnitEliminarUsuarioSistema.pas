unit UnitEliminarUsuarioSistema;

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
  dxSkinXmas2008Blue, cxLabel, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB,
  cxDBData, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxGroupBox;

type
  TFormEliminarUsuarioSistema = class(TForm)
    cxButton1: TcxButton;
    cxGroupBox1: TcxGroupBox;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxLabel1: TcxLabel;
    cxTextEdit1: TcxTextEdit;
    cxGrid1DBTableView1Id: TcxGridDBColumn;
    cxGrid1DBTableView1Usuario: TcxGridDBColumn;
    cxGrid1DBTableView1Perfil: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure cxDBLookupComboBox1Click(Sender: TObject);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    var usuario:string;
        id:Integer;

  end;

var
  FormEliminarUsuarioSistema: TFormEliminarUsuarioSistema;

implementation

{$R *.dfm}
uses UnitDataModule1;

procedure TFormEliminarUsuarioSistema.cxButton1Click(Sender: TObject);
begin
  if cxTextEdit1.Text <> '' then
  begin
    DataModule1.QEliminarUsuarioSistema.ParamByName('Id').asinteger:=id;
    DataModule1.QEliminarUsuarioSistema.Execute;

    cxGrid1DBTableView1.DataController.DataSet.Refresh;
    cxTextEdit1.Clear;
  end
  else
  ShowMessage('Debe seleccionar un usuario primero.');

end;

procedure TFormEliminarUsuarioSistema.cxDBLookupComboBox1Click(Sender: TObject);
begin
  ShowMessage(DataModule1.QUsuariosSistema.FieldValues['id']);
end;

procedure TFormEliminarUsuarioSistema.cxGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
 usuario:= cxGrid1DBTableView1.DataController.DataSet.FieldByName('Usuario').AsString;
 id:= cxGrid1DBTableView1.DataController.DataSet.FieldByName('Id').AsInteger;

 cxTextEdit1.Text:=usuario;
end;

procedure TFormEliminarUsuarioSistema.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  cxTextEdit1.Clear;
end;

procedure TFormEliminarUsuarioSistema.FormShow(Sender: TObject);
begin
  DataModule1.QUsuariosSistema.Execute;
end;

end.
