unit Unit18;

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
  dxSkinXmas2008Blue, cxDropDownEdit, cxCalendar, cxTextEdit, cxMaskEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxLabel, StdCtrls,
  cxRadioGroup, cxGroupBox, Menus, cxButtons;

type
  TFbajachequeo = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cxRadioGroup1: TcxRadioGroup;
    cxRadioButton1: TcxRadioButton;
    cxRadioButton2: TcxRadioButton;
    cxLabel13: TcxLabel;
    cxLookupComboBox5: TcxLookupComboBox;
    cxLabel15: TcxLabel;
    cxDateEdit2: TcxDateEdit;
    button1: TcxButton;
    button2: TcxButton;
    procedure button1Click(Sender: TObject);
    procedure button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxRadioButton1Click(Sender: TObject);
    procedure cxRadioButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fbajachequeo: TFbajachequeo;

implementation
uses Unit1,Unit2,Unit7;
{$R *.dfm}

procedure TFbajachequeo.button1Click(Sender: TObject);
begin
  if (cxDateEdit2.Text='') then
   ShowMessage('DEBE LLENAR LOS DATOS')
  else
   begin
     with DM.UniSQL1 do
      begin
        try
         SQL.Clear;
         SQL.Add('update `chequeos` set `chequeos`.`ESTADO`=:PBAJA,`chequeos`.`FECHABAJA` =:Pfechabaja,`chequeos`.`cumplimiento`=:pcumplimiento,`chequeos`.`motivo`=:Pmotivo');
         SQL.Add('where `chequeos`.`IDCHEQUEO` =:Pid;');
         ParamByName('PBAJA').AsString:='BAJA';
         ParamByName('Pfechabaja').AsDateTime:=cxDateEdit2.Date;
         if cxRadioButton1.Checked then
           begin
            ParamByName('pcumplimiento').AsInteger:=1;
           end
         else if cxRadioButton2.Checked then
           begin
             ParamByName('pcumplimiento').AsInteger:=0;
           end;
         ParamByName('Pmotivo').AsString:=cxLookupComboBox5.Text;

         ParamByName('Pid').AsInteger:=Fchequeos.idchequeo;
         Execute;
         ShowMessage('LA CLAVE AHORA ESTA DE BAJA');
         Close;
        except
           ShowMessage('LA CLAVE NO SE PUDO PONER DE BAJA');
        end;
      end;
   end;
end;

procedure TFbajachequeo.button2Click(Sender: TObject);
begin
Close;
end;

procedure TFbajachequeo.cxRadioButton1Click(Sender: TObject);
begin
cxLookupComboBox5.Enabled:=False;
end;

procedure TFbajachequeo.cxRadioButton2Click(Sender: TObject);
begin
 cxLookupComboBox5.Enabled:=True;
end;

procedure TFbajachequeo.FormShow(Sender: TObject);
begin
  cxDateEdit2.Clear;
  cxRadioButton1.Checked:=False;
  cxRadioButton2.Checked:=False;
  cxLookupComboBox5.Clear;
  cxLookupComboBox5.Enabled:=True;
end;

end.
