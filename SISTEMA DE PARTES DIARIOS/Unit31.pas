unit Unit31;

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
  cxData, cxDataStorage, DB, cxDBData, Menus, StdCtrls, cxButtons, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxLabel, cxGroupBox;

type
  TFefectasist = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxGroupBox2: TcxGroupBox;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxDateEdit1: TcxDateEdit;
    cxDateEdit2: TcxDateEdit;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGrid1DBTableView1FECHA: TcxGridDBColumn;
    cxGrid1DBTableView1UNIDAD: TcxGridDBColumn;
    cxGrid1DBTableView1LUGARDEMONITOREO: TcxGridDBColumn;
    cxGrid1DBTableView1KT: TcxGridDBColumn;
    cxGrid1DBTableView1KM: TcxGridDBColumn;
    cxGrid1DBTableView1KD: TcxGridDBColumn;
    cxGrid1DBTableView1ESCRITO: TcxGridDBColumn;
    cxGrid1DBTableView1ADMSIST: TcxGridDBColumn;
    cxGrid1DBTableView1OCIC: TcxGridDBColumn;
    cxGrid1DBTableView1DIRECCION: TcxGridDBColumn;
    cxGrid1DBTableView1CADETESISMI: TcxGridDBColumn;
    cxGrid1DBTableView1SERVDEGUARDIA: TcxGridDBColumn;
    cxGrid1DBTableView1COMISIONSERV: TcxGridDBColumn;
    cxGrid1DBTableView1ESTUDIOAUTORIZADO: TcxGridDBColumn;
    cxGrid1DBTableView1PREPMILITAR: TcxGridDBColumn;
    cxGrid1DBTableView1CHEQUEOMEDICO: TcxGridDBColumn;
    cxGrid1DBTableView1VAC: TcxGridDBColumn;
    cxGrid1DBTableView1LM: TcxGridDBColumn;
    cxGrid1DBTableView1LSS: TcxGridDBColumn;
    cxGrid1DBTableView1RS: TcxGridDBColumn;
    cxGrid1DBTableView1ENFERMO: TcxGridDBColumn;
    cxGrid1DBTableView1PROBPERSOFAMILIAR: TcxGridDBColumn;
    cxGrid1DBTableView1FRANCO: TcxGridDBColumn;
    cxGrid1DBTableView1OTROS: TcxGridDBColumn;
    cxGrid1DBTableView1USUARIO: TcxGridDBColumn;
    cxGrid2DBTableView1FECHA: TcxGridDBColumn;
    cxGrid2DBTableView1UNIDAD: TcxGridDBColumn;
    cxGrid2DBTableView1LUGARDEMONITOREO: TcxGridDBColumn;
    cxGrid2DBTableView1KT: TcxGridDBColumn;
    cxGrid2DBTableView1KM: TcxGridDBColumn;
    cxGrid2DBTableView1KD: TcxGridDBColumn;
    cxGrid2DBTableView1ESCRITO: TcxGridDBColumn;
    cxGrid2DBTableView1ADMSIST: TcxGridDBColumn;
    cxGrid2DBTableView1OCIC: TcxGridDBColumn;
    cxGrid2DBTableView1DIRECCION: TcxGridDBColumn;
    cxGrid2DBTableView1CADETESISMI: TcxGridDBColumn;
    cxGrid2DBTableView1SERVDEGUARDIA: TcxGridDBColumn;
    cxGrid2DBTableView1COMISIONSERV: TcxGridDBColumn;
    cxGrid2DBTableView1ESTUDIOAUTORIZADO: TcxGridDBColumn;
    cxGrid2DBTableView1PREPMILITAR: TcxGridDBColumn;
    cxGrid2DBTableView1CHEQUEOMEDICO: TcxGridDBColumn;
    cxGrid2DBTableView1VAC: TcxGridDBColumn;
    cxGrid2DBTableView1LM: TcxGridDBColumn;
    cxGrid2DBTableView1LSS: TcxGridDBColumn;
    cxGrid2DBTableView1RS: TcxGridDBColumn;
    cxGrid2DBTableView1ENFERMO: TcxGridDBColumn;
    cxGrid2DBTableView1PROBPERSOFAMILIAR: TcxGridDBColumn;
    cxGrid2DBTableView1FRANCO: TcxGridDBColumn;
    cxGrid2DBTableView1OTROS: TcxGridDBColumn;
    cxGrid2DBTableView1USUARIO: TcxGridDBColumn;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fefectasist: TFefectasist;

implementation
 uses Unit1,Unit2;
{$R *.dfm}

procedure TFefectasist.cxButton1Click(Sender: TObject);
begin
   cxGrid1.Show;
   cxGrid1.BringToFront;
  if (cxDateEdit1.Text='')or(cxDateEdit2.Text='') then
    ShowMessage('debe completar el rango')
  else
    begin
     if (Fmain.cargo='usuario') or (Fmain.cargo='admin')  then
      begin
        cxGrid1DBTableView1.DataController.DataSource:=DM.DSQasist1;
        cxGrid1DBTableView1.DataController.DataSource.DataSet.Active:=True;
        with DM.Qasist1 do
          begin
           ParamByName('PFECHA1').AsDate:=cxDateEdit1.Date;
           ParamByName('PFECHA2').AsDate:=cxDateEdit2.Date;
           ParamByName('Punidad').AsString:=Fmain.unidad;
           Execute;
          end;
      end;
      if (Fmain.cargo='admin central')  then
      begin
        cxGrid1DBTableView1.DataController.DataSource:=DM.DSQasist2;
        cxGrid1DBTableView1.DataController.DataSource.DataSet.Active:=True;
        with DM.Qasist2 do
          begin
           ParamByName('PFECHA1').AsDate:=cxDateEdit1.Date;
           ParamByName('PFECHA2').AsDate:=cxDateEdit2.Date;
           Execute;
          end;
      end;
    end;

end;

procedure TFefectasist.cxButton2Click(Sender: TObject);
begin
    cxGrid2.Show;
    cxGrid2.BringToFront;
    if (Fmain.cargo='usuario') or (Fmain.cargo='admin')  then
      begin
        cxGrid2DBTableView1.DataController.DataSource:=DM.DSQasist1;
        cxGrid2DBTableView1.DataController.DataSource.DataSet.Active:=True;
        with DM.Qasist1 do
          begin
           ParamByName('PFECHA1').AsDate:=cxDateEdit1.Date;
           ParamByName('PFECHA2').AsDate:=cxDateEdit2.Date;
           ParamByName('Punidad').AsString:=Fmain.unidad;
           Execute;
          end;
      end;
    if (Fmain.cargo='admin central')  then
      begin
        cxGrid2DBTableView1.DataController.DataSource:=DM.DSQasist2;
        cxGrid2DBTableView1.DataController.DataSource.DataSet.Active:=True;
        with DM.Qasist2 do
          begin
           ParamByName('PFECHA1').AsDate:=cxDateEdit1.Date;
           ParamByName('PFECHA2').AsDate:=cxDateEdit2.Date;
           Execute;
          end;
      end;
end;

procedure TFefectasist.FormShow(Sender: TObject);
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
