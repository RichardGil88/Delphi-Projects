unit UAdicionarMaquina;

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
  dxSkinXmas2008Blue, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxGroupBox;

type
  TFAdicionarMaquina = class(TForm)
    cxGroupBox1: TcxGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Memo1: TMemo;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    Edit4: TEdit;
    Edit5: TEdit;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAdicionarMaquina: TFAdicionarMaquina;

implementation
  uses UDM;
{$R *.dfm}

procedure TFAdicionarMaquina.cxButton1Click(Sender: TObject);
begin
  if  (Edit1.Text <> '') and
      (Edit2.Text <> '') and
      (Edit3.Text <> '') and
      (Edit4.Text <> '') and
      (Edit5.Text <> '') and
      (Memo1.Text <> '')   then
  begin
    try
      with DM.Qinsertarmaquina do
      begin
        ParamByName('PNombrePC').AsString:=Edit5.Text;
        parambyname('PIp').AsString:=Edit4.Text;
        ParamByName('PProvincia').AsString:=Edit1.Text;
        ParamByName('PMunicipio').AsString:=Edit2.Text;
        ParamByName('PNombreCiberCafe').AsString:=Edit3.Text;
        ParamByName('PUbicacion').AsString:=Memo1.Lines.Text;
        Execute;
        ShowMessage('Datos insertados con éxito');
        Edit1.Clear;
        Edit2.Clear;
        Edit3.Clear;
        Edit4.Clear;
        Edit5.Clear;
        Memo1.Clear;
      end;
    except
      ShowMessage('No se pudieron insertar los Datos.');
    end;
  end
  else
  ShowMessage('Debe llenar todos los datos');
end;

procedure TFAdicionarMaquina.cxButton2Click(Sender: TObject);
begin
  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
  Edit4.Clear;
  Edit5.Clear;
  Memo1.Clear;
  Close;
end;

end.
