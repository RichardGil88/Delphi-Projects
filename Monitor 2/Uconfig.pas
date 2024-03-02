unit Uconfig;

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
  dxSkinXmas2008Blue, Menus, cxLabel, StdCtrls, cxButtons, cxTextEdit,
  cxGroupBox;


type
  TFconfig = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cxButton1: TcxButton;
    cxLabel4: TcxLabel;
    cxTextEdit4: TcxTextEdit;
    cxGroupBox2: TcxGroupBox;
    cxGroupBox3: TcxGroupBox;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    lbl5: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    edt6: TEdit;
    edt7: TEdit;
    edt8: TEdit;
    edt9: TEdit;
    edt10: TEdit;
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fconfig: TFconfig;

implementation

uses Umain,IniFiles;

{$R *.dfm}

procedure TFconfig.cxButton1Click(Sender: TObject);
var
path,name:string;
ini:TIniFile;
begin
  try
    path:=ExtractFilePath(Application.ExeName);
    name:=Copy(ExtractFileName(Application.ExeName),0,Length(ExtractFileName(Application.ExeName))-3)+'ini';
    INI := TIniFile.Create(ExtractFilePath(Application.ExeName)+name);
    try
     INI.WriteString('BD','UsuarioKD',edt1.Text);
     INI.WriteString('BD','ContraseñaKD',Fmain.encriptaPassword(edt2.Text));
     INI.WriteString('BD','ServerKD',edt3.Text);
     INI.WriteString('BD','bdKD',edt4.Text);
     INI.WriteString('BD','PortKD',edt5.Text);

     INI.WriteString('BD','UsuarioEst',edt6.Text) ;
     INI.WriteString('BD','ContraseñaEst',Fmain.encriptaPassword(edt7.Text));
     INI.WriteString('BD','ServerEst',edt8.Text);
     INI.WriteString('BD','bdEst',edt9.Text);
     INI.WriteString('BD','PortEst',edt10.Text);

     INI.WriteString('BD','Repeticion',cxTextEdit4.Text);
    finally
     ini.Free;
    end;
  except
    ShowMessage('Error Guardando en el Monitor.ini');
  end;
  Close;
end;

end.
