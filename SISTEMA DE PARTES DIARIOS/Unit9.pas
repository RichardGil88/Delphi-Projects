unit Unit9;

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
  dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit, cxGroupBox, Menus, cxLabel,
  StdCtrls, cxButtons, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxCalendar, cxGridExportLink,
  ExtCtrls, AdvCircularProgress, dxSkinBlueprint, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinHighContrast, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinSevenClassic,
  dxSkinSharpPlus, dxSkinTheAsphaltWorld, dxSkinVS2010, dxSkinWhiteprint;

type
  TFllamadas = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    cxMaskEdit1: TcxMaskEdit;
    cxMaskEdit2: TcxMaskEdit;
    cxMaskEdit3: TcxMaskEdit;
    cxMaskEdit4: TcxMaskEdit;
    cxMaskEdit5: TcxMaskEdit;
    cxMaskEdit6: TcxMaskEdit;
    cxMaskEdit7: TcxMaskEdit;
    cxMaskEdit8: TcxMaskEdit;
    cxMaskEdit9: TcxMaskEdit;
    cxMaskEdit10: TcxMaskEdit;
    button1: TcxButton;
    button2: TcxButton;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    cxLabel9: TcxLabel;
    cxMaskEdit11: TcxMaskEdit;
    cxLookupComboBox1: TcxLookupComboBox;
    cxLabel12: TcxLabel;
    cxDateEdit1: TcxDateEdit;
    Fecha: TcxLabel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxButton1: TcxButton;
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
    cxGrid1DBTableView1IDLLAMADAS: TcxGridDBColumn;
    AdvCircularProgress1: TAdvCircularProgress;
    procedure button2Click(Sender: TObject);
    procedure button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fllamadas: TFllamadas;

implementation
 uses Unit2, Unit1;
{$R *.dfm}

procedure TFllamadas.button1Click(Sender: TObject);
begin
if (cxMaskEdit1.Text='')or (cxMaskEdit2.Text='')or (cxMaskEdit3.Text='')or
   (cxMaskEdit4.Text='')or (cxMaskEdit5.Text='')or (cxMaskEdit6.Text='')or
   (cxMaskEdit7.Text='')or (cxMaskEdit8.Text='')or (cxMaskEdit9.Text='')or
   (cxMaskEdit10.Text='')or (cxMaskEdit11.Text='')or (cxLookupComboBox1.Text='')
   or (cxDateEdit1.Text='')  then
   ShowMessage('DEBE LLENAR LOS DATOS')
else
   begin
    with DM.UniSQL1 do
    begin
     try
       begin
        SQL.Clear;
        SQL.Add('insert into `llamadas1`(unidad,"LUGAR DE MONITOREO",fecha,chequeoskt,llamentradas,llamsininteres,llamconinteres,llampendiente,versiones,publicasaplicadas,mccentradas,mccconinteres,mccsininteres,mccpendiente,usuario)');
        SQL.Add('values (:unidad,:LUGAR,:fecha,:chequeoskt,:llamentradas,:llamsininteres,:llamconinteres,:llampendiente,:versiones,:publicasaplicadas,:mccentradas,:mccconinteres,:mccsininteres,:mccpendiente,:usuario)');
        ParamByName('unidad').Asstring:=fmain.unidad;
        ParamByName('fecha').AsDateTime:=cxDateEdit1.Date;
        ParamByName('usuario').Asstring:=fmain.usuario;
        ParamByName('chequeoskt').AsInteger:=StrToInt(cxMaskEdit1.Text);
        ParamByName('llamentradas').AsInteger:=StrToInt(cxMaskEdit2.Text);
        ParamByName('llamsininteres').AsInteger:=StrToInt(cxMaskEdit3.Text);
        ParamByName('llamconinteres').AsInteger:=StrToInt(cxMaskEdit4.Text);
        ParamByName('versiones').AsInteger:=StrToInt(cxMaskEdit5.Text);
        ParamByName('publicasaplicadas').AsInteger:=StrToInt(cxMaskEdit6.Text);
        ParamByName('mccentradas').AsInteger:=StrToInt(cxMaskEdit7.Text);
        ParamByName('mccconinteres').AsInteger:=StrToInt(cxMaskEdit8.Text);
        ParamByName('mccsininteres').AsInteger:=StrToInt(cxMaskEdit9.Text);
        ParamByName('mccpendiente').AsInteger:=StrToInt(cxMaskEdit10.Text);
        ParamByName('llampendiente').AsInteger:=StrToInt(cxMaskEdit11.Text);
        ParamByName('LUGAR').AsString:=cxLookupComboBox1.Text;
        Execute;
        ShowMessage('DATOS AGREGADOS CON EXITO');
        cxMaskEdit1.Clear;
        cxMaskEdit2.Clear;
        cxMaskEdit3.Clear;
        cxMaskEdit4.Clear;
        cxMaskEdit5.Clear;
        cxMaskEdit6.Clear;
        cxMaskEdit7.Clear;
        cxMaskEdit8.Clear;
        cxMaskEdit9.Clear;
        cxMaskEdit10.Clear;
        cxMaskEdit11.Clear;
        cxLookupComboBox1.Clear;
        cxDateEdit1.Clear;
        cxGrid1DBTableView1.DataController.DataSource.DataSet.Refresh;
       end;
     except
         ShowMessage('No se pudieron agregar los datos');
     end;
    end;
   end;
end;

procedure TFllamadas.button2Click(Sender: TObject);
begin
Close;
end;

procedure TFllamadas.cxButton1Click(Sender: TObject);
begin
ExportGridToExcel(ExtractFilePath(Application.ExeName)+'LLAMADA EXPORTADA.xls',cxGrid1,True,False);
ShowMessage('Su archivo ha sido exportado a: "'+ExtractFilePath(Application.ExeName)+'LLAMADA EXPORTADA.xls"');
end;

procedure TFllamadas.FormShow(Sender: TObject);
begin
 cxGrid1DBTableView1.NavigatorButtons.Append.Visible:=False;
 cxGrid1DBTableView1.NavigatorButtons.Insert.Visible:=False;

 if (Fmain.cargo='admin central')  then
    begin
     cxGrid1DBTableView1.DataController.DataSource:=DM.DSllamadas;
     dm.Tllamadas.Open;
    end;
  if Fmain.cargo='usuario' then
    begin
     cxGrid1DBTableView1.DataController.DataSource:=DM.DSQBYUllamadas;
     DM.QBYUllamadas.ParamByName('Punidad').AsString:=fmain.unidad;
     DM.QBYUllamadas.Execute;
     cxGrid1DBTableView1.OptionsData.Editing:=False;
     cxGrid1DBTableView1.NavigatorButtons.Insert.Visible:=False;
     cxGrid1DBTableView1.NavigatorButtons.Post.Visible:=False;
     cxGrid1DBTableView1.NavigatorButtons.Append.Visible:=False;
     cxGrid1DBTableView1.NavigatorButtons.Delete.Visible:=False;
     cxGrid1DBTableView1.NavigatorButtons.Edit.Visible:=False;
     cxGrid1DBTableView1.OptionsSelection.CellSelect:=false;
     cxButton1.Hide;
    end;
  if (Fmain.cargo='admin') then
    begin
      cxGrid1DBTableView1.DataController.DataSource:=DM.DSQBYUllamadas;
      DM.QBYUllamadas.ParamByName('Punidad').AsString:=fmain.unidad;
      DM.QBYUllamadas.Execute;
      cxGrid1DBTableView1.OptionsData.Editing:=False;
      cxGrid1DBTableView1.NavigatorButtons.Insert.Visible:=False;
      cxGrid1DBTableView1.NavigatorButtons.Post.Visible:=False;
      cxGrid1DBTableView1.NavigatorButtons.Append.Visible:=False;
      cxGrid1DBTableView1.NavigatorButtons.Delete.Visible:=False;
      cxGrid1DBTableView1.NavigatorButtons.Edit.Visible:=False;
      cxGrid1DBTableView1.OptionsSelection.CellSelect:=false;
      cxButton1.Hide;
    end;

  cxLookupComboBox1.Properties.ListSource.DataSet.Active:=True;
  cxMaskEdit1.Clear;
  cxMaskEdit2.Clear;
  cxMaskEdit3.Clear;
  cxMaskEdit4.Clear;
  cxMaskEdit5.Clear;
  cxMaskEdit6.Clear;
  cxMaskEdit7.Clear;
  cxMaskEdit8.Clear;
  cxMaskEdit9.Clear;
  cxMaskEdit10.Clear;
  cxMaskEdit11.Clear;
  cxLookupComboBox1.Clear;
  cxDateEdit1.Clear;
end;

end.
