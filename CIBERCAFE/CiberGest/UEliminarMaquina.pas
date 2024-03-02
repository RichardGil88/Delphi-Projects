unit UEliminarMaquina;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  TFEliminarMaquina = class(TForm)
    cxLookupComboBox1: TcxLookupComboBox;
    Label1: TLabel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    procedure cxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEliminarMaquina: TFEliminarMaquina;

implementation

{$R *.dfm}

uses UDM;

procedure TFEliminarMaquina.cxButton1Click(Sender: TObject);
begin
  if cxLookupComboBox1.Text='' then
     ShowMessage('Debe escojer al menos una máquina')
  else
  begin
    try
      DM.Qeliminarmaquina.ParamByName('Pnombre').AsString:=cxLookupComboBox1.Text;
      DM.Qeliminarmaquina.Execute;
      cxLookupComboBox1.Clear;
      cxLookupComboBox1.Properties.DataController.DataSet.Active:=false;
      cxLookupComboBox1.Properties.DataController.DataSet.Active:=true;
      ShowMessage('La máquina ha sido eliminada con éxito');
    except

    end;
  end;
end;

procedure TFEliminarMaquina.FormShow(Sender: TObject);
begin
 // llenar el combo
 cxLookupComboBox1.Properties.DataController.DataSet.Active:=true;
end;

end.
