unit Unit41;

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
  cxFilter, cxData, cxDataStorage, DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, StdCtrls, cxButtons, cxGroupBox, cxTextEdit, cxMaskEdit, cxLabel,
  cxDropDownEdit, cxCalendar, AdvCircularProgress, ExtCtrls;

type
  TFGSA = class(TForm)
    cxGroupBox1: TcxGroupBox;
    button1: TcxButton;
    button2: TcxButton;
    cxGroupBox2: TcxGroupBox;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxMaskEdit1: TcxMaskEdit;
    cxMaskEdit2: TcxMaskEdit;
    cxMaskEdit3: TcxMaskEdit;
    cxMaskEdit4: TcxMaskEdit;
    cxGrid1DBTableView1trazasfijos: TcxGridDBColumn;
    cxGrid1DBTableView1trazasmovil: TcxGridDBColumn;
    cxGrid1DBTableView1mensajeracorta: TcxGridDBColumn;
    cxGrid1DBTableView1AnlisisTrfico: TcxGridDBColumn;
    cxGrid1DBTableView1usuario: TcxGridDBColumn;
    cxGrid1DBTableView1fecha: TcxGridDBColumn;
    cxDateEdit1: TcxDateEdit;
    cxLabel5: TcxLabel;
    AdvCircularProgress1: TAdvCircularProgress;
    procedure button2Click(Sender: TObject);
    procedure button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FGSA: TFGSA;


implementation
uses Unit2,Unit1;
{$R *.dfm}

procedure TFGSA.button1Click(Sender: TObject);
begin
  if (cxMaskEdit1.Text='')or(cxMaskEdit2.Text='')or(cxMaskEdit3.Text='')or(cxMaskEdit4.Text='') then
  begin
    ShowMessage('Debe llenar todos los Datos');
  end
  else
  begin
   try
     with DM.UniSQL1 do
     begin
       SQL.Clear;
       SQL.Add('Insert into GSA ("trazas fijos","trazas movil","mensajería corta","Análisis Tráfico",fecha,usuario)');
       SQL.Add('values(:Pfijos,:Pmovil,:Psms,:Ptraf,:Pfecha,:Pusuario);');
       ParamByName('Pfijos').AsInteger:=StrToInt(cxMaskEdit1.Text);
       ParamByName('Pmovil').AsInteger:=StrToInt(cxMaskEdit2.Text);
       ParamByName('Psms').AsInteger:=StrToInt(cxMaskEdit3.Text);
       ParamByName('Ptraf').AsInteger:=StrToInt(cxMaskEdit4.Text);
       ParamByName('Pfecha').AsDateTime:=cxDateEdit1.Date;
       ParamByName('Pusuario').AsString:=Fmain.usuario;
       cxMaskEdit1.Clear;
       cxMaskEdit2.Clear;
       cxMaskEdit3.Clear;
       cxMaskEdit4.Clear;
       Execute;
       cxGrid1DBTableView1.DataController.DataSet.Refresh;
       ShowMessage('Datos agregados con éxito');
     end;
   except
      ShowMessage('No se pudo introducir el dato');
   end;
  end;
end;

procedure TFGSA.button2Click(Sender: TObject);
begin
close;
end;

procedure TFGSA.FormShow(Sender: TObject);
begin
  cxGrid1DBTableView1.DataController.DataSource.DataSet.Active:=True;
  cxGrid1DBTableView1.NavigatorButtons.Append.Visible:=False;
  cxGrid1DBTableView1.NavigatorButtons.Insert.Visible:=False;
   if Fmain.cargo='usuario' then
    begin
     cxGrid1DBTableView1.OptionsData.Editing:=False;
     cxGrid1DBTableView1.NavigatorButtons.Insert.Visible:=False;
     cxGrid1DBTableView1.NavigatorButtons.Post.Visible:=False;
     cxGrid1DBTableView1.NavigatorButtons.Append.Visible:=False;
     cxGrid1DBTableView1.NavigatorButtons.Delete.Visible:=False;
     cxGrid1DBTableView1.NavigatorButtons.Edit.Visible:=False;
     cxGrid1DBTableView1.OptionsSelection.CellSelect:=false;
    end;

end;

end.
