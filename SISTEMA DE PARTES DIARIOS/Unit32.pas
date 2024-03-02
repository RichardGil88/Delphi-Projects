unit Unit32;

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
  dxSkinXmas2008Blue, Menus, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, DB, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, StdCtrls, cxButtons, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxLabel, cxGroupBox, dxSkinBlueprint,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinHighContrast,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinSevenClassic, dxSkinSharpPlus, dxSkinTheAsphaltWorld, dxSkinVS2010,
  dxSkinWhiteprint,cxGridExportLink;

type
  TFefectllam = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxDateEdit1: TcxDateEdit;
    cxDateEdit2: TcxDateEdit;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxGroupBox2: TcxGroupBox;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1UNIDAD: TcxGridDBColumn;
    cxGrid1DBTableView1LUGARDEMONITOREO: TcxGridDBColumn;
    cxGrid1DBTableView1FECHA: TcxGridDBColumn;
    cxGrid1DBTableView1CHEQUEOSKT: TcxGridDBColumn;
    cxGrid1DBTableView1LLAMENTRADAS: TcxGridDBColumn;
    cxGrid1DBTableView1LLAMSININTERES: TcxGridDBColumn;
    cxGrid1DBTableView1LLAMCONINTERES: TcxGridDBColumn;
    cxGrid1DBTableView1LLAMPENDIENTE: TcxGridDBColumn;
    cxGrid1DBTableView1VERSIONES: TcxGridDBColumn;
    cxGrid1DBTableView1PUBLICASAPLICADAS: TcxGridDBColumn;
    cxGrid1DBTableView1MCCENTRADAS: TcxGridDBColumn;
    cxGrid1DBTableView1MCCCONINTERES: TcxGridDBColumn;
    cxGrid1DBTableView1MCCSININTERES: TcxGridDBColumn;
    cxGrid1DBTableView1MCCPENDIENTE: TcxGridDBColumn;
    cxGrid1DBTableView1USUARIO: TcxGridDBColumn;
    cxGrid2DBTableView1UNIDAD: TcxGridDBColumn;
    cxGrid2DBTableView1LUGARDEMONITOREO: TcxGridDBColumn;
    cxGrid2DBTableView1FECHA: TcxGridDBColumn;
    cxGrid2DBTableView1CHEQUEOSKT: TcxGridDBColumn;
    cxGrid2DBTableView1LLAMENTRADAS: TcxGridDBColumn;
    cxGrid2DBTableView1LLAMSININTERES: TcxGridDBColumn;
    cxGrid2DBTableView1LLAMCONINTERES: TcxGridDBColumn;
    cxGrid2DBTableView1LLAMPENDIENTE: TcxGridDBColumn;
    cxGrid2DBTableView1VERSIONES: TcxGridDBColumn;
    cxGrid2DBTableView1PUBLICASAPLICADAS: TcxGridDBColumn;
    cxGrid2DBTableView1MCCENTRADAS: TcxGridDBColumn;
    cxGrid2DBTableView1MCCCONINTERES: TcxGridDBColumn;
    cxGrid2DBTableView1MCCSININTERES: TcxGridDBColumn;
    cxGrid2DBTableView1MCCPENDIENTE: TcxGridDBColumn;
    cxGrid2DBTableView1USUARIO: TcxGridDBColumn;
    cxButtonEXP: TcxButton;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxButtonEXPClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fefectllam: TFefectllam;

implementation
 uses Unit2,Unit1;
{$R *.dfm}

procedure TFefectllam.cxButton1Click(Sender: TObject);
begin
   cxGrid1.Show;
   cxGrid1.BringToFront;
  if (cxDateEdit1.Text='')or(cxDateEdit2.Text='') then
    ShowMessage('debe completar el rango')
  else
    begin
     if (Fmain.cargo='usuario') or (Fmain.cargo='admin')  then
      begin
        cxGrid1DBTableView1.DataController.DataSource:=DM.DSQllam1;
        cxGrid1DBTableView1.DataController.DataSource.DataSet.Active:=True;
        with DM.Qllam1 do
          begin
           ParamByName('PFECHA1').AsDate:=cxDateEdit1.Date;
           ParamByName('PFECHA2').AsDate:=cxDateEdit2.Date;
           ParamByName('Punidad').AsString:=Fmain.unidad;
           Execute;

          end;
      end;
      if (Fmain.cargo='admin central')  then
      begin
        cxGrid1DBTableView1.DataController.DataSource:=DM.DSQllam2;
        with DM.Qllam2 do
          begin
           ParamByName('PFECHA1').AsDate:=cxDateEdit1.Date;
           ParamByName('PFECHA2').AsDate:=cxDateEdit2.Date;
           Execute;
           cxGrid1DBTableView1.DataController.DataSource.DataSet.Active:=True;
          end;
      end;

    end;
end;

procedure TFefectllam.cxButton2Click(Sender: TObject);
begin
    cxGrid2.Show;
    cxGrid2.BringToFront;
    if (Fmain.cargo='usuario') or (Fmain.cargo='admin')  then
      begin
        cxGrid2DBTableView1.DataController.DataSource:=DM.DSQllam1;
        cxGrid2DBTableView1.DataController.DataSource.DataSet.Active:=True;
        with DM.Qllam1 do
          begin
           ParamByName('PFECHA1').AsDate:=cxDateEdit1.Date;
           ParamByName('PFECHA2').AsDate:=cxDateEdit2.Date;
           ParamByName('Punidad').AsString:=Fmain.unidad;
           Execute;
          end;
      end;
    if (Fmain.cargo='admin central')  then
      begin
        cxGrid2DBTableView1.DataController.DataSource:=DM.DSQllam2;
        cxGrid2DBTableView1.DataController.DataSource.DataSet.Active:=True;
        with DM.Qllam2 do
          begin
           ParamByName('PFECHA1').AsDate:=cxDateEdit1.Date;
           ParamByName('PFECHA2').AsDate:=cxDateEdit2.Date;
           Execute;
          end;
      end;
end;

procedure TFefectllam.cxButtonEXPClick(Sender: TObject);
begin
ExportGridToExcel(ExtractFilePath(Application.ExeName)+'EFECTIVIDAD DE LLAMADAS EXPORTADA.xls',cxGrid1,True,False);
ShowMessage('Su archivo ha sido exportado a: "'+ExtractFilePath(Application.ExeName)+'EFECTIVIDAD DE LLAMADAS EXPORTADA.xls"');
end;

procedure TFefectllam.FormShow(Sender: TObject);
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
