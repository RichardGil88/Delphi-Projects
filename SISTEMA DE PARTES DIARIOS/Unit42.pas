unit Unit42;

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
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxLabel, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxGroupBox;

type
  TFefectGSA = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1trazasfijos: TcxGridDBColumn;
    cxGrid1DBTableView1trazasmovil: TcxGridDBColumn;
    cxGrid1DBTableView1mensajeracorta: TcxGridDBColumn;
    cxGrid1DBTableView1AnlisisTrfico: TcxGridDBColumn;
    cxGrid1DBTableView1usuario: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    cxLabel1: TcxLabel;
    cxDateEdit1: TcxDateEdit;
    cxDateEdit2: TcxDateEdit;
    cxLabel2: TcxLabel;
    cxGridDBTableView1fecha: TcxGridDBColumn;
    cxGrid1DBTableView1fecha: TcxGridDBColumn;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FefectGSA: TFefectGSA;

implementation
 uses Unit2,Unit1;
{$R *.dfm}

procedure TFefectGSA.cxButton1Click(Sender: TObject);
begin
  cxGrid1.Show;
  cxGrid1.BringToFront;
  if (cxDateEdit1.Text='')or(cxDateEdit2.Text='') then
    ShowMessage('debe completar el rango')
  else
   begin
     with DM.Qefecgsa do
      begin
       ParamByName('PFECHA1').AsDate:=cxDateEdit1.Date;
       ParamByName('PFECHA2').AsDate:=cxDateEdit2.Date;
       Execute;
       cxGrid1DBTableView1.DataController.DataSource:=DM.DSQefecgsa;
       cxGrid1DBTableView1.DataController.DataSource.DataSet.Active:=True;
       cxGrid1DBTableView1.DataController.Refresh;
      end;
   end;
end;

procedure TFefectGSA.cxButton2Click(Sender: TObject);
begin
  cxGrid2.Show;
  cxGrid2.BringToFront;
  if (cxDateEdit1.Text='')or(cxDateEdit2.Text='') then
    ShowMessage('debe completar el rango')
  else
    begin
       cxGridDBTableView1.DataController.DataSource:=DM.DSQefecgsa;
        with DM.Qefecgsa do
          begin
           ParamByName('PFECHA1').AsDate:=cxDateEdit1.Date;
           ParamByName('PFECHA2').AsDate:=cxDateEdit2.Date;
           Execute;
           cxGridDBTableView1.DataController.DataSource.DataSet.Active:=True;
          end;
    end;
end;

procedure TFefectGSA.FormShow(Sender: TObject);
 begin
  cxGrid1.Hide;
  cxGrid2.Hide;
  if Fmain.cargo='usuario' then
    begin
     cxGrid1DBTableView1.OptionsData.Editing:=False;
     cxGrid1DBTableView1.NavigatorButtons.Insert.Visible:=False;
     cxGrid1DBTableView1.NavigatorButtons.Post.Visible:=False;
     cxGrid1DBTableView1.NavigatorButtons.Append.Visible:=False;
     cxGrid1DBTableView1.NavigatorButtons.Delete.Visible:=False;
     cxGrid1DBTableView1.NavigatorButtons.Edit.Visible:=False;
     cxGrid1DBTableView1.OptionsSelection.CellSelect:=false;

     cxGridDBTableView1.OptionsData.Editing:=False;
     cxGridDBTableView1.NavigatorButtons.Insert.Visible:=False;
     cxGridDBTableView1.NavigatorButtons.Post.Visible:=False;
     cxGridDBTableView1.NavigatorButtons.Append.Visible:=False;
     cxGridDBTableView1.NavigatorButtons.Delete.Visible:=False;
     cxGridDBTableView1.NavigatorButtons.Edit.Visible:=False;
     cxGridDBTableView1.OptionsSelection.CellSelect:=false;
    end;
 end;

end.
