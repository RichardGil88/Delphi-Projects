unit Unit37;

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
  cxFilter, cxData, cxDataStorage, DB, cxDBData, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxLabel,
  StdCtrls, cxButtons, cxGroupBox, AdvCircularProgress, ExtCtrls, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox;

type
  TFcorreosKD = class(TForm)
    GB_CHEQUEOSKD: TcxGroupBox;
    cxGroupBox1: TcxGroupBox;
    button1: TcxButton;
    button2: TcxButton;
    cxLabel10: TcxLabel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel11: TcxLabel;
    cxLabel12: TcxLabel;
    cxLabel13: TcxLabel;
    cxLabel14: TcxLabel;
    cxLabel15: TcxLabel;
    cxGroupBox2: TcxGroupBox;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    cxDateEdit1: TcxDateEdit;
    cxMaskEdit1: TcxMaskEdit;
    cxMaskEdit2: TcxMaskEdit;
    cxMaskEdit3: TcxMaskEdit;
    cxTextEdit1: TcxTextEdit;
    cxTextEdit2: TcxTextEdit;
    cxMaskEdit4: TcxMaskEdit;
    cxTextEdit3: TcxTextEdit;
    cxMaskEdit5: TcxMaskEdit;
    cxMaskEdit6: TcxMaskEdit;
    cxMaskEdit7: TcxMaskEdit;
    cxTextEdit4: TcxTextEdit;
    cxMaskEdit8: TcxMaskEdit;
    cxTextEdit5: TcxTextEdit;
    AdvCircularProgress1: TAdvCircularProgress;
    cxLookupComboBox1: TcxLookupComboBox;
    cxLabel5: TcxLabel;
    cxGrid1DBTableView1IDKD: TcxGridDBColumn;
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
    procedure button2Click(Sender: TObject);
    procedure button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FcorreosKD: TFcorreosKD;

implementation
 uses Unit2,Unit1;
{$R *.dfm}

procedure TFcorreosKD.button1Click(Sender: TObject);
begin
if  (cxDateEdit1.Text='')or (cxMaskEdit1.Text='')or (cxTextEdit2.Text='')
  or(cxTextEdit2.Text='')or (cxTextEdit3.Text='')or (cxMaskEdit6.Text='')
  or(cxTextEdit4.Text='')or (cxTextEdit5.Text='')or (cxMaskEdit1.Text='')
  or(cxMaskEdit2.Text='')or (cxMaskEdit3.Text='')or (cxMaskEdit7.Text='')
  or(cxMaskEdit4.Text='')or (cxMaskEdit5.Text='')
  or (cxMaskEdit8.Text='')
 then
 ShowMessage('Debe llenar los campos que tienen *')
 else
 begin
   try
      with DM.UniSQL1 do
      begin
        SQL.Clear;
        SQL.Add('INSERT INTO `correos kd`(unidad,fecha,requerimientos,descubrimiento,"solicitudes rechazadas","motivo de rechazo","ficheros interceptados","entrada al sistema",');
        SQL.Add('corruptos,repetidos,procesados,pendientes,eoc,"info de i/op","RESULTADOS INFORMATIVOS MAS IMPORTANTES","L/MONITOREO",usuario)');
        SQL.Add('VALUES (:unidad,:fecha,:requerimientos,:descubrimiento,:solicitudesrechazadas,:motivorechazo,:ficherosinterceptados,:entradasistema,:corruptos,:repetidos,:procesados,:pendientes,:eoc,:infodeiop,:resultados,:lmonitoreo,:usuario); ');
        ParamByName('unidad').AsString:=Fmain.unidad;
        ParamByName('fecha').AsDateTime:=cxDateEdit1.Date;
        ParamByName('requerimientos').AsInteger:=StrToInt(cxMaskEdit1.Text);
        ParamByName('descubrimiento').AsInteger:=StrToInt(cxMaskEdit2.Text);
        ParamByName('solicitudesrechazadas').AsInteger:=StrToInt(cxMaskEdit3.Text);
        ParamByName('motivorechazo').AsString:=cxTextEdit1.Text;
        ParamByName('ficherosinterceptados').AsInteger:=StrToInt(cxTextEdit2.Text);
        ParamByName('entradasistema').AsInteger:=StrToInt(cxMaskEdit4.Text);
        ParamByName('corruptos').AsInteger:=StrToInt(cxTextEdit3.Text);
        ParamByName('repetidos').AsInteger:=StrToInt(cxMaskEdit5.Text);
        ParamByName('procesados').AsInteger:=StrToInt(cxMaskEdit6.Text);
        ParamByName('pendientes').AsInteger:=StrToInt(cxMaskEdit7.Text);
        ParamByName('eoc').AsInteger:=StrToInt(cxTextEdit4.Text);
        ParamByName('infodeiop').AsInteger:=StrToInt(cxMaskEdit8.Text);
        ParamByName('resultados').AsString:=cxTextEdit5.Text;
        ParamByName('lmonitoreo').AsString:=cxLookupComboBox1.Text;
        ParamByName('usuario').AsString:=Fmain.usuario;
        Execute;
        ShowMessage('Datos agregados con éxito');
        cxGrid1DBTableView1.DataController.DataSource.DataSet.Refresh;
         cxDateEdit1.Clear;
         cxTextEdit1.Clear;
         cxTextEdit2.Clear;
         cxTextEdit3.Clear;
         cxTextEdit4.Clear;
         cxTextEdit5.Clear;
         cxMaskEdit1.Clear;
         cxMaskEdit1.Clear;
         cxMaskEdit2.Clear;
         cxMaskEdit3.Clear;
         cxMaskEdit4.Clear;
         cxMaskEdit5.Clear;
         cxMaskEdit6.Clear;
         cxMaskEdit7.Clear;
         cxMaskEdit8.Clear;
         cxLookupComboBox1.Clear;

      end;
   except
     ShowMessage('No se Pudieron Insertar los Datos');
   end;
 end;

end;

procedure TFcorreosKD.button2Click(Sender: TObject);
begin
Close;
end;

procedure TFcorreosKD.FormShow(Sender: TObject);
begin
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
    if ((Fmain.cargo='usuario') or (Fmain.cargo='admin')) then
     begin
         cxGrid1DBTableView1.DataController.DataSource:=dm.DSQcorreoskd;
         DM.Qcorreoskd.ParamByName('Punidad').AsString:=fmain.unidad;
         DM.Qcorreoskd.Execute;
     end;
    if ( Fmain.cargo='admin central')  then
     begin
       FcorreosKD.cxGrid1DBTableView1.DataController.DataSource:=DM.DSTcorreosKD;
       dm.TcorreosKD.Open;
     end;

    cxLookupComboBox1.Properties.DataController.DataSet.Open;
    cxGrid1DBTableView1.NavigatorButtons.Append.Visible:=False;
    cxGrid1DBTableView1.NavigatorButtons.Insert.Visible:=False;

   cxDateEdit1.Clear;
   cxTextEdit1.Clear;
   cxTextEdit2.Clear;
   cxTextEdit3.Clear;
   cxTextEdit4.Clear;
   cxTextEdit5.Clear;
   cxMaskEdit1.Clear;
   cxMaskEdit1.Clear;
   cxMaskEdit2.Clear;
   cxMaskEdit3.Clear;
   cxMaskEdit4.Clear;
   cxMaskEdit5.Clear;
   cxMaskEdit6.Clear;
   cxMaskEdit7.Clear;
   cxMaskEdit8.Clear;
   cxLookupComboBox1.Clear;
end;

end.
