unit Uagregarantecedente;

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
  dxSkinXmas2008Blue, Menus, cxDropDownEdit, cxCalendar, cxMemo, cxMaskEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit, cxLabel,
  StdCtrls, cxButtons, cxGroupBox, cxCheckBox, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver;

type
  TFagregarantecedente = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    cxGroupBox3: TcxGroupBox;
    cxGroupBox4: TcxGroupBox;
    cxGroupBox5: TcxGroupBox;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    cxTextEdit1: TcxTextEdit;
    cxTextEdit2: TcxTextEdit;
    cxLookupComboBox1: TcxLookupComboBox;
    cxMemo1: TcxMemo;
    cxDateEdit1: TcxDateEdit;
    cxLookupComboBox2: TcxLookupComboBox;
    cxLookupComboBox3: TcxLookupComboBox;
    cxTextEdit3: TcxTextEdit;
    cxLookupComboBox4: TcxLookupComboBox;
    cxLookupComboBox5: TcxLookupComboBox;
    cxTextEdit4: TcxTextEdit;
    cxLabel12: TcxLabel;
    cxLabel13: TcxLabel;
    cxLabel14: TcxLabel;
    cxLabel15: TcxLabel;
    cxLabel16: TcxLabel;
    cxLabel17: TcxLabel;
    cxLabel19: TcxLabel;
    cxTextEdit5: TcxTextEdit;
    cxTextEdit6: TcxTextEdit;
    cxTextEdit7: TcxTextEdit;
    cxTextEdit8: TcxTextEdit;
    cxTextEdit9: TcxTextEdit;
    cxTextEdit10: TcxTextEdit;
    cxLookupComboBox6: TcxLookupComboBox;
    cxLabel21: TcxLabel;
    cxLabel22: TcxLabel;
    cxLabel23: TcxLabel;
    cxLabel24: TcxLabel;
    cxLabel25: TcxLabel;
    cxLabel26: TcxLabel;
    cxLabel27: TcxLabel;
    cxLabel28: TcxLabel;
    cxLabel29: TcxLabel;
    cxLabel30: TcxLabel;
    cxTextEdit12: TcxTextEdit;
    cxTextEdit14: TcxTextEdit;
    cxTextEdit15: TcxTextEdit;
    cxTextEdit16: TcxTextEdit;
    cxTextEdit17: TcxTextEdit;
    cxTextEdit18: TcxTextEdit;
    cxTextEdit19: TcxTextEdit;
    cxLookupComboBox8: TcxLookupComboBox;
    cxLookupComboBox9: TcxLookupComboBox;
    cxLabel32: TcxLabel;
    cxLabel33: TcxLabel;
    cxLabel34: TcxLabel;
    cxLabel35: TcxLabel;
    cxTextEdit20: TcxTextEdit;
    cxTextEdit21: TcxTextEdit;
    cxTextEdit22: TcxTextEdit;
    cxLookupComboBox10: TcxLookupComboBox;
    cxLabel38: TcxLabel;
    cxTextEdit24: TcxTextEdit;
    cxLabel39: TcxLabel;
    cxLookupComboBox11: TcxLookupComboBox;
    cxLabel42: TcxLabel;
    cxLookupComboBox14: TcxLookupComboBox;
    cxCheckBox1: TcxCheckBox;
    cxLabel44: TcxLabel;
    cxLookupComboBox16: TcxLookupComboBox;
    cxLabel43: TcxLabel;
    cxLookupComboBox15: TcxLookupComboBox;
    cxLabel45: TcxLabel;
    cxDateEdit4: TcxDateEdit;
    cxLabel20: TcxLabel;
    cxLookupComboBox7: TcxLookupComboBox;
    cxButton3: TcxButton;
    cxMaskEdit1: TcxMaskEdit;
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxLookupComboBox16Click(Sender: TObject);
    procedure cxCheckBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
  { Public declarations }
  var id:integer;
  end;

var
  Fagregarantecedente: TFagregarantecedente;

implementation
 uses UDM,Umain, Ulogin;
{$R *.dfm}

procedure TFagregarantecedente.cxButton1Click(Sender: TObject);
var id:integer;
begin
  id:=0;
  if  (cxTextEdit5.Text='')and
      (cxTextEdit6.Text='')and
      (cxTextEdit7.Text='')and
      (cxTextEdit8.Text='')and
      (cxTextEdit9.Text='')and
      (cxTextEdit10.Text='')and
      (cxTextEdit1.Text='')and
      (cxTextEdit2.Text='')and
      (cxTextEdit3.Text='')and
      (cxTextEdit4.Text='')and
      (cxTextEdit24.Text='')and
      (cxMemo1.Text='')and
      (cxLookupComboBox1.Text='')and
      (cxLookupComboBox2.Text='')and
      (cxLookupComboBox3.Text='')and
      (cxLookupComboBox4.Text='')and
      (cxLookupComboBox5.Text='')and
      (cxLookupComboBox6.Text='')and
      (cxLookupComboBox7.Text='')and
      (cxLookupComboBox8.Text='')and
      (cxLookupComboBox9.Text='')and
      (cxLookupComboBox10.Text='')and
      (cxLookupComboBox11.Text='')and
      (cxLookupComboBox14.Text='')and
      (cxLookupComboBox15.Text='')and
      (cxDateEdit1.Text='')and
      (cxTextEdit12.Text='')and
      (cxMaskEdit1.Text='')and
      (cxTextEdit14.Text='')and
      (cxTextEdit15.Text='')and
      (cxTextEdit16.Text='')and
      (cxTextEdit17.Text='')and
      (cxTextEdit18.Text='')and
      (cxTextEdit19.Text='')and
      (cxTextEdit20.Text='')and
      (cxTextEdit21.Text='')and
      (cxTextEdit22.Text='')
  then
  begin
     ShowMessage('No puede insertar con todos los campos vacios');
  end
  else
  begin
   with DM do
   begin
     try
       //---------- llenando la tabla de datos generales
       try
         with  insertarDatosGenerales do
         begin
           SQL.Clear;
           SQL.Add('insert into `objetivos datos generales` (Nombre,Nombre1,Apellido1,Apellido2,Alias,NumeroDeIdentidad,Pais,Fecha,Ktfecha)');
           SQL.Add('VALUES (:Pnombre,:Pnombre1,:Papellido1,:Papellido2,:Palias,:Pcarnet,:Ppais,:Pfecha,:Pktfecha);');
           ParamByName('Pnombre').AsString:=cxTextEdit5.Text;
           ParamByName('Pnombre1').AsString:=cxTextEdit6.Text;
           ParamByName('Papellido1').AsString:=cxTextEdit7.Text;
           ParamByName('Papellido2').AsString:=cxTextEdit8.Text;
           ParamByName('Palias').AsString:=cxTextEdit9.Text;
           ParamByName('Pcarnet').AsString:=cxTextEdit10.Text;
           ParamByName('Ppais').AsString:=cxLookupComboBox6.Text;
           ParamByName('Pktfecha').AsString:=Fmain.usuario;
           ParamByName('Pfecha').AsDateTime:=Now;
           Execute;
         end;
         lastid.Execute;
         id:=StrToInt(lastid.FieldValues['idObjetivo']);
       except
           ShowMessage('NO SE PUDIERON INTRODUCIR LOS DATOS GENERALES');
       end;
         //--------- llenado la tabla de datos laborales
       try
         with InsertarDatosLaborales do
         begin
            SQL.Clear;
            SQL.Add('insert into  `objetivos datos laborales` (idObjetivo,CentroDeTrabajo,Ocupacion,Cargo,Organismo,Fecha,Ktfecha) ');
            SQL.Add('VALUES (:Pid,:Pcentrodetrabajo,:Pocupacion,:Pcargo,:Porganismo,:Pfecha,:Pktfecha);');
            ParamByName('Pid').AsInteger:=id;
            ParamByName('Pcentrodetrabajo').AsString:=cxTextEdit20.Text;
            ParamByName('Pocupacion').AsString:=cxTextEdit21.Text;
            ParamByName('Pcargo').AsString:=cxTextEdit22.Text;
            ParamByName('Porganismo').AsString:=cxLookupComboBox10.Text;
            ParamByName('Pktfecha').AsString:=Fmain.usuario;
            ParamByName('Pfecha').AsDateTime:=Now;
            Execute;
         end;
       except
           ShowMessage('NO SE PUDIERON INTRODUCIR LOS DATOS LABORALES');
       end;
          //--------- llenado la tabla de datos residenciales
       try
         with InsertarDatosResidenciales do
         begin
            SQL.Clear;
            SQL.Add('insert into `objetivos datos residenciales` (idObjetivo,Calle,Calle1,Calle2,Numero,Edificio,Piso,Apartamento,Barrio,Municipio,Provincia,Fecha,Ktfecha)');
            SQL.Add('VALUES (:Pid,:Pcalle,:Pcalle1,:Pcalle2,:Pnumero,:Pedificio,:Ppiso,:Papartamento,:Pbarrio,:Pmunicipio,:Pprovincia,:Pfecha,:PKtfecha);');
            ParamByName('Pid').AsInteger:=id;
            ParamByName('Pcalle').AsString:=cxTextEdit12.Text;
            ParamByName('Pcalle1').AsString:=cxTextEdit17.Text;
            ParamByName('Pcalle2').AsString:=cxTextEdit18.Text;
            ParamByName('Pnumero').AsString:=cxMaskEdit1.Text;
            ParamByName('Pedificio').AsString:=cxTextEdit14.Text;
            ParamByName('Ppiso').AsString:=cxTextEdit15.Text;
            ParamByName('Papartamento').AsString:=cxTextEdit16.Text;
            ParamByName('Pbarrio').AsString:=cxTextEdit19.Text;
            ParamByName('Pmunicipio').AsString:=cxLookupComboBox8.Text;
            ParamByName('Pprovincia').AsString:=cxLookupComboBox9.Text;
            ParamByName('Pfecha').AsDateTime:=Now;
            ParamByName('Pktfecha').AsString:=Fmain.usuario;
            Execute;
         end;
       except
              ShowMessage('NO SE PUDIERON INTRODUCIR LOS DATOS RESIDENCIALES');
       end;
       //--------- llenado la tabla de datos Antecedentes
       try
         with InsertarDatosAntecedentes do
         begin
            SQL.Clear;
            SQL.Add('insert into `objetivos antecedentes` (idObjetivo,estado,fechaAlta,ktalta,fechaBaja,ktBaja,chequeo,sitio,');
            SQL.Add('tipodeTecnica,finalidadOperativa,cumplimientoFinalidad,motivoNoCumplimiento,atencionespecial,');
            SQL.Add('caso,interes,dptoSeccion,oficial,fase,niveldeAprobacion,niveldeCompartimentacion,categoriaOperativa,registro,ExpedienteOperativo)');
            SQL.Add('VALUES (:Pid,:Pestado,:PfechaAlta,:Pktalta,:PfechaBaja,:PktBaja,:Pchequeo,:sitio,:PtipodeTecnica,');
            SQL.Add(':PfinalidadOperativa,:PcumplimientoFinalidad,:PmotivoNoCumplimiento,:Patencionespecial,:Pcaso,:Pinteres,:PdptoSeccion,');
            SQL.Add(':Poficial,:Pfase,:PniveldeAprovacion,:PniveldeCompartimentacion,:PcategoriaOperativa,:Pregistro,:PExpedienteOperativo);');
            ParamByName('Pestado').AsString:='BAJA';
            ParamByName('PfechaAlta').AsDateTime:=cxDateEdit1.Date;
            ParamByName('PfechaBaja').AsDateTime:=cxDateEdit4.Date;
            ParamByName('Pid').AsInteger:=id;
            ParamByName('Pchequeo').AsString:=cxTextEdit24.Text;
            ParamByName('PtipodeTecnica').AsString:=cxLookupComboBox11.Text;
            ParamByName('PfinalidadOperativa').AsString:=cxLookupComboBox14.Text;
            ParamByName('PmotivoNoCumplimiento').AsString:=cxLookupComboBox16.Text;
            ParamByName('Patencionespecial').AsInteger:=StrToInt('0');
            ParamByName('Pcaso').AsString:=cxTextEdit2.Text;
            ParamByName('Pinteres').AsString:=cxMemo1.Text;
            ParamByName('PdptoSeccion').AsString:=cxLookupComboBox2.Text;
            ParamByName('Pregistro').AsString:=cxTextEdit1.Text;
            ParamByName('Poficial').AsString:=cxTextEdit3.Text;
            ParamByName('Pfase').AsString:=cxLookupComboBox1.Text;
            ParamByName('sitio').AsString:=cxLookupComboBox15.Text;
            ParamByName('PniveldeAprovacion').AsString:=cxLookupComboBox3.Text;
            ParamByName('PniveldeCompartimentacion').AsString:=cxLookupComboBox5.Text;
            ParamByName('PcategoriaOperativa').AsString:=cxLookupComboBox7.Text;
            ParamByName('PExpedienteOperativo').AsString:=cxLookupComboBox4.Text;
            ParamByName('Pktalta').AsString:=Fmain.usuario;
            ParamByName('PktBaja').AsString:=Fmain.usuario;
            if  cxLookupComboBox7.Text='' then
             begin
              ParamByName('PcategoriaOperativa').AsString:='Se Desconoce';
             end
            else
            begin
              ParamByName('PcategoriaOperativa').AsString:=cxLookupComboBox7.Text;
            end;
            if cxCheckBox1.Checked then
             begin
               ParamByName('PcumplimientoFinalidad').AsInteger:=StrToInt('1');
             end
            else
            begin
             ParamByName('PcumplimientoFinalidad').AsInteger:=StrToInt('0');
            end;
            Execute;
         end;
       except
         ShowMessage('NO SE PUDIERON INTRODUCIR LOS DATOS DE OBJETIVOS ANTECEDENTES');
       end;

       ShowMessage('DATOS INTRODUCIDOS CON EXITO');
       ShowMessage('SU NUMERO ID ES:'+IntToStr(ID));

     except
       ShowMessage('NO SE PUDIERON INTRODUCIR NINGUNO DE LOS DATOS');
     end;

     if Dialogs.MessageDlg('DESEA INTRODUCIRLE MAS DATOS AL MISMO OBJETIVO'
      ,mtConfirmation,[mbYes, mbNo], 0, mbYes) = mrYes
     then
       begin
          cxTextEdit24.Clear;
          cxLookupComboBox11.Clear;
          cxButton1.Visible:=False;
          cxButton3.Visible:=True;
       end
     else
     begin
       if Dialogs.MessageDlg('DESEA INTRODUCIR UN OBJETIVO NUEVO'
           ,mtConfirmation,[mbYes, mbNo], 0, mbYes) = mrYes
       then
         begin
            cxTextEdit5.Enabled:=True;
            cxTextEdit6.Enabled:=True;
            cxTextEdit7.Enabled:=True;
            cxTextEdit8.Enabled:=True;
            cxTextEdit9.Enabled:=True;
            cxTextEdit10.Enabled:=True;
            cxLookupComboBox6.Enabled:=True;
            cxTextEdit5.Clear;
            cxTextEdit6.Clear;
            cxTextEdit7.Clear;
            cxTextEdit8.Clear;
            cxTextEdit9.Clear;
            cxTextEdit10.Clear;
            cxTextEdit1.Clear;
            cxTextEdit2.Clear;
            cxTextEdit3.Clear;
            cxTextEdit4.Clear;
            cxTextEdit24.Clear;
            cxMemo1.Lines.Clear;
            cxLookupComboBox1.Clear;
            cxLookupComboBox2.Clear;
            cxLookupComboBox3.Clear;
            cxLookupComboBox4.Clear;
            cxLookupComboBox5.Clear;
            cxLookupComboBox6.Clear;
            cxLookupComboBox7.Clear;
            cxLookupComboBox8.Clear;
            cxLookupComboBox9.Clear;
            cxLookupComboBox10.Clear;
            cxLookupComboBox11.Clear;
            cxLookupComboBox14.Clear;
            cxLookupComboBox15.Clear;
            cxLookupComboBox16.Clear;
            cxDateEdit1.Clear;
            cxDateEdit4.Clear;
            cxTextEdit12.Clear;
            cxMaskEdit1.Clear;
            cxTextEdit14.Clear;
            cxTextEdit15.Clear;
            cxTextEdit16.Clear;
            cxTextEdit17.Clear;
            cxTextEdit18.Clear;
            cxTextEdit19.Clear;
            cxTextEdit20.Clear;
            cxTextEdit21.Clear;
            cxTextEdit22.Clear;
            cxButton1.Visible:=true;
            cxButton3.Visible:=false;
         end
       else
       close;
     end;
   end;
  end;
end;

procedure TFagregarantecedente.cxButton2Click(Sender: TObject);
begin
 with DM do
   begin
      InsertarDatosGenerales.SQL.Clear;
      InsertarDatosLaborales.SQL.Clear;
      InsertarDatosResidenciales.SQL.Clear;
      InsertarDatosAntecedentes.SQL.Clear;
   end;
 Close;
end;

procedure TFagregarantecedente.cxButton3Click(Sender: TObject);
begin
 try
  try
   DM.InsertarDatosLaborales.Execute;
  except
       ShowMessage('NO SE PUDIERON INTRODUCIR LOS DATOS LABORALES');
  end;

  try
   DM.InsertarDatosResidenciales.Execute;
  except
       ShowMessage('NO SE PUDIERON INTRODUCIR LOS DATOS RESIDENCIALES');
  end;

  try
   DM.InsertarDatosAntecedentes.Execute;
  except
       ShowMessage('NO SE PUDIERON INTRODUCIR LOS DATOS DE OBJETIVOS ANTECEDENTES');
  end;

 except
  ShowMessage('NO SE PUDIERON INTRODUCIR LOS DATOS ADICIONALES');
 end;

 ShowMessage('DATOS INTRODUCIDOS CON EXITO');

 if Dialogs.MessageDlg('DESEA INTRODUCIRLE MAS DATOS AL MISMO OBJETIVO '
     ,mtConfirmation,[mbYes, mbNo], 0, mbYes) = mrYes
 then
  begin
    cxTextEdit24.Clear;
    cxLookupComboBox11.Clear;
    cxButton1.Visible:=False;
    cxButton3.Visible:=True;
  end
 else
 begin
   if Dialogs.MessageDlg('DESEA INTRODUCIR UN OBJETIVO NUEVO'
     ,mtConfirmation,[mbYes, mbNo], 0, mbYes) = mrYes
   then
     begin
      cxTextEdit5.Enabled:=True;
      cxTextEdit6.Enabled:=True;
      cxTextEdit7.Enabled:=True;
      cxTextEdit8.Enabled:=True;
      cxTextEdit9.Enabled:=True;
      cxTextEdit10.Enabled:=True;
      cxLookupComboBox6.Enabled:=True;
      cxTextEdit5.Clear;
      cxTextEdit6.Clear;
      cxTextEdit7.Clear;
      cxTextEdit8.Clear;
      cxTextEdit9.Clear;
      cxTextEdit10.Clear;
      cxLookupComboBox6.Clear;
      cxTextEdit1.Clear;
      cxTextEdit2.Clear;
      cxTextEdit3.Clear;
      cxTextEdit4.Clear;
      cxTextEdit24.Clear;
      cxLookupComboBox1.Clear;
      cxLookupComboBox2.Clear;
      cxLookupComboBox3.Clear;
      cxLookupComboBox4.Clear;
      cxLookupComboBox5.Clear;
      cxLookupComboBox7.Clear;
      cxLookupComboBox11.Clear;
      cxLookupComboBox14.Clear;
      cxLookupComboBox15.Clear;
      cxLookupComboBox16.Clear;
      cxDateEdit1.Clear;
      cxDateEdit4.Clear;
      cxTextEdit12.Clear;
      cxMaskEdit1.Clear;
      cxTextEdit14.Clear;
      cxTextEdit15.Clear;
      cxTextEdit16.Clear;
      cxTextEdit17.Clear;
      cxTextEdit18.Clear;
      cxTextEdit19.Clear;
      cxLookupComboBox8.Clear;
      cxLookupComboBox9.Clear;
      cxTextEdit20.Clear;
      cxTextEdit21.Clear;
      cxTextEdit22.Clear;
      cxLookupComboBox10.Clear;
      cxButton1.Visible:=true;
      cxButton3.Visible:=false;
     end
   else
   close;
 end;
end;

procedure TFagregarantecedente.cxCheckBox1Click(Sender: TObject);
begin
if cxCheckBox1.Checked then
begin
  cxLookupComboBox16.Clear;
  cxLookupComboBox16.Enabled:=False;
end;
if cxCheckBox1.Checked=False then
begin
  cxLookupComboBox16.Enabled:=true;
end;
end;

procedure TFagregarantecedente.cxLookupComboBox16Click(Sender: TObject);
begin
if cxLookupComboBox16.Text='' then
 begin
    cxCheckBox1.Enabled:=True;
 end;
if cxLookupComboBox16.Text<>'' then
 begin
    cxCheckBox1.Enabled:=False;
 end;

end;

procedure TFagregarantecedente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  with DM do
  begin
    InsertarDatosGenerales.SQL.Clear;
    InsertarDatosLaborales.SQL.Clear;
    InsertarDatosResidenciales.SQL.Clear;
    InsertarDatosAntecedentes.SQL.Clear;
  end;
end;

procedure TFagregarantecedente.FormShow(Sender: TObject);
 begin
   cxLookupComboBox1.Properties.ListSource.DataSet.Active:=True;
   cxLookupComboBox2.Properties.ListSource.DataSet.Active:=True;
   cxLookupComboBox3.Properties.ListSource.DataSet.Active:=True;
   cxLookupComboBox4.Properties.ListSource.DataSet.Active:=True;
   cxLookupComboBox5.Properties.ListSource.DataSet.Active:=True;
   cxLookupComboBox6.Properties.ListSource.DataSet.Active:=True;
   cxLookupComboBox7.Properties.ListSource.DataSet.Active:=True;
   cxLookupComboBox8.Properties.ListSource.DataSet.Active:=True;
   cxLookupComboBox9.Properties.ListSource.DataSet.Active:=True;
   cxLookupComboBox10.Properties.ListSource.DataSet.Active:=True;
   cxLookupComboBox11.Properties.ListSource.DataSet.Active:=True;
   cxLookupComboBox14.Properties.ListSource.DataSet.Active:=True;
   cxLookupComboBox15.Properties.ListSource.DataSet.Active:=True;
   cxLookupComboBox16.Properties.ListSource.DataSet.Active:=True;

   cxTextEdit5.Clear;
   cxTextEdit6.Clear;
   cxTextEdit7.Clear;
   cxTextEdit8.Clear;
   cxTextEdit9.Clear;
   cxTextEdit10.Clear;
   cxLookupComboBox6.Clear;

   cxTextEdit5.Enabled:=False;
   cxTextEdit6.Enabled:=False;
   cxTextEdit7.Enabled:=False;
   cxTextEdit8.Enabled:=False;
   cxTextEdit9.Enabled:=False;
   cxTextEdit10.Enabled:=False;
   cxLookupComboBox6.Enabled:=False;
   cxButton1.Visible:=False;
   cxButton3.Visible:=True;

   cxTextEdit1.Clear;
   cxTextEdit2.Clear;
   cxTextEdit3.Clear;
   cxTextEdit4.Clear;
   cxTextEdit24.Clear;
   cxLookupComboBox1.Clear;
   cxLookupComboBox2.Clear;
   cxLookupComboBox3.Clear;
   cxLookupComboBox4.Clear;
   cxLookupComboBox5.Clear;
   cxLookupComboBox7.Clear;
   cxLookupComboBox11.Clear;
   cxLookupComboBox14.Clear;
   cxLookupComboBox15.Clear;
   cxLookupComboBox16.Clear;
   cxDateEdit1.Clear;
   cxDateEdit4.Clear;

   cxTextEdit12.Clear;
   cxMaskEdit1.Clear;
   cxTextEdit14.Clear;
   cxTextEdit15.Clear;
   cxTextEdit16.Clear;
   cxTextEdit17.Clear;
   cxTextEdit18.Clear;
   cxTextEdit19.Clear;
   cxLookupComboBox8.Clear;
   cxLookupComboBox9.Clear;

   cxTextEdit20.Clear;
   cxTextEdit21.Clear;
   cxTextEdit22.Clear;
   cxLookupComboBox10.Clear;

   cxTextEdit5.Enabled:=true;
   cxTextEdit6.Enabled:=true;
   cxTextEdit7.Enabled:=true;
   cxTextEdit8.Enabled:=true;
   cxTextEdit9.Enabled:=true;
   cxTextEdit10.Enabled:=true;
   cxLookupComboBox6.Enabled:=true;
   cxButton1.Visible:=True;
   cxButton3.Visible:=False;
   with DM do
   begin
      InsertarDatosGenerales.SQL.Clear;
      InsertarDatosLaborales.SQL.Clear;
      InsertarDatosResidenciales.SQL.Clear;
      InsertarDatosAntecedentes.SQL.Clear;
   end;
 end;

end.
