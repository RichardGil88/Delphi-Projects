unit Umain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxLookAndFeels, dxSkinsForm, cxGraphics, cxControls,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxGroupBox, cxLabel, Menus,
  StdCtrls, cxButtons,tareas, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, ComCtrls, ShlObj, cxShellCommon,
  cxShellTreeView, dxSkinBlueprint, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinHighContrast, dxSkinSevenClassic,
  dxSkinSharpPlus, dxSkinTheAsphaltWorld, dxSkinVS2010, dxSkinWhiteprint,
  clTcpClient, clFtp,clFtpUtils, cxMaskEdit, cxDropDownEdit, cxTextEdit, cxMemo;

type
  TFmain = class(TForm)
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    btn1: TButton;
    dxSkinController1: TdxSkinController;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxMemo1: TcxMemo;
    cxPopupEdit1: TcxPopupEdit;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn1Click(Sender: TObject);
  private   { Private declarations }
  public   { Public declarations }
  var
    varserver,vardatabase:string;
    varport:Integer;
  end;

var
  Fmain: TFmain;
  hilo1:thread1;

implementation
  uses IniFiles, UDM1,UDM2;
{$R *.dfm}

// Iniciar tarea
procedure TFmain.btn1Click(Sender: TObject);
begin
  try
    with DM1.cibercafe do
    begin
     Username:='root';
     Password:='windowsxp';
     Server:=varserver;
     Database:=vardatabase;
     Port:=varport;
     Connect;
    end;
  except
    ShowMessage('No se pudo conectar a la base de datos');
  end;

  if DM1.cibercafe.Connected = True then
  begin

    if btn1.Caption = 'Iniciar' then
    begin
      try
        btn1.Caption:='Detener';
        // Comenzar el Hilo
        Fmain.cxlabel4.caption:=DateTimeToStr(now);
        hilo1:=thread1.Create(true);
        hilo1.Priority:=tpHigher;
        hilo1.Resume;
      except

      end;
    end
    else
    begin
     // Detener el Hilo
      try
       btn1.Caption:='Iniciar';
       hilo1.Terminate;
      except

      end;
    end;

  end;
end;


procedure TFmain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if btn1.Caption = 'Detener' then
  begin
   hilo1.Terminate;
  end;
end;

procedure TFmain.FormShow(Sender: TObject);
var
 name:string;
 ini:TIniFile;
begin
  cxLabel2.Caption:='0';
  cxLabel4.Caption:='';
  cxLabel6.Caption:='';
  try
    name:=Copy(Application.ExeName,0,Length(Application.ExeName)-3)+'ini';
    INI := TIniFile.Create(name);
    if ini.SectionExists('cibercafe') then
    begin
      try
        varserver := INI.ReadString('cibercafe','Server','') ;
        vardatabase := INI.ReadString('cibercafe','Database','') ;
        varport := INI.ReadInteger('cibercafe','Port',9306);
      except
       ini.Free;
      end;
    end;
    ini.Free;
  except
    ShowMessage('Error al conectarse a la BD');
    Application.Terminate;
  end;
end;

end.
