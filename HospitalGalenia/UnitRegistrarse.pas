unit UnitRegistrarse;

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
  dxSkinXmas2008Blue, Vcl.Menus, cxTextEdit, Vcl.StdCtrls, cxButtons, cxLabel,
  dxGDIPlusClasses, cxImage, cxGroupBox, IdBaseComponent, IdComponent,
  IdUDPBase, IdUDPClient, IdSNTP;

type
  TFormRegistrarse = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cxLabel1: TcxLabel;
    cxTextEdit1: TcxTextEdit;
    cxLabel2: TcxLabel;
    cxTextEdit2: TcxTextEdit;
    cxButton1: TcxButton;
    cxImage1: TcxImage;
    procedure FormActivate(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure conectarMySql;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxTextEdit2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure LeerINI;
    procedure Demo;
    var varserver:string;
    DiasRestantes:Int8;
  end;

var
  FormRegistrarse: TFormRegistrarse;

implementation

uses IniFiles, UDM;
{$R *.dfm}

procedure TFormRegistrarse.conectarMySql;
begin
   try
      LeerINI;

      with DM1.ConeccionGeneral do
      begin
         ProviderName:='MySQL';
         Server:=varserver;
         Port:=0;
         UserName:='root';
         Password:='Administrador123..';
         Database:='galeniacomedor';
         Connect;
      end;
   except
      ShowMessage('No se pudo conectar a la base de datos');
      Application.Terminate;
   end;
end;

procedure TFormRegistrarse.LeerINI;
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

procedure TFormRegistrarse.cxButton1Click(Sender: TObject);
var
 usuario,contraseña: string;
begin
  try
    usuario:=cxTextEdit1.Text;
    contraseña:=cxTextEdit2.Text;

    if (usuario = '') and (contraseña = '') then
    begin
      ShowMessage('Debe llenar los campos Usuario y Contraseña');
    end
    else
    begin
      conectarMySql;
//         DataModule1.Qlogin.ParamByName('Pusuario').AsString:=usuario;
//         DataModule1.Qlogin.ParamByName('Pcontraseña').AsString:=contraseña;
//         DataModule1.Qlogin.Execute;
//
//         if (DataModule1.Qlogin.RecordCount>0) then
//         begin
//           if DataModule1.Qlogin.FieldValues['Perfil']='Administrador' then
//           begin
//
//           end;
//           if DataModule1.Qlogin.FieldValues['Perfil']='Cocina' then
//           begin
//              FormPrincipal.cxTabSheet3.TabVisible:=False;
//           end;
//           if DataModule1.Qlogin.FieldValues['Perfil']='Nominas' then
//           begin
//              FormPrincipal.cxTabSheet1.TabVisible:=False;
//              FormPrincipal.cxTabSheet3.TabVisible:=False;
//           end;
//
//
           FormRegistrarse.Hide;
         //  Fmain.ShowModal;
//         end
//         else
//         ShowMessage('Usted no está autorizadoa entrar al sistema.');
    end;

  except

  end;
end;

procedure TFormRegistrarse.cxTextEdit2KeyPress(Sender: TObject; var Key: Char);
var
 usuario,contraseña,perfil: string;
begin
//  if Key=#13 then
//  begin
//    try
//      usuario:=cxTextEdit1.Text;
//      contraseña:=cxTextEdit2.Text;
//
//      if (usuario = '') and (contraseña = '') then
//      begin
//        ShowMessage('Debe llenar los campos Usuario y Contraseña');
//      end
//      else
//      begin
//         DataModule1.Qlogin.ParamByName('Pusuario').AsString:=usuario;
//         DataModule1.Qlogin.ParamByName('Pcontraseña').AsString:=contraseña;
//         DataModule1.Qlogin.Execute;
//
//         if (DataModule1.Qlogin.RecordCount>0) then
//         begin
//           if DataModule1.Qlogin.FieldValues['Perfil']='Administrador' then
//           begin
//
//           end;
//           if DataModule1.Qlogin.FieldValues['Perfil']='Cocina' then
//           begin
//              FormPrincipal.cxTabSheet3.TabVisible:=False;
//           end;
//           if DataModule1.Qlogin.FieldValues['Perfil']='Nominas' then
//           begin
//              FormPrincipal.cxTabSheet1.TabVisible:=False;
//              FormPrincipal.cxTabSheet3.TabVisible:=False;
//           end;
//
//
//           FormRegistrarse.Hide;
//           FormPrincipal.ShowModal;
//         end
//         else
//         ShowMessage('Usted no está autorizado a entrar al sistema.');
//      end;
//
//    except
//
//    end;
//  end;
end;

procedure TFormRegistrarse.Demo;
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

procedure TFormRegistrarse.FormActivate(Sender: TObject);
begin
  cxTextEdit1.SetFocus;
  //Demo;

//  try
//    conectarMySql;
//  except
//
//  end;
end;

procedure TFormRegistrarse.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
end;

end.
