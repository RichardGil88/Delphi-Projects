unit ULogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxTextEdit, cxLabel,
  cxGroupBox, dxGDIPlusClasses, cxImage;

type
  TFLogin = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cxLabel1: TcxLabel;
    cxTextEdit1: TcxTextEdit;
    cxLabel2: TcxLabel;
    cxTextEdit2: TcxTextEdit;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxImage1: TcxImage;
    procedure FormActivate(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure conectarMySql;
    procedure cxTextEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure cxButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure LeerINI;
    procedure Demo;
    function pMes (mes : integer) : string;
    var varserver:string;
    DiasRestantes:Int8;
  end;

var
  FLogin: TFLogin;

implementation

{$R *.dfm}

uses IniFiles, UDM, Umain, UDMMateriales, UDmMedicamentos,
     UDMServImg, UDMServHosp, UDMEquipoMedico, UDMServLab, UDMServMed,
     UDMTerInt, UDMTrasAmb, UDMMembresia, UDMPaquetes,UDMCamHiper,
     UDMMedNuc, UDMCuenta;
{$R *.dfm}

procedure TFLogin.conectarMySql;
begin
   try
      LeerINI;

      with DmMateriales.ConeccionMateriales do
      begin
        ProviderName:='MySQL';
        Server:=varserver;
        Port:=0;
        UserName:='root';
        Password:='Administrador123..';
        Database:='hospitalgalenia';
        Connect;
      end;
       with DmMateriales.ConeccionMaterialesVer do
      begin
        ProviderName:='MySQL';
       // Server:='192.168.11.3';
        Server:=varserver;
        Port:=0;
        UserName:='root';
        Password:='Administrador123..';
        Database:='hospitalgalenia';
        Connect;
      end;

       with DmMedicamentos.ConeccionMedicamentos do
      begin
        ProviderName:='MySQL';
       // Server:='192.168.11.3';
        Server:=varserver;
        Port:=0;
        UserName:='root';
        Password:='Administrador123..';
        Database:='hospitalgalenia';
        Connect;
      end;
      with DmMedicamentos.ConeccionMedicamentosVer do
      begin
        ProviderName:='MySQL';
       // Server:='192.168.11.3';
        Server:=varserver;
        Port:=0;
        UserName:='root';
        Password:='Administrador123..';
        Database:='hospitalgalenia';
        Connect;
      end;

      with DMServImg.ConeccionServImg do
      begin
        ProviderName:='MySQL';
       // Server:='192.168.11.3';
        Server:=varserver;
        Port:=0;
        UserName:='root';
        Password:='Administrador123..';
        Database:='hospitalgalenia';
        Connect;
      end;
      with DMServImg.ConeccionServImgVer do
      begin
        ProviderName:='MySQL';
       // Server:='192.168.11.3';
        Server:=varserver;
        Port:=0;
        UserName:='root';
        Password:='Administrador123..';
        Database:='hospitalgalenia';
        Connect;
      end;

      with DMServHosp.ConeccionServHosp do
      begin
        ProviderName:='MySQL';
       // Server:='192.168.11.3';
        Server:=varserver;
        Port:=0;
        UserName:='root';
        Password:='Administrador123..';
        Database:='hospitalgalenia';
        Connect;
      end;
      with DMServHosp.ConeccionServHospVer do
      begin
        ProviderName:='MySQL';
       // Server:='192.168.11.3';
        Server:=varserver;
        Port:=0;
        UserName:='root';
        Password:='Administrador123..';
        Database:='hospitalgalenia';
        Connect;
      end;

      with DMEquipoMedico.ConeccionEquipoMed do
      begin
        ProviderName:='MySQL';
       // Server:='192.168.11.3';
        Server:=varserver;
        Port:=0;
        UserName:='root';
        Password:='Administrador123..';
        Database:='hospitalgalenia';
        Connect;
      end;
      with DMEquipoMedico.ConeccionServHospVer do
      begin
        ProviderName:='MySQL';
       // Server:='192.168.11.3';
        Server:=varserver;
        Port:=0;
        UserName:='root';
        Password:='Administrador123..';
        Database:='hospitalgalenia';
        Connect;
      end;

      with DMServLab.ConeccionServLab do
      begin
        ProviderName:='MySQL';
       // Server:='192.168.11.3';
        Server:=varserver;
        Port:=0;
        UserName:='root';
        Password:='Administrador123..';
        Database:='hospitalgalenia';
        Connect;
      end;
      with DMServLab.ConeccionServLabVer do
      begin
        ProviderName:='MySQL';
       // Server:='192.168.11.3';
        Server:=varserver;
        Port:=0;
        UserName:='root';
        Password:='Administrador123..';
        Database:='hospitalgalenia';
        Connect;
      end;

      with DMServMed.ConeccionServMed do
      begin
        ProviderName:='MySQL';
       // Server:='192.168.11.3';
        Server:=varserver;
        Port:=0;
        UserName:='root';
        Password:='Administrador123..';
        Database:='hospitalgalenia';
        Connect;
      end;
      with DMServMed.ConeccionServMedVer do
      begin
        ProviderName:='MySQL';
       // Server:='192.168.11.3';
        Server:=varserver;
        Port:=0;
        UserName:='root';
        Password:='Administrador123..';
        Database:='hospitalgalenia';
        Connect;
      end;

      with DMTerInt.ConeccionTerInt do
      begin
        ProviderName:='MySQL';
       // Server:='192.168.11.3';
        Server:=varserver;
        Port:=0;
        UserName:='root';
        Password:='Administrador123..';
        Database:='hospitalgalenia';
        Connect;
      end;
      with DMTerInt.ConeccionTerIntVer do
      begin
        ProviderName:='MySQL';
       // Server:='192.168.11.3';
        Server:=varserver;
        Port:=0;
        UserName:='root';
        Password:='Administrador123..';
        Database:='hospitalgalenia';
        Connect;
      end;

      with DMTrasAmb.ConeccionTrasAmb do
      begin
        ProviderName:='MySQL';
       // Server:='192.168.11.3';
        Server:=varserver;
        Port:=0;
        UserName:='root';
        Password:='Administrador123..';
        Database:='hospitalgalenia';
        Connect;
      end;
      with DMTrasAmb.ConeccionTrasAmbVer do
      begin
        ProviderName:='MySQL';
       // Server:='192.168.11.3';
        Server:=varserver;
        Port:=0;
        UserName:='root';
        Password:='Administrador123..';
        Database:='hospitalgalenia';
        Connect;
      end;

      with DMMembresia.ConeccionMemb do
      begin
        ProviderName:='MySQL';
       // Server:='192.168.11.3';
        Server:=varserver;
        Port:=0;
        UserName:='root';
        Password:='Administrador123..';
        Database:='hospitalgalenia';
        Connect;
      end;
      with DMMembresia.ConeccionMembVer do
      begin
        ProviderName:='MySQL';
       // Server:='192.168.11.3';
        Server:=varserver;
        Port:=0;
        UserName:='root';
        Password:='Administrador123..';
        Database:='hospitalgalenia';
        Connect;
      end;

      with DMPaquetes.ConeccionPaq do
      begin
        ProviderName:='MySQL';
       // Server:='192.168.11.3';
        Server:=varserver;
        Port:=0;
        UserName:='root';
        Password:='Administrador123..';
        Database:='hospitalgalenia';
        Connect;
      end;
      with DMPaquetes.ConeccionPaqVer do
      begin
        ProviderName:='MySQL';
       // Server:='192.168.11.3';
        Server:=varserver;
        Port:=0;
        UserName:='root';
        Password:='Administrador123..';
        Database:='hospitalgalenia';
        Connect;
      end;

      with DMCamHiper.ConeccionCamHiper do
      begin
        ProviderName:='MySQL';
       // Server:='192.168.11.3';
        Server:=varserver;
        Port:=0;
        UserName:='root';
        Password:='Administrador123..';
        Database:='hospitalgalenia';
        Connect;
      end;
      with DMCamHiper.ConeccionCamHiperVer do
      begin
        ProviderName:='MySQL';
       // Server:='192.168.11.3';
        Server:=varserver;
        Port:=0;
        UserName:='root';
        Password:='Administrador123..';
        Database:='hospitalgalenia';
        Connect;
      end;

      with DMMedNuc.ConeccionMedNuc do
      begin
        ProviderName:='MySQL';
       // Server:='192.168.11.3';
        Server:=varserver;
        Port:=0;
        UserName:='root';
        Password:='Administrador123..';
        Database:='hospitalgalenia';
        Connect;
      end;
      with DMMedNuc.ConeccionMedNucVer do
      begin
        ProviderName:='MySQL';
       // Server:='192.168.11.3';
        Server:=varserver;
        Port:=0;
        UserName:='root';
        Password:='Administrador123..';
        Database:='hospitalgalenia';
        Connect;
      end;

      with DM1.ConeccionGeneral do
      begin
        ProviderName:='MySQL';
       // Server:='192.168.11.3';
        Server:=varserver;
        Port:=0;
        UserName:='root';
        Password:='Administrador123..';
        Database:='hospitalgalenia';
        Connect;
      end;

      with DMCuenta.ConeccionGeneral do
      begin
        ProviderName:='MySQL';
       // Server:='192.168.11.3';
        Server:=varserver;
        Port:=0;
        UserName:='root';
        Password:='Administrador123..';
        Database:='hospitalgalenia';
        Connect;
      end;

   except
      ShowMessage('No se pudo conectar a la base de datos');
      Application.Terminate;
   end;
end;

procedure TFLogin.LeerINI;
var ini:TIniFile;
archivo:string;

begin
   archivo:=ExtractFilePath(Application.ExeName)+'Servidor.ini';
   INI := TIniFile.Create(archivo);

    if ini.SectionExists('INI') then
    begin
       try
         varserver := INI.ReadString('INI','server','') ;
       except
         ini.Free;
       end;
    end;
end;

function TFLogin.pMes(mes: integer): string;
begin
  case mes of
    1 : result := 'ENERO';
    2 : result := 'FEBRERO';
    3 : result := 'MARZO';
    4 : result := 'ABRIL';
    5 : result := 'MAYO';
    6 : result := 'JUNIO';
    7 : result := 'JULIO';
    8 : result := 'AGOSTO';
    9 : result := 'SEPTIEMBRE';
    10 : result := 'OCTUBRE';
    11 : result := 'NOVIEMBRE';
    12 : result := 'DICIEMBRE';
  end;
end;

procedure TFLogin.cxButton1Click(Sender: TObject);
var
 usuario,contraseña: string;
 myYear, myMonth, myDay : Word;

begin
  try
    usuario:=cxTextEdit1.Text;
    contraseña:=cxTextEdit2.Text;

    DecodeDate(now,myYear,myMonth,myDay);

    if (usuario = '') and (contraseña = '') then
    begin
      ShowMessage('Debe llenar los campos Usuario y Contraseña');
    end
    else
    begin
       conectarMySql;
       DM1.Qlogin.ParamByName('Pusuario').AsString:=usuario;
       DM1.Qlogin.ParamByName('Pcontraseña').AsString:=contraseña;
       DM1.Qlogin.Execute;

       if (DM1.Qlogin.RecordCount>0) then
       begin
         if DM1.Qlogin.FieldValues['Perfil']='Administrador' then
         begin
           Fmain.cxlabel72.Visible:=False;
         //  Fmain.cxTabSheet49.TabVisible:=False;
         end;
         if DM1.Qlogin.FieldValues['Perfil']='Usuario' then
         begin
            Fmain.cxTabSheet1.TabVisible:=False;
            Fmain.cxTabSheet10.TabVisible:=False;
            Fmain.cxTabSheet9.TabVisible:=False;
            Fmain.cxTabSheet8.Caption:='';
            Fmain.cxButton11.Visible:=False;
            Fmain.cxlabel72.caption:= 'LISTA DE PRECIOS VIGENCIA: '+Pmes(myMonth)+'/'+intToStr(myYear);
         end;

         if Fmain.LogginCerrar='ParaAbrir' then
         begin
           FLogin.CloseModal;
           FLogin.Close;
           Fmain.cxPageControl1.Visible:=True;
         end
         else
         if Fmain.LogginCerrar='ParaCerrar' then
         begin
           Application.Terminate;
         end;
       end
       else
       ShowMessage('Usted no tiene autorización para entrar al sistema.');
    end;

  except

  end;
end;

procedure TFLogin.cxButton2Click(Sender: TObject);
begin
  if Fmain.LogginCerrar='ParaAbrir' then
  begin
    Application.Terminate;
  end
  else
  if Fmain.LogginCerrar='ParaCerrar' then
  begin
    FLogin.Close;
  end;

end;

procedure TFLogin.cxTextEdit2KeyPress(Sender: TObject; var Key: Char);
var
 usuario,contraseña: string;
 myYear, myMonth, myDay : Word;
begin
  if Key=#13 then
  begin
     try
        usuario:=cxTextEdit1.Text;
        contraseña:=cxTextEdit2.Text;

        DecodeDate(now,myYear,myMonth,myDay);

        if (usuario = '') and (contraseña = '') then
        begin
          ShowMessage('Debe llenar los campos Usuario y Contraseña');
        end
        else
        begin
           conectarMySql;
           DM1.Qlogin.ParamByName('Pusuario').AsString:=usuario;
           DM1.Qlogin.ParamByName('Pcontraseña').AsString:=contraseña;
           DM1.Qlogin.Execute;

           if (DM1.Qlogin.RecordCount>0) then
           begin
             if DM1.Qlogin.FieldValues['Perfil']='Administrador' then
             begin
                Fmain.cxlabel72.Visible:=False;
             //   Fmain.cxTabSheet49.TabVisible:=False;
             end;
             if DM1.Qlogin.FieldValues['Perfil']='Usuario' then
             begin
                Fmain.cxTabSheet1.TabVisible:=False;
                Fmain.cxTabSheet10.TabVisible:=False;
                Fmain.cxTabSheet9.TabVisible:=False;
                Fmain.cxTabSheet8.Caption:='';
                Fmain.cxButton11.Visible:=False;
                Fmain.cxlabel72.caption:= 'LISTA DE PRECIOS VIGENCIA: '+Pmes(myMonth)+'/'+intToStr(myYear);
             end;

             if Fmain.LogginCerrar='ParaAbrir' then
             begin
               FLogin.CloseModal;
               FLogin.Close;
               Fmain.cxPageControl1.Visible:=True;
             end
             else
             if Fmain.LogginCerrar='ParaCerrar' then
             begin
               Application.Terminate;
             end;
           end
           else
           ShowMessage('Usted no tiene autorización para entrar al sistema.');
        end;

     except

     end;
  end;
end;

procedure TFLogin.Demo;
var TiempoInternet,TiempoLocal,TiempoBD,TiempoNuevo:TDate;
dia,mes,ano:Word;
begin
//  try
//     try
//      IdSNTP1.Host := 'time.windows.com';
//      TiempoInternet:= IdSNTP1.DateTime;
//      TiempoLocal := Date;
//
//       DecodeDate(TiempoInternet,ano,mes,dia);
//     except
//       DecodeDate(Date,ano,mes,dia);
//
//     end;
//
//     DiasRestantes:= Abs ( Trunc(encodedate(ano,mes,dia))-Trunc(encodedate(2020,11,17)) );
//     Label1.Caption:='Le quedan '+IntToStr(diasrestantes)+ ' días de prueba.' ;
//
//     if TiempoLocal >= encodedate(2020,11,17)  then
//     begin
//       ShowMessage('Demo Vencido');
//      // cxButton1.Enabled:=False;
//       Application.Terminate;
//     end;
//     if TiempoInternet >= encodedate(2020,11,17) then
//     begin
//       ShowMessage('Demo Vencido');
//      // cxButton1.Enabled:=False;
//       Application.Terminate;
//     end;
//
//
//
//  except
//
//  end;
//

end;

procedure TFLogin.FormActivate(Sender: TObject);
begin
  cxTextEdit1.SetFocus;
end;

procedure TFLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 //
end;

end.
