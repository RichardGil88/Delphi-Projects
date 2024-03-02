unit Unit15;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxGroupBox,
  AdvCircularProgress, ExtCtrls, dxSkinBlueprint, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinHighContrast, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinSevenClassic,
  dxSkinSharpPlus, dxSkinTheAsphaltWorld, dxSkinVS2010, dxSkinWhiteprint;

type
  TFincidencias = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1USUARIO: TcxGridDBColumn;
    cxGrid1DBTableView1UNIDAD: TcxGridDBColumn;
    cxGrid1DBTableView1FECHA: TcxGridDBColumn;
    cxGrid1DBTableView1INCIDENCIAS: TcxGridDBColumn;
    AdvCircularProgress1: TAdvCircularProgress;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fincidencias: TFincidencias;

implementation
  uses Unit2,Unit1;
{$R *.dfm}

procedure TFincidencias.FormShow(Sender: TObject);
begin
  cxGrid1DBTableView1.NavigatorButtons.Append.Visible:=False;
  if (Fmain.cargo='admin central')  then
    begin
     cxGrid1DBTableView1.DataController.DataSource:=DM.DSincidencias;
     dm.Tincidencias.Open;
    end;
  if Fmain.cargo='usuario' then
    begin
       DM.QBYUincidencias.ParamByName('punidad').AsString:=Fmain.unidad;
       DM.QBYUincidencias.Execute;
       cxGrid1DBTableView1.DataController.DataSource:=DM.DSQBYUincidencias;
       cxGrid1DBTableView1.OptionsData.Editing:=False;
       cxGrid1DBTableView1.NavigatorButtons.Insert.Visible:=True;
       cxGrid1DBTableView1.NavigatorButtons.Post.Visible:=False;
       cxGrid1DBTableView1.NavigatorButtons.Append.Visible:=True;
       cxGrid1DBTableView1.NavigatorButtons.Delete.Visible:=False;
       cxGrid1DBTableView1.NavigatorButtons.Edit.Visible:=False;
       cxGrid1DBTableView1.OptionsSelection.CellSelect:=false;
    end;
  if (Fmain.cargo='admin') then
    begin
      DM.QBYUincidencias.ParamByName('punidad').AsString:=Fmain.unidad;
      DM.QBYUincidencias.Execute;
      cxGrid1DBTableView1.DataController.DataSource:=DM.DSQBYUincidencias;
    end;
   cxGrid1DBTableView1.DataController.DataSource.DataSet.Active:=True;

end;

end.
