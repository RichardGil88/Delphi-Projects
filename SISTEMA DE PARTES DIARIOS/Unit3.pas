unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvCircularProgress, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, Menus, dxGDIPlusClasses, ExtCtrls,
  cxTextEdit, cxLabel, cxMaskEdit, StdCtrls, cxButtons, cxControls,
  cxContainer, cxEdit, cxGroupBox, DB, DBAccess, Uni, MemDS, UniProvider,
  MySQLUniProvider,Unit1, cxGraphics, cxLookAndFeels, dxSkinBlueprint,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinHighContrast,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinSevenClassic, dxSkinSharpPlus, dxSkinTheAsphaltWorld, dxSkinVS2010,
  dxSkinWhiteprint;

 type
 TFLOGIN = class(TForm)
    cxGroupBox1: TcxGroupBox;
    img1: TImage;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxMaskEdit1: TcxMaskEdit;
    cxLabel2: TcxLabel;
    cxLabel1: TcxLabel;
    cxMaskEdit2: TcxMaskEdit;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxTextEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure cxMaskEdit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    login : byte;
    USUARIO,CARGO,UNIDAD:string;
    procedure Crearformas;
    procedure Conectarse;
    { Public declarations }
  end;

var
  FLOGIN: TFLOGIN;

implementation
  uses
  Unit2,Unit4, Unit5, Unit6, Unit7,Unit8,Unit9, Unit10,Unit11,Unit12, Unit13, Unit14,
  Unit15, Unit16, Unit17,Unit18,Unit19,Unit20,Unit21,Unit22,Unit23,Unit24, Unit25,Unit26,
  Unit27,Unit28,Unit29,Unit30, Unit31, Unit32, Unit33, Unit34, Unit35, Unit36, Unit37,
  Unit38, Unit39, Unit40,Unit41, Unit42, Unit72,Unit73,IniFiles;
{$R *.dfm}

procedure TFLOGIN.Conectarse;
var
 fichero:string;
 ini:TIniFile;
 varserver,vardatabase:string;
 varport:Integer;
begin
  try
    fichero:=ExtractFilePath(Application.ExeName)+'Configuración.ini';
    if FileExists(fichero) then
    begin
      INI := TIniFile.Create(fichero);

      if ini.SectionExists('Chequeo') then
      begin
       try
         varserver := INI.ReadString('Chequeo','Server','') ;
         vardatabase := INI.ReadString('Chequeo','Database','') ;
         varport := INI.ReadInteger('Chequeo','Port',3306);

         with DM.chequeo do
         begin
           Username:='root';
           Password:='windowsxp';
           Server:=varserver;
           Database:=vardatabase;
           Port:=varport;
           Connect;
         end;

       except
        ini.Free;
       end;
      end;

      if ini.SectionExists('Codificadores') then
      begin
       try
        varserver := INI.ReadString('Codificadores','Server','') ;
        vardatabase := INI.ReadString('Codificadores','Database','') ;
        varport := INI.ReadInteger('Codificadores','Port',3306);

        with DM.codificadores do
        begin
           Username:='root';
           Password:='windowsxp';
           Server:=varserver;
           Database:=vardatabase;
           Port:=varport;
           Connect;
        end;
       except
       ini.Free;
       end;
      end;

      if ini.SectionExists('Servicios') then
      begin
       try
        varserver := INI.ReadString('Servicios','Server','') ;
        vardatabase := INI.ReadString('Servicios','Database','') ;
        varport := INI.ReadInteger('Servicios','Port',3306);

        with DM.serv do
        begin
           Username:='root';
           Password:='windowsxp';
           Server:=varserver;
           Database:=vardatabase;
           Port:=varport;
           Connect;
        end;
       except
       ini.Free;
       end;
      end;

      if ini.SectionExists('Partes') then
      begin
       try
        varserver := INI.ReadString('Partes','Server','') ;
        vardatabase := INI.ReadString('Partes','Database','') ;
        varport := INI.ReadInteger('Partes','Port',3306);

        with DM.partes do
        begin
           Username:='root';
           Password:='windowsxp';
           Server:=varserver;
           Database:=vardatabase;
           Port:=varport;
           Connect;
        end;
       except
       ini.Free;
       end;
      end;

      ini.Free;
    end
    else
    begin
       ShowMessage('No existe el fichero "Configuración.ini"');
       Application.Terminate;
    end;
  except
    ShowMessage('Error al conectarse a la BD');
    Application.Terminate;
  end;
end;

procedure TFLOGIN.Crearformas;
begin
  try
    Application.CreateForm(TFcrearUsuario, FcrearUsuario);
    Application.CreateForm(TFmodpass, Fmodpass);
    Application.CreateForm(TFeliminar, Feliminar);
    Application.CreateForm(TFchequeos, Fchequeos);
    Application.CreateForm(TFmotivoAE, FmotivoAE);
    Application.CreateForm(TFllamadas, Fllamadas);
    Application.CreateForm(TFkmnopermanentes, Fkmnopermanentes);
    Application.CreateForm(TFasistencia, Fasistencia);
    Application.CreateForm(TFescrito, Fescrito);
    Application.CreateForm(TFunidad6, Funidad6);
    Application.CreateForm(TFoice, Foice);
    Application.CreateForm(TFincidencias, Fincidencias);
    Application.CreateForm(TFmodcargo, Fmodcargo);
    Application.CreateForm(TFavanzadas, Favanzadas);
    Application.CreateForm(TFbajachequeo, Fbajachequeo);
    Application.CreateForm(TFbajaKM, FbajaKM);
    Application.CreateForm(TFESTADOS, FESTADOS);
    Application.CreateForm(TFFORMASKM, FFORMASKM);
    Application.CreateForm(TFIDIOMAS, FIDIOMAS);
    Application.CreateForm(TFLUGARAPLICADO, FLUGARAPLICADO);
    Application.CreateForm(TFLUGARMONITOREO, FLUGARMONITOREO);
    Application.CreateForm(TFtipokm, Ftipokm);
    Application.CreateForm(TFtipodoc, Ftipodoc);
    Application.CreateForm(TFunidades, Funidades);
    Application.CreateForm(TFkmpermanentes, Fkmpermanentes);
    Application.CreateForm(TFcambiarestadoKM, FcambiarestadoKM);
    Application.CreateForm(TFKMPERM, FKMPERM);
    Application.CreateForm(TFefectasist, Fefectasist);
    Application.CreateForm(TFefectllam, Fefectllam);
    Application.CreateForm(TFavanzadasD, FavanzadasD);
    Application.CreateForm(TFefect6, Fefect6);
    Application.CreateForm(TFinterrupciones, Finterrupciones);
    Application.CreateForm(TFchequeosKD, FchequeosKD);
    Application.CreateForm(TFcorreosKD, FcorreosKD);
    Application.CreateForm(TFalertas, Falertas);
    Application.CreateForm(TFveralertas, Fveralertas);
    Application.CreateForm(TFefectcorreosKD, FefectcorreosKD);
    Application.CreateForm(TFGSA, FGSA);
    Application.CreateForm(TFefectGSA, FefectGSA);
    Application.CreateForm(TForm72, Form72);
    Application.CreateForm(TFbajachequeoKD, FbajachequeoKD);
    Application.CreateForm(TFefectcorreosKD, FefectcorreosKD);
  except
    ShowMessage('hay problemas con alguna forma');
  end;
end;

procedure TFLOGIN.cxButton1Click(Sender: TObject);
begin
  crearformas;

  if (cxMaskEdit2.Text='') or (cxMaskEdit1.Text='') then
  begin
    ShowMessage('DEBE LLENAR TODOS LOS DATOS');
  end
  else
   begin
     Conectarse;
     with dm do
      begin
        Quser.ParamByName('Puser').AsString:=cxMaskEdit2.Text;
        Quser.ParamByName('Ppass').AsString:=('12345'+cxMaskEdit1.Text);
        Qcargoyunidad.ParamByName('Puser').AsString:=cxMaskEdit2.Text;
        Quser.Execute;
        if (Quser.RecordCount>0) then
          begin
            Qcargoyunidad.Execute;
            USUARIO:=cxMaskEdit2.Text;
            Fmain.usuario:=USUARIO;
            CARGO :=Qcargoyunidad.FieldValues['cargo'];
            UNIDAD:=Qcargoyunidad.FieldValues['unidad'];
            Fmain.unidad:=UNIDAD;
            Fmain.cargo:=CARGO;

            if (Qcargoyunidad.FieldValues['cargo']='usuario')
            or (Qcargoyunidad.FieldValues['cargo']='admin') then
            begin
              Fmain.dxRibbon1Tabusuarios.Visible:=False;
            end;

            if UNIDAD='3' then
              begin
                Fmain.dxRibbon1Tabunidad4.Visible:=False;
                Fmain.dxRibbon1Tabunidad5.Visible:=False;
                Fmain.dxRibbon1Tabunidad6.Visible:=False;
                Fmain.dxRibbon1Tabunidad7.Visible:=False;
                Fmain.dxRibbon1Tabunidad9.Visible:=False;
                Fmain.dxRibbon1Tabgeneral.Visible:=False;
                Fmain.dxRibbon1Tabunidad11.Visible:=False;
              end
            else if UNIDAD='4' then
              begin
                Fmain.dxRibbon1Tabunidad3.Visible:=False;
                Fmain.dxRibbon1Tabunidad5.Visible:=False;
                Fmain.dxRibbon1Tabunidad6.Visible:=False;
                Fmain.dxRibbon1Tabunidad7.Visible:=False;
                Fmain.dxRibbon1Tabunidad9.Visible:=False;
                Fmain.dxRibbon1Tabgeneral.Visible:=False;
                Fmain.dxRibbon1Tabunidad11.Visible:=False;

              end
            else if UNIDAD='5' then
              begin
                Fmain.dxRibbon1Tabunidad3.Visible:=False;
                Fmain.dxRibbon1Tabunidad4.Visible:=False;
                Fmain.dxRibbon1Tabunidad6.Visible:=False;
                Fmain.dxRibbon1Tabunidad7.Visible:=False;
                Fmain.dxRibbon1Tabunidad9.Visible:=False;
                Fmain.dxRibbon1Tabgeneral.Visible:=False;
                Fmain.dxRibbon1Tabunidad11.Visible:=False;
              end
            else if UNIDAD='6' then
              begin
                Fmain.dxRibbon1Tabunidad3.Visible:=False;
                Fmain.dxRibbon1Tabunidad4.Visible:=False;
                Fmain.dxRibbon1Tabunidad5.Visible:=False;
                Fmain.dxRibbon1Tabunidad7.Visible:=False;
                Fmain.dxRibbon1Tabunidad9.Visible:=False;
                Fmain.dxRibbon1Tabgeneral.Visible:=False;
                Fmain.dxRibbon1Tabunidad11.Visible:=False;
              end
            else if UNIDAD='7' then
              begin
                Fmain.dxRibbon1Tabunidad3.Visible:=False;
                Fmain.dxRibbon1Tabunidad4.Visible:=False;
                Fmain.dxRibbon1Tabunidad5.Visible:=False;
                Fmain.dxRibbon1Tabunidad6.Visible:=False;
                Fmain.dxRibbon1Tabunidad9.Visible:=False;
                Fmain.dxRibbon1Tabgeneral.Visible:=False;
                Fmain.dxRibbon1Tabunidad11.Visible:=False;
              end
            else if UNIDAD='9' then
              begin
                Fmain.dxRibbon1Tabunidad3.Visible:=False;
                Fmain.dxRibbon1Tabunidad4.Visible:=False;
                Fmain.dxRibbon1Tabunidad5.Visible:=False;
                Fmain.dxRibbon1Tabunidad7.Visible:=False;
                Fmain.dxRibbon1Tabunidad6.Visible:=False;
                Fmain.dxRibbon1Tabgeneral.Visible:=False;
                Fmain.dxRibbon1Tabunidad11.Visible:=False;
              end
            else if UNIDAD='11' then
              begin
                Fmain.dxRibbon1Tabunidad3.Visible:=False;
                Fmain.dxRibbon1Tabunidad4.Visible:=False;
                Fmain.dxRibbon1Tabunidad5.Visible:=False;
                Fmain.dxRibbon1Tabunidad7.Visible:=False;
                Fmain.dxRibbon1Tabunidad9.Visible:=False;
                Fmain.dxRibbon1Tabunidad6.Visible:=False;
                Fmain.dxRibbon1Tabgeneral.Visible:=False;
              end
            else if UNIDAD='12' then
              begin
                Fmain.dxRibbon1Tabunidad3.Visible:=False;
                Fmain.dxRibbon1Tabunidad4.Visible:=False;
                Fmain.dxRibbon1Tabunidad5.Visible:=False;
                Fmain.dxRibbon1Tabunidad7.Visible:=False;
                Fmain.dxRibbon1Tabunidad9.Visible:=False;
                Fmain.dxRibbon1Tabunidad6.Visible:=False;
                Fmain.dxRibbon1Tabunidad11.Visible:=False;
              end;
              if (UNIDAD = '3') OR (UNIDAD = '4') OR (UNIDAD = '5') OR (UNIDAD = '6')
               OR (UNIDAD = '7') OR (UNIDAD = '9') OR (UNIDAD = '12') OR (UNIDAD = '10')
               OR (UNIDAD = '11') then
              begin
                 Fmain.Show;
                 FLOGIN.Hide;
              end
              else
               begin
                ShowMessage('Su undad no esta en el sistema');
                cxMaskEdit2.Clear;
               end;
          end
        else
          begin
            ShowMessage('USTED NO ESTA AUTORIZADO');
            cxMaskEdit1.Clear;
          end;
      end;
   end;
end;

procedure TFLOGIN.cxButton2Click(Sender: TObject);
begin
     Fmain.Hide;
     Application.Terminate;
end;

procedure TFLOGIN.cxMaskEdit1KeyPress(Sender: TObject; var Key: Char);
begin
 if Key=#13 then
 begin
  crearformas;

  if (cxMaskEdit2.Text='') or (cxMaskEdit1.Text='') then
  begin
    ShowMessage('DEBE LLENAR TODOS LOS DATOS');
  end
  else
   begin
    Conectarse;
     with dm do
      begin
        Quser.ParamByName('Puser').AsString:=cxMaskEdit2.Text;
        Quser.ParamByName('Ppass').AsString:=('12345'+cxMaskEdit1.Text);
        Qcargoyunidad.ParamByName('Puser').AsString:=cxMaskEdit2.Text;
        Quser.Execute;
        if (Quser.RecordCount>0) then
          begin
            Qcargoyunidad.Execute;
            USUARIO:=cxMaskEdit2.Text;
            Fmain.usuario:=USUARIO;
            CARGO :=Qcargoyunidad.FieldValues['cargo'];
            UNIDAD:=Qcargoyunidad.FieldValues['unidad'];
            Fmain.unidad:=UNIDAD;
            Fmain.cargo:=CARGO;

            if (Qcargoyunidad.FieldValues['cargo']='usuario')
            or (Qcargoyunidad.FieldValues['cargo']='admin') then
            begin
              Fmain.dxRibbon1Tabusuarios.Visible:=False;
            end;

            if UNIDAD='3' then
              begin
                Fmain.dxRibbon1Tabunidad4.Visible:=False;
                Fmain.dxRibbon1Tabunidad5.Visible:=False;
                Fmain.dxRibbon1Tabunidad6.Visible:=False;
                Fmain.dxRibbon1Tabunidad7.Visible:=False;
                Fmain.dxRibbon1Tabunidad9.Visible:=False;
                Fmain.dxRibbon1Tabgeneral.Visible:=False;
                Fmain.dxRibbon1Tabunidad11.Visible:=False;
              end
            else if UNIDAD='4' then
              begin
                Fmain.dxRibbon1Tabunidad3.Visible:=False;
                Fmain.dxRibbon1Tabunidad5.Visible:=False;
                Fmain.dxRibbon1Tabunidad6.Visible:=False;
                Fmain.dxRibbon1Tabunidad7.Visible:=False;
                Fmain.dxRibbon1Tabunidad9.Visible:=False;
                Fmain.dxRibbon1Tabgeneral.Visible:=False;
                Fmain.dxRibbon1Tabunidad11.Visible:=False;

              end
            else if UNIDAD='5' then
              begin
                Fmain.dxRibbon1Tabunidad3.Visible:=False;
                Fmain.dxRibbon1Tabunidad4.Visible:=False;
                Fmain.dxRibbon1Tabunidad6.Visible:=False;
                Fmain.dxRibbon1Tabunidad7.Visible:=False;
                Fmain.dxRibbon1Tabunidad9.Visible:=False;
                Fmain.dxRibbon1Tabgeneral.Visible:=False;
                Fmain.dxRibbon1Tabunidad11.Visible:=False;
              end
            else if UNIDAD='6' then
              begin
                Fmain.dxRibbon1Tabunidad3.Visible:=False;
                Fmain.dxRibbon1Tabunidad4.Visible:=False;
                Fmain.dxRibbon1Tabunidad5.Visible:=False;
                Fmain.dxRibbon1Tabunidad7.Visible:=False;
                Fmain.dxRibbon1Tabunidad9.Visible:=False;
                Fmain.dxRibbon1Tabgeneral.Visible:=False;
                Fmain.dxRibbon1Tabunidad11.Visible:=False;
              end
            else if UNIDAD='7' then
              begin
                Fmain.dxRibbon1Tabunidad3.Visible:=False;
                Fmain.dxRibbon1Tabunidad4.Visible:=False;
                Fmain.dxRibbon1Tabunidad5.Visible:=False;
                Fmain.dxRibbon1Tabunidad6.Visible:=False;
                Fmain.dxRibbon1Tabunidad9.Visible:=False;
                Fmain.dxRibbon1Tabgeneral.Visible:=False;
                Fmain.dxRibbon1Tabunidad11.Visible:=False;
              end
            else if UNIDAD='9' then
              begin
                Fmain.dxRibbon1Tabunidad3.Visible:=False;
                Fmain.dxRibbon1Tabunidad4.Visible:=False;
                Fmain.dxRibbon1Tabunidad5.Visible:=False;
                Fmain.dxRibbon1Tabunidad7.Visible:=False;
                Fmain.dxRibbon1Tabunidad6.Visible:=False;
                Fmain.dxRibbon1Tabgeneral.Visible:=False;
                Fmain.dxRibbon1Tabunidad11.Visible:=False;
              end
            else if UNIDAD='11' then
              begin
                Fmain.dxRibbon1Tabunidad3.Visible:=False;
                Fmain.dxRibbon1Tabunidad4.Visible:=False;
                Fmain.dxRibbon1Tabunidad5.Visible:=False;
                Fmain.dxRibbon1Tabunidad7.Visible:=False;
                Fmain.dxRibbon1Tabunidad9.Visible:=False;
                Fmain.dxRibbon1Tabunidad6.Visible:=False;
                Fmain.dxRibbon1Tabgeneral.Visible:=False;
              end
            else if UNIDAD='12' then
              begin
                Fmain.dxRibbon1Tabunidad3.Visible:=False;
                Fmain.dxRibbon1Tabunidad4.Visible:=False;
                Fmain.dxRibbon1Tabunidad5.Visible:=False;
                Fmain.dxRibbon1Tabunidad7.Visible:=False;
                Fmain.dxRibbon1Tabunidad9.Visible:=False;
                Fmain.dxRibbon1Tabunidad6.Visible:=False;
                Fmain.dxRibbon1Tabunidad11.Visible:=False;
              end;
              if (UNIDAD = '3') OR (UNIDAD = '4') OR (UNIDAD = '5') OR (UNIDAD = '6')
               OR (UNIDAD = '7') OR (UNIDAD = '9') OR (UNIDAD = '12') OR (UNIDAD = '10')
               OR (UNIDAD = '11') then
              begin
                 Fmain.Show;
                 FLOGIN.Hide;
              end
              else
               begin
                ShowMessage('Su undad no esta en el sistema');
                cxMaskEdit2.Clear;
               end;
          end
        else
          begin
            ShowMessage('USTED NO ESTA AUTORIZADO');
            cxMaskEdit1.Clear;
          end;
      end;
   end;
 end;

end;

procedure TFLOGIN.cxTextEdit1KeyPress(Sender: TObject; var Key: Char);
begin
 if Key=#13 then
   begin
     cxMaskEdit1.SetFocus;
   end;
end;

procedure TFLOGIN.FormShow(Sender: TObject);
begin
  cxMaskEdit2.SetFocus;
end;

end.
