unit Unit7;

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
  dxSkinXmas2008Blue, cxGroupBox, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, DB, cxDBData, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxLabel, cxTextEdit, cxMaskEdit,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxCalendar, cxCheckBox, StdCtrls,
  cxRadioGroup, Menus, cxButtons, cxGridCustomPopupMenu, cxGridPopupMenu,
  AdvMenus, cxMemo, cxGridExportLink, ExtCtrls, AdvCircularProgress;

type
  TFchequeos = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    cxMaskEdit1: TcxMaskEdit;
    cxLabel1: TcxLabel;
    cxLookupComboBox1: TcxLookupComboBox;
    cxLabel2: TcxLabel;
    cxMaskEdit2: TcxMaskEdit;
    cxLabel3: TcxLabel;
    cxTextEdit1: TcxTextEdit;
    cxLabel4: TcxLabel;
    cxDateEdit1: TcxDateEdit;
    cxLabel5: TcxLabel;
    cxTextEdit2: TcxTextEdit;
    cxLabel6: TcxLabel;
    cxLookupComboBox2: TcxLookupComboBox;
    cxLabel7: TcxLabel;
    cxLookupComboBox3: TcxLookupComboBox;
    cxLabel8: TcxLabel;
    cxTextEdit4: TcxTextEdit;
    cxLabel10: TcxLabel;
    cxLookupComboBox4: TcxLookupComboBox;
    cxLabel11: TcxLabel;
    cxTextEdit5: TcxTextEdit;
    cxLabel12: TcxLabel;
    cxCheckBox1: TcxCheckBox;
    button1: TcxButton;
    button2: TcxButton;
    cxRadioGroup2: TcxRadioGroup;
    cxRadioButton3: TcxRadioButton;
    cxRadioButton4: TcxRadioButton;
    cxTextEdit6: TcxTextEdit;
    cxLabel14: TcxLabel;
    AdvPopupMenu1: TAdvPopupMenu;
    DarBaja2: TMenuItem;
    PonerenAtencinEspecial1: TMenuItem;
    cxMemo1: TcxMemo;
    cxLabel16: TcxLabel;
    cxGrid2: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGrid1DBTableView1UNIDAD: TcxGridDBColumn;
    cxGrid1DBTableView1CLAVES: TcxGridDBColumn;
    cxGrid1DBTableView1LMONITOREO: TcxGridDBColumn;
    cxGrid1DBTableView1TELFONO: TcxGridDBColumn;
    cxGrid1DBTableView1ESTADO: TcxGridDBColumn;
    cxGrid1DBTableView1CASO: TcxGridDBColumn;
    cxGrid1DBTableView1FECHAALTA: TcxGridDBColumn;
    cxGrid1DBTableView1OBJETIVO: TcxGridDBColumn;
    cxGrid1DBTableView1FASE: TcxGridDBColumn;
    cxGrid1DBTableView1DPTO: TcxGridDBColumn;
    cxGrid1DBTableView1OFICIAL: TcxGridDBColumn;
    cxGrid1DBTableView1NIVELDEAPROBACION: TcxGridDBColumn;
    cxGrid1DBTableView1PERMANENTEONO: TcxGridDBColumn;
    cxGrid1DBTableView1ATENCIONESPECIAL: TcxGridDBColumn;
    cxGrid1DBTableView1MOTIVOAE: TcxGridDBColumn;
    cxGrid1DBTableView1CUMPLIMIENTO: TcxGridDBColumn;
    cxGrid1DBTableView1MOTIVO: TcxGridDBColumn;
    cxGrid1DBTableView1ESPECIALISTA: TcxGridDBColumn;
    cxGrid1DBTableView1FECHABAJA: TcxGridDBColumn;
    cxGrid1DBTableView1USUARIO: TcxGridDBColumn;
    cxGrid1DBTableView1INTERES: TcxGridDBColumn;
    cxGrid1DBTableView1IDCHEQUEO: TcxGridDBColumn;
    cxButton1: TcxButton;
    AdvCircularProgress1: TAdvCircularProgress;
    Permanente1: TMenuItem;
    QuitarAtencinEspecial1: TMenuItem;
    QuitarPermanente1: TMenuItem;
    procedure button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure button1Click(Sender: TObject);
    procedure DarBaja2Click(Sender: TObject);
    procedure PonerenAtencinEspecial1Click(Sender: TObject);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxButton1Click(Sender: TObject);
    procedure cxRadioButton4Click(Sender: TObject);
    procedure cxRadioButton3Click(Sender: TObject);
    procedure QuitarAtencinEspecial1Click(Sender: TObject);
    procedure Permanente1Click(Sender: TObject);
    procedure QuitarPermanente1Click(Sender: TObject);

  private
    { Private declarations }
  public
  var idchequeo,varclave:Integer;
      varfechaalta:TDateTime;
    { Public declarations }
  end;
  var
  Fchequeos: TFchequeos;

implementation
 uses Unit2, Unit1, Unit8,Unit18, Unit72;
{$R *.dfm}

procedure TFchequeos.button1Click(Sender: TObject);
begin
 if  (cxDateEdit1.Text='')or (cxTextEdit4.Text='')or (cxMemo1.Text='')
  or (cxMaskEdit1.Text='')or (cxMaskEdit2.Text='')or (cxTextEdit1.Text='')
  or (cxTextEdit2.Text='')or (cxTextEdit5.Text='')or (cxLookupComboBox2.Text='')
  or (cxLookupComboBox3.Text='')or (cxLookupComboBox4.Text='') or (cxLookupComboBox1.Text='')then
   ShowMessage('DEBE LLENAR LOS CAMPOS')
 else
 if (cxRadioButton3.Checked=False)and (cxRadioButton4.Checked=False) then
   begin
     ShowMessage('Debe llenar la atención especial');
   end
 else
 begin
   try
     with DM.UniSQL1 do
     begin
       SQL.Clear;
       SQL.Add('INSERT INTO `chequeos` (unidad,INTERES,claves,lmonitoreo,teléfono,estado,caso,fechaalta,objetivo,fase,dpto,oficial,NIVELDEAPROBACION,permanenteono,atencionespecial,motivoae,especialista,usuario)');
       SQL.Add('VALUES (:unidad,:INTERES,:claves,:lmonitoreo,:telefono,:estado,:caso,:fechaalta,:objetivo,:fase,:dpto,:oficial,:niveldeaprovación,:permanenteono,:atencionespecial,:motivoae,:especialista,:usuario);');
       ParamByName('unidad').AsString:=Fmain.unidad;
       ParamByName('claves').AsInteger:=StrToInt(cxMaskEdit1.Text);
       ParamByName('lmonitoreo').AsString:=cxLookupComboBox1.Text;
       ParamByName('telefono').AsString:=cxMaskEdit2.Text;
       ParamByName('caso').AsString:=cxTextEdit1.Text;
       ParamByName('fechaalta').AsDateTime:=cxDateEdit1.Date;
       ParamByName('objetivo').AsString:=cxTextEdit2.Text;
       ParamByName('fase').AsString:=cxLookupComboBox2.Text;
       ParamByName('dpto').AsString:=cxLookupComboBox3.Text;
       ParamByName('oficial').AsString:=cxTextEdit4.Text;
       ParamByName('niveldeaprovación').AsString:=cxLookupComboBox4.Text;
       ParamByName('especialista').AsString:=cxTextEdit5.Text;
       ParamByName('INTERES').AsString:=cxMemo1.Text;
       if cxCheckBox1.Checked then
       begin
        ParamByName('permanenteono').AsInteger:=1;
       end
       else
       begin
         ParamByName('permanenteono').AsInteger:=0;
       end;

       if cxRadioButton3.Checked then
       begin
        ParamByName('atencionespecial').AsInteger:=1;
       end
       else if cxRadioButton4.Checked then
       begin
         ParamByName('atencionespecial').AsInteger:=0;
       end;
       ParamByName('motivoae').AsString:=cxTextEdit6.Text;
       ParamByName('especialista').AsString:=cxTextEdit5.Text;
       ParamByName('estado').AsString:='ALTA';
       ParamByName('usuario').AsString:=Fmain.usuario;
       Execute;
       ShowMessage('DATOS INTRODUCIDOS CON EXITO');
       cxGrid1DBTableView1.DataController.DataSource.DataSet.Refresh;

       if Dialogs.MessageDlg('DESEA INTRODUCIRLE MAS DATOS A ESTE OBJETIVO'
       ,mtConfirmation,[mbYes, mbNo], 0, mbYes) = mrYes then
       begin
        cxMaskEdit1.Clear;
        cxMaskEdit2.Clear;
       end
       else
       begin
         if Dialogs.MessageDlg('DESEA INTRODUCIR UN OBJETIVO NUEVO'
          ,mtConfirmation,[mbYes, mbNo], 0, mbYes) = mrYes then
         begin
          cxDateEdit1.Clear;
          cxCheckBox1.Clear;
          cxLookupComboBox1.Clear;
          cxLookupComboBox2.Clear;
          cxLookupComboBox3.Clear;
          cxLookupComboBox4.Clear;
          cxMaskEdit1.Clear;
          cxMaskEdit2.Clear;
          cxRadioButton3.Checked:=False;
          cxRadioButton4.Checked:=False;
          cxTextEdit1.Clear;
          cxTextEdit2.Clear;
          cxTextEdit4.Clear;
          cxTextEdit5.Clear;
          cxTextEdit6.Clear;
          cxtextedit6.Enabled:=true;
          cxMemo1.Clear;
         end
         else
         begin
          Close;
         end;
       end;
     end;
   except
     ShowMessage('NO SE PUDIERON INTRODUCIR LOS DATOS');
   end;
   end;
end;

procedure TFchequeos.button2Click(Sender: TObject);
begin
Close;
end;

procedure TFchequeos.cxButton1Click(Sender: TObject);
begin
ExportGridToExcel(ExtractFilePath(Application.ExeName)+'CHEQUEO EXPORTADO.xls',cxGrid2,True,False);
ShowMessage('Su archivo ha sido exportado a: "'+ExtractFilePath(Application.ExeName)+'CHEQUEO EXPORTADO.xls"');
end;

procedure TFchequeos.cxGrid1DBTableView1CellClick(
Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
   idchequeo:=cxGrid1DBTableView1.DataController.DataSet.FieldByName('IDCHEQUEO').AsInteger;
end;

procedure TFchequeos.cxRadioButton3Click(Sender: TObject);
begin
if cxRadioButton3.Checked then
begin
  cxtextedit6.Enabled:=true;
end;
end;

procedure TFchequeos.cxRadioButton4Click(Sender: TObject);
begin
if cxRadioButton4.Checked then
begin
  cxtextedit6.Enabled:=False;
end;
end;

procedure TFchequeos.DarBaja2Click(Sender: TObject);
begin
Fbajachequeo.ShowModal;
Fchequeos.cxGrid1DBTableView1.DataController.DataSource.DataSet.Refresh;
end;

procedure TFchequeos.FormShow(Sender: TObject);
begin
  if (Fmain.cargo='admin central')  then
    begin
     dm.Tchequeos.Open;
     Fchequeos.cxGrid1DBTableView1.DataController.DataSource:=DM.DSchequeos;
     cxButton1.Visible:=True;
    end;
  if Fmain.cargo='usuario' then
    begin
     DM.QBYUchequeos.ParamByName('Punidad').AsString:=fmain.unidad;
     DM.QBYUchequeos.Execute;
     Fchequeos.cxGrid1DBTableView1.DataController.DataSource:=DM.DSQBYUchequeos;
     cxGrid1DBTableView1.OptionsData.Editing:=False;
     cxGrid1DBTableView1.NavigatorButtons.Insert.Visible:=False;
     cxGrid1DBTableView1.NavigatorButtons.Post.Visible:=False;
     cxGrid1DBTableView1.NavigatorButtons.Append.Visible:=False;
     cxGrid1DBTableView1.NavigatorButtons.Delete.Visible:=False;
     cxGrid1DBTableView1.NavigatorButtons.Edit.Visible:=False;
     cxGrid1DBTableView1.OptionsSelection.CellSelect:=false;
     cxButton1.Visible:=False;
    end;
  if (Fmain.cargo='admin') then
    begin
     DM.QBYUchequeos.ParamByName('Punidad').AsString:=fmain.unidad;
     DM.QBYUchequeos.Execute;
     Fchequeos.cxGrid1DBTableView1.DataController.DataSource:=DM.DSQBYUchequeos;
     cxGrid1DBTableView1.OptionsData.Editing:=False;
     cxGrid1DBTableView1.NavigatorButtons.Insert.Visible:=False;
     cxGrid1DBTableView1.NavigatorButtons.Post.Visible:=False;
     cxGrid1DBTableView1.NavigatorButtons.Append.Visible:=False;
     cxGrid1DBTableView1.NavigatorButtons.Delete.Visible:=False;
     cxGrid1DBTableView1.NavigatorButtons.Edit.Visible:=False;
     cxGrid1DBTableView1.OptionsSelection.CellSelect:=false;
     cxButton1.Visible:=False;
    end;

  cxtextedit6.Enabled:=true;
  cxGrid1DBTableView1.NavigatorButtons.Append.Visible:=False;
  cxGrid1DBTableView1.NavigatorButtons.Insert.Visible:=False;

  cxLookupComboBox1.Properties.ListSource.DataSet.Active:=True;
  cxLookupComboBox2.Properties.ListSource.DataSet.Active:=True;
  cxLookupComboBox3.Properties.ListSource.DataSet.Active:=True;
  cxLookupComboBox4.Properties.ListSource.DataSet.Active:=True;
  cxDateEdit1.Clear;
  cxCheckBox1.Clear;
  cxLookupComboBox1.Clear;
  cxLookupComboBox2.Clear;
  cxLookupComboBox3.Clear;
  cxLookupComboBox4.Clear;
  cxMaskEdit1.Clear;
  cxMaskEdit2.Clear;
  cxRadioButton3.Checked:=False;
  cxRadioButton4.Checked:=False;
  cxTextEdit1.Clear;
  cxTextEdit2.Clear;
  cxTextEdit4.Clear;
  cxTextEdit5.Clear;
  cxTextEdit6.Clear;
  cxMemo1.Clear;

end;

procedure TFchequeos.Permanente1Click(Sender: TObject);
begin
   with DM.UniSQL1 do
   begin
    try
     SQL.Clear;
     SQL.Add('update `chequeos` set `chequeos`.`PERMANENTEONO`=''1''');
     SQL.Add(' where `chequeos`.`IDCHEQUEO` =:Pid ;');
     ParamByName('Pid').AsInteger:=idchequeo;
     Execute;
     ShowMessage('LA CLAVE ESTA PUESTA PERMANENTE');
     cxGrid1DBTableView1.DataController.DataSource.DataSet.Refresh;
    except
       ShowMessage('LA CLAVE NO SE PUDO PONER PERMANENTE');
    end;
   end;
end;

procedure TFchequeos.PonerenAtencinEspecial1Click(Sender: TObject);
begin
   with DM.UniSQL1 do
   begin
    try
     fmotivoAE.ShowModal;
     SQL.Clear;
     SQL.Add('update `chequeos` set `chequeos`.`ATENCIONESPECIAL`=''1'',`chequeos`.`MOTIVOAE` =:Pmotivo');
     SQL.Add(' where `chequeos`.`IDCHEQUEO` =:Pid ;');
     if FmotivoAE.atencion='1' then
      begin
       ParamByName('Pmotivo').AsString:=FmotivoAE.motivo;
       ParamByName('Pid').AsInteger:=idchequeo;
       Execute;
       ShowMessage('LA CLAVE ESTA AHORA EN ATENCION ESPECIAL');
       cxGrid1DBTableView1.DataController.DataSource.DataSet.Refresh;
      end;
    except
       ShowMessage('LA CLAVE NO SE PUDO PONER EN ATENCION ESPECIAL');
    end;
   end;
end;

procedure TFchequeos.QuitarAtencinEspecial1Click(Sender: TObject);
begin
with DM.UniSQL1 do
   begin
    try
     SQL.Clear;
     SQL.Add('update `chequeos` set `chequeos`.`ATENCIONESPECIAL`=''0''');
     SQL.Add(' where `chequeos`.`IDCHEQUEO` =:Pid ;');
     ParamByName('Pid').AsInteger:=idchequeo;
     Execute;
     ShowMessage('LA CLAVE YA NO ESTA EN ATENCION ESPECIAL');
     cxGrid1DBTableView1.DataController.DataSource.DataSet.Refresh;

    except
       ShowMessage('LA CLAVE NO SE PUDO QUITAR DE ATENCION ESPECIAL');
    end;
   end;
end;

procedure TFchequeos.QuitarPermanente1Click(Sender: TObject);
begin
   with DM.UniSQL1 do
   begin
    try
     SQL.Clear;
     SQL.Add('update `chequeos` set `chequeos`.`PERMANENTEONO`=''0''');
     SQL.Add(' where `chequeos`.`IDCHEQUEO` =:Pid ;');
     ParamByName('Pid').AsInteger:=idchequeo;
     Execute;
     ShowMessage('LA CLAVE YA NO ESTA PERMANENTE');
     cxGrid1DBTableView1.DataController.DataSource.DataSet.Refresh;
    except
       ShowMessage('LA CLAVE NO SE PUDO QUITAR DE PERMANENTE');
    end;
   end;
end;

end.
