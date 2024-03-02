unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxGraphics, Menus, cxLabel, StdCtrls, cxButtons,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxControls, cxContainer, cxEdit, cxGroupBox, DB,
  DBAccess, MemDS, Uni, cxLookAndFeels;

type
  TFeliminar = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cxLookupComboBox1: TcxLookupComboBox;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxLabel1: TcxLabel;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Feliminar: TFeliminar;

implementation
uses Unit2, Unit3;
{$R *.dfm}

procedure TFeliminar.cxButton1Click(Sender: TObject);
begin
  IF cxLookupComboBox1.Text='' then
    ShowMessage('DEBE ESCOJER UN USUARIO')
  else
    begin
        DM.Qeliminaruser.ParamByName('Puser').AsString:=cxLookupComboBox1.Text;
        DM.Qeliminaruser.Execute;
        ShowMessage('EL USUARIO HA SIDO ELIMINADO CON EXITO');
    end;
end;

procedure TFeliminar.cxButton2Click(Sender: TObject);
begin
Close;
end;

procedure TFeliminar.FormShow(Sender: TObject);
 begin
     with DM do
     begin
       Quser1.Active:=True;
       //Quser1.ParamByName('Puser').AsString:=flogin.USUARIO;
       Quser1.Execute;
       cxLookupComboBox1.Properties.ListSource.DataSet.Active:=True;
     end;
 end;

end.
