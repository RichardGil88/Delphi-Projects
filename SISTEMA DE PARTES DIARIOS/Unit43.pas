unit Unit43;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue, StdCtrls,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, Menus, cxButtons, cxLabel,
  cxGroupBox, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, DB, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid;

type
  TFefectcorreokd = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cxDateEdit1: TcxDateEdit;
    cxDateEdit2: TcxDateEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxGroupBox2: TcxGroupBox;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1UNIDAD: TcxGridDBColumn;
    cxGrid1DBTableView1FECHA: TcxGridDBColumn;
    cxGrid1DBTableView1REQUERIMIENTOS: TcxGridDBColumn;
    cxGrid1DBTableView1DESCUBRIMIENTO: TcxGridDBColumn;
    cxGrid1DBTableView1SOLICITUDESRECHAZADAS: TcxGridDBColumn;
    cxGrid1DBTableView1MOTIVODERECHAZO: TcxGridDBColumn;
    cxGrid1DBTableView1FICHEROSINTERCEPTADOS: TcxGridDBColumn;
    cxGrid1DBTableView1ENTRADAALSISTEMA: TcxGridDBColumn;
    cxGrid1DBTableView1CORRUPTOS: TcxGridDBColumn;
    cxGrid1DBTableView1REPETIDOS: TcxGridDBColumn;
    cxGrid1DBTableView1PROCESADOS: TcxGridDBColumn;
    cxGrid1DBTableView1PENDIENTES: TcxGridDBColumn;
    cxGrid1DBTableView1EOC: TcxGridDBColumn;
    cxGrid1DBTableView1INFODEIOP: TcxGridDBColumn;
    cxGrid1DBTableView1RESULTADOSINFORMATIVOSMASIMPORTANTES: TcxGridDBColumn;
    cxGrid1DBTableView1LMONITOREO: TcxGridDBColumn;
    cxGrid1DBTableView1USUARIO: TcxGridDBColumn;
    cxGrid1DBTableView1IDKD: TcxGridDBColumn;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    procedure cxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fefectcorreokd: TFefectcorreokd;

implementation
 uses Unit2,Unit1;
{$R *.dfm}

procedure TFefectcorreokd.cxButton1Click(Sender: TObject);
var
 desde,hasta:TDate;
begin
desde:=VarToDateTime(cxDateEdit1.Text);
hasta:=VarToDateTime(cxDateEdit2.Text);
  cxGrid1.Show;
  cxGrid1.BringToFront;
  if (Fmain.cargo='usuario') or (Fmain.cargo='admin')  then
      begin
        if (cxDateEdit1.Text='')or(cxDateEdit2.Text='') then
          ShowMessage('debe completar el rango')
        else
          begin
            DM.QefectcorreoskdU.ParamByName('PFECHA1').AsDate:=desde;
            DM.QefectcorreoskdU.ParamByName('PFECHA2').AsDate:=hasta;
            DM.QefectcorreoskdU.ParamByName('Punidad').AsString:=Fmain.unidad;
            DM.QefectcorreoskdU.Execute;
          end;
      end;
   if (Fmain.cargo='admin central') then
      begin
        if (cxDateEdit1.Text='')or(cxDateEdit2.Text='') then
          ShowMessage('debe completar el rango')
        else
          begin
            DM.Qefectcorreoskd.ParamByName('PFECHA1').AsDate:=desde;
            DM.Qefectcorreoskd.ParamByName('PFECHA2').AsDate:=hasta;
            DM.Qefectcorreoskd.Execute;
          end;
      end;
end;

procedure TFefectcorreokd.FormShow(Sender: TObject);
begin
cxGrid1DBTableView1.NavigatorButtons.Append.Visible:=False;
cxGrid1.Hide;
cxGrid2.Hide;
cxDateEdit1.Clear;
cxDateEdit2.Clear;

if Fmain.cargo='usuario' then
    begin
     cxGrid1DBTableView1.OptionsData.Editing:=False;
     cxGrid1DBTableView1.NavigatorButtons.Insert.Visible:=False;
     cxGrid1DBTableView1.NavigatorButtons.Post.Visible:=False;
     cxGrid1DBTableView1.NavigatorButtons.Append.Visible:=False;
     cxGrid1DBTableView1.NavigatorButtons.Delete.Visible:=False;
     cxGrid1DBTableView1.NavigatorButtons.Edit.Visible:=False;
     cxGrid1DBTableView1.OptionsSelection.CellSelect:=false;

     cxGrid2DBTableView1.OptionsData.Editing:=False;
     cxGrid2DBTableView1.NavigatorButtons.Insert.Visible:=False;
     cxGrid2DBTableView1.NavigatorButtons.Post.Visible:=False;
     cxGrid2DBTableView1.NavigatorButtons.Append.Visible:=False;
     cxGrid2DBTableView1.NavigatorButtons.Delete.Visible:=False;
     cxGrid2DBTableView1.NavigatorButtons.Edit.Visible:=False;
     cxGrid2DBTableView1.OptionsSelection.CellSelect:=false;
    end;
end;

end.
