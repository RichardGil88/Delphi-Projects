unit Unit36;

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
  cxFilter, cxData, cxDataStorage, DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, cxLabel, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, StdCtrls, cxRadioGroup, cxGroupBox,
  cxButtons, cxCalendar,cxGridExportLink, ExtCtrls, AdvCircularProgress,
  AdvMenus;

type
  TFchequeosKD = class(TForm)
    GB_CHEQUEOSKD: TcxGroupBox;
    cxGroupBox1: TcxGroupBox;
    button1: TcxButton;
    button2: TcxButton;
    cxRadioGroup2: TcxRadioGroup;
    cxRadioButton3: TcxRadioButton;
    cxRadioButton4: TcxRadioButton;
    cxLookupComboBox3: TcxLookupComboBox;
    cxLabel10: TcxLabel;
    cxGroupBox2: TcxGroupBox;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    cxGrid1DBTableView1IDCHEQUEOSKD: TcxGridDBColumn;
    cxGrid1DBTableView1UNIDAD: TcxGridDBColumn;
    cxGrid1DBTableView1CLAVE: TcxGridDBColumn;
    cxGrid1DBTableView1CASO: TcxGridDBColumn;
    cxGrid1DBTableView1LMONITOREO: TcxGridDBColumn;
    cxGrid1DBTableView1TIPODECHEQUEO: TcxGridDBColumn;
    cxGrid1DBTableView1OBJETODEAPLICACION: TcxGridDBColumn;
    cxGrid1DBTableView1CHEQUEO: TcxGridDBColumn;
    cxGrid1DBTableView1OBJETIVO: TcxGridDBColumn;
    cxGrid1DBTableView1FASE: TcxGridDBColumn;
    cxGrid1DBTableView1FECHAALTA: TcxGridDBColumn;
    cxGrid1DBTableView1INTERESES: TcxGridDBColumn;
    cxGrid1DBTableView1ORGANODPTO: TcxGridDBColumn;
    cxGrid1DBTableView1OFICIAL: TcxGridDBColumn;
    cxGrid1DBTableView1NIVELDEAPROBACION: TcxGridDBColumn;
    cxGrid1DBTableView1COMPARTIMENTACION: TcxGridDBColumn;
    cxGrid1DBTableView1FECHABAJA: TcxGridDBColumn;
    cxGrid1DBTableView1CUMPLIMIENTOFINALIDAD: TcxGridDBColumn;
    cxGrid1DBTableView1MOTIVOSNOCUMPLIMIENTO: TcxGridDBColumn;
    cxGrid1DBTableView1USUARIO: TcxGridDBColumn;
    cxMaskEdit1: TcxMaskEdit;
    cxLabel1: TcxLabel;
    cxTextEdit1: TcxTextEdit;
    cxLabel2: TcxLabel;
    cxLookupComboBox1: TcxLookupComboBox;
    cxLabel3: TcxLabel;
    cxLookupComboBox2: TcxLookupComboBox;
    cxLabel4: TcxLabel;
    cxLookupComboBox4: TcxLookupComboBox;
    cxLabel5: TcxLabel;
    cxTextEdit2: TcxTextEdit;
    cxLabel6: TcxLabel;
    cxTextEdit3: TcxTextEdit;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxLookupComboBox5: TcxLookupComboBox;
    cxLabel9: TcxLabel;
    cxDateEdit1: TcxDateEdit;
    cxDateEdit2: TcxDateEdit;
    cxLabel11: TcxLabel;
    cxTextEdit4: TcxTextEdit;
    cxLabel12: TcxLabel;
    cxLookupComboBox6: TcxLookupComboBox;
    cxLabel13: TcxLabel;
    cxTextEdit5: TcxTextEdit;
    cxLabel14: TcxLabel;
    cxLabel15: TcxLabel;
    cxLookupComboBox7: TcxLookupComboBox;
    cxLookupComboBox8: TcxLookupComboBox;
    cxLabel16: TcxLabel;
    cxButton1: TcxButton;
    AdvCircularProgress1: TAdvCircularProgress;
    AdvPopupMenu1: TAdvPopupMenu;
    DarBaja1: TMenuItem;
    cxGrid1DBTableView1ESTADO: TcxGridDBColumn;
    procedure button2Click(Sender: TObject);
    procedure button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxRadioButton4Click(Sender: TObject);
    procedure cxRadioButton3Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure DarBaja1Click(Sender: TObject);
  private
    { Private declarations }
  public
  idchequeokd:Integer;
    { Public declarations }
  end;

var
  FchequeosKD: TFchequeosKD;
  idchequeokd:Integer;
implementation
 uses Unit2,Unit1,Unit73;
{$R *.dfm}

procedure TFchequeosKD.button1Click(Sender: TObject);
begin
 if (cxDateEdit1.Text='')or (cxMaskEdit1.Text='')or  (cxTextEdit2.Text='')
  or(cxTextEdit1.Text='')or (cxTextEdit2.Text='')or  (cxTextEdit3.Text='')
  or(cxTextEdit4.Text='')or (cxTextEdit5.Text='')or  (cxLookupComboBox1.Text='')
  or(cxLookupComboBox2.Text='')or (cxLookupComboBox4.Text='')
  or(cxLookupComboBox6.Text='')or (cxLookupComboBox7.Text='')or (cxLookupComboBox8.Text='')
 then
 ShowMessage('Debe llenar los campos que tienen *')
 else
 begin
   try
      with DM.UniSQL1 do
      begin
        SQL.Clear;
        SQL.Add('INSERT INTO `chequeos kd`(unidad,clave,caso,"l/monitoreo","tipo de chequeo","objeto de aplicacion",chequeo,objetivo,fase,"fecha alta",intereses,"organo/dpto",oficial');
        SQL.Add(',"nivel de aprobacion",compartimentacion,"fecha baja","cumplimiento finalidad","motivos no cumplimiento",estado,usuario)');
        SQL.Add('VALUES (:unidad,:clave,:caso,:lmonitoreo,:tipochequeo,:objetoaplicacion,:chequeo,:objetivo,:fase,:fechaalta,:intereses,:dpto,:oficial,:nivelaprobacion');
        SQL.Add(',:compartimentacion,:fechabaja,:cumplimiento,:motivos,:estado,:usuario);');
        ParamByName('unidad').AsString:=Fmain.unidad;
        ParamByName('clave').AsInteger:=StrToInt(cxMaskEdit1.Text);
        ParamByName('caso').AsString:=cxTextEdit1.Text;
        ParamByName('lmonitoreo').AsString:=cxLookupComboBox1.Text;
        ParamByName('tipochequeo').AsString:=cxLookupComboBox2.Text;
        ParamByName('objetoaplicacion').AsString:=cxLookupComboBox4.Text;
        ParamByName('chequeo').AsString:=cxTextEdit2.Text;
        ParamByName('objetivo').AsString:=cxTextEdit3.Text;
        ParamByName('fase').AsString:=cxLookupComboBox5.Text;
        ParamByName('fechaalta').AsDateTime:=cxDateEdit1.Date;
        ParamByName('intereses').AsString:=cxTextEdit4.Text;
        ParamByName('dpto').AsString:=cxLookupComboBox6.Text;
        ParamByName('oficial').AsString:=cxTextEdit5.Text;
        ParamByName('nivelaprobacion').AsString:=cxLookupComboBox7.Text;
        ParamByName('compartimentacion').AsString:=cxLookupComboBox8.Text;
        ParamByName('fechabaja').AsDateTime:=cxDateEdit2.Date;
        ParamByName('motivos').AsString:=cxLookupComboBox3.Text;
        ParamByName('estado').AsString:='AlTA';
        ParamByName('usuario').AsString:=Fmain.usuario;
        if cxRadioButton3.Checked = true then
          begin
           ParamByName('cumplimiento').AsInteger:=1;
          end
        else if cxRadioButton4.Checked = True then
          begin
            ParamByName('cumplimiento').AsInteger:=0;
          end;
       Execute;
       ShowMessage('Datos agregados con éxito');
       cxGrid1DBTableView1.DataController.DataSource.DataSet.Refresh;
       cxDateEdit1.Clear;
       cxDateEdit2.Clear;
       cxTextEdit1.Clear;
       cxTextEdit2.Clear;
       cxTextEdit3.Clear;
       cxTextEdit4.Clear;
       cxTextEdit5.Clear;
       cxLookupComboBox1.Clear;
       cxLookupComboBox2.Clear;
       cxLookupComboBox3.Clear;
       cxLookupComboBox4.Clear;
       cxLookupComboBox5.Clear;
       cxLookupComboBox6.Clear;
       cxLookupComboBox7.Clear;
       cxLookupComboBox8.Clear;
       cxRadioButton3.Checked:=False;
       cxRadioButton4.Checked:=False;

      end;
   except
     ShowMessage('No se Pudieron Insertar los Datos');
   end;
 end;

end;

procedure TFchequeosKD.button2Click(Sender: TObject);
begin
close;
end;

procedure TFchequeosKD.cxButton1Click(Sender: TObject);
begin
ExportGridToExcel('CHEQUEO KD EXPORTADO.xls',cxGrid1,True,False);
end;

procedure TFchequeosKD.cxGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
idchequeokd:=cxGrid1DBTableView1.DataController.DataSet.FieldByName('IDCHEQUEOSKD').AsInteger;
end;

procedure TFchequeosKD.cxRadioButton3Click(Sender: TObject);
begin
 cxLookupComboBox3.Enabled:=False;
end;

procedure TFchequeosKD.cxRadioButton4Click(Sender: TObject);
begin
 cxLookupComboBox3.Enabled:=true;
end;

procedure TFchequeosKD.DarBaja1Click(Sender: TObject);
begin
FbajachequeoKD.ShowModal;
FchequeosKD.cxGrid1DBTableView1.DataController.DataSource.DataSet.Refresh;
end;

procedure TFchequeosKD.FormShow(Sender: TObject);
begin
     if Fmain.cargo='admin central' then
     begin
       FchequeosKD.cxGrid1DBTableView1.DataController.DataSource:=DM.DSTchequeosKD;
       DM.TchequeosKD.Open;
       cxButton1.Visible:=true;
     end
     else
     begin
       cxButton1.Visible:=False;
     end;

   if Fmain.cargo='usuario' then
    begin
     FchequeosKD.cxGrid1DBTableView1.DataController.DataSource:=DM.DSQchequeoskd;
     DM.Qchequeoskd.ParamByName('Punidad').AsString:=fmain.unidad;
     DM.Qchequeoskd.Execute;
     cxGrid1DBTableView1.OptionsData.Editing:=False;
     cxGrid1DBTableView1.NavigatorButtons.Insert.Visible:=False;
     cxGrid1DBTableView1.NavigatorButtons.Post.Visible:=False;
     cxGrid1DBTableView1.NavigatorButtons.Append.Visible:=False;
     cxGrid1DBTableView1.NavigatorButtons.Delete.Visible:=False;
     cxGrid1DBTableView1.NavigatorButtons.Edit.Visible:=False;
     cxGrid1DBTableView1.OptionsSelection.CellSelect:=false;
    end;
   if Fmain.cargo='admin' then
    begin
     FchequeosKD.cxGrid1DBTableView1.DataController.DataSource:=DM.DSQchequeoskd;
     DM.Qchequeoskd.ParamByName('Punidad').AsString:=fmain.unidad;
     DM.Qchequeoskd.Execute;
    end;
    cxLookupComboBox3.Enabled:=False;
    cxGrid1DBTableView1.NavigatorButtons.Append.Visible:=False;
    cxGrid1DBTableView1.NavigatorButtons.Insert.Visible:=False;

    cxLookupComboBox1.Properties.ListSource.DataSet.Active:=True;
    cxLookupComboBox2.Properties.ListSource.DataSet.Active:=True;
    cxLookupComboBox3.Properties.ListSource.DataSet.Active:=True;
    cxLookupComboBox4.Properties.ListSource.DataSet.Active:=True;
    cxLookupComboBox5.Properties.ListSource.DataSet.Active:=True;
    cxLookupComboBox6.Properties.ListSource.DataSet.Active:=True;
    cxLookupComboBox7.Properties.ListSource.DataSet.Active:=True;
    cxLookupComboBox8.Properties.ListSource.DataSet.Active:=True;

end;

end.
