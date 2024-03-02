unit Umain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,IniFiles,Unit1, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Menus, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, StdCtrls, cxButtons, cxControls, cxContainer, cxEdit,
  AbBrowse, AbZBrows, AbZipper, AbBase, AbMeter, cxLabel, clMailMessage,
  clTcpClient, clMC, clSmtp, dxSkinsForm, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  dxSkinBlueprint, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinHighContrast, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinSevenClassic, dxSkinSharpPlus,
  dxSkinTheAsphaltWorld, dxSkinVS2010, dxSkinWhiteprint, ComCtrls, ExtCtrls;

type

  TFMain = class(TForm)
    dxSkinController1: TdxSkinController;
    cxPopupEdit1: TcxPopupEdit;
    mmoLogText: TMemo;
    AbZipper1: TAbZipper;
    AbVCLMeterLink1: TAbVCLMeterLink;
    Panel1: TPanel;
    lbl1: TLabel;
    AbMeter4: TAbMeter;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
     procedure FormShow(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
  public
   Origen,Destino,Temporal,Mascara,Cantidad:string;
  end;

  var
  FMain: TFMain;
  HiloComprimir:tareaComprimir;

implementation


{$R *.dfm}

procedure TFMain.cxButton1Click(Sender: TObject);
begin
  cxButton1.hide;

  HiloComprimir:=tareaComprimir.Create(true);
  HiloComprimir.activo:=True;
  HiloComprimir.Resume;

  cxButton2.show;
end;

procedure TFMain.cxButton2Click(Sender: TObject);
begin
  cxButton1.Show;

  HiloComprimir.activo:=False;
  HiloComprimir.Terminate;

  cxButton2.Hide;
end;

procedure TFMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   try
      HiloComprimir:=tareaComprimir.Create(true);
      HiloComprimir.Terminate;
   except

   end;
end;

procedure TFMain.FormShow(Sender: TObject);
  var
   INI : TIniFile;
   path,name:string;
 begin
    dxSkinController1.SkinName:='Darkroom';
    cxLabel11.Caption:=DateTimeToStr(now);
    cxButton2.Hide;
    cxLabel6.Caption:='0';
    cxLabel2.Caption:='0';
    try
      path:=ExtractFilePath(Application.ExeName);
      name:=Copy(ExtractFileName(Application.ExeName),0,length(ExtractFileName(Application.ExeName))-3)+'ini';
      INI := TIniFile.Create(path+name) ;
      try
         Origen := INI.ReadString('Configuración','Origen','') ;
         Destino := INI.ReadString('Configuración','Destino','') ;
         Temporal := INI.ReadString('Configuración','Temporal','') ;
         Mascara := INI.ReadString('Configuración','Mascara','') ;
         Cantidad := INI.ReadString('Configuración','Cantidad','') ;
      finally
         INI.Free;
      end;
    except
      ShowMessage('no se pudo leer el fichero de configuración');
    end;

    try
      mmoLogText.Lines.Add('Origen: '+FMain.Origen);
      mmoLogText.Lines.Add('Carpeta Temporal: '+FMain.Temporal);
      mmoLogText.Lines.Add('Carpeta Destino: '+FMain.Destino);
      mmoLogText.Lines.Add('Mascara: '+FMain.Mascara);
      mmoLogText.Lines.Add('Cantidad: '+FMain.Cantidad);
    except

    end;

 end;

end.
