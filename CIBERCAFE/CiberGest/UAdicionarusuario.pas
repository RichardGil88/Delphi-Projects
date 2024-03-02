unit UAdicionarusuario;

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
  dxSkinXmas2008Blue, Menus, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxMaskEdit, cxTextEdit, cxLabel, StdCtrls, cxButtons,
  UniProvider, MySQLUniProvider, DB, DBAccess, Uni, MemDS, cxGroupBox,
  dxSkinBlueprint, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinHighContrast, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinSevenClassic, dxSkinSharpPlus,
  dxSkinTheAsphaltWorld, dxSkinVS2010, dxSkinWhiteprint;

type
  TFadicionarusuario = class(TForm)
    cxGroupBox1: TcxGroupBox;
    CREAR: TcxButton;
    CANCELAR: TcxButton;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    cxTextEdit1: TcxTextEdit;
    cxMaskEdit1: TcxMaskEdit;
    cxMaskEdit2: TcxMaskEdit;
    cxLookupComboBox2: TcxLookupComboBox;
    Label1: TLabel;
    cxLookupComboBox3: TcxLookupComboBox;
    cxComboBox1: TcxComboBox;
    procedure CREARClick(Sender: TObject);
    procedure CANCELARClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fadicionarusuario: TFadicionarusuario;

implementation
 USES UDM,uprincipal;
{$R *.dfm}

procedure TFadicionarusuario.CANCELARClick(Sender: TObject);
begin
Close;
end;

procedure TFadicionarusuario.CREARClick(Sender: TObject);
begin
 if (cxTextEdit1.Text='') OR (cxMaskEdit1.Text='') or (cxMaskEdit2.Text='') OR (cxComboBox1.Text='') OR (cxLookupComboBox2.Text='') then
     ShowMessage('Debe llenar todos los Campos')
 else
 if (cxMaskEdit1.Text)<>(cxMaskEdit2.Text) then
     ShowMessage('el campo contraseña y repetir contraseña no coinciden')
 else
 begin
    DM.Quser1.ParamByName('Puser').AsString:=cxTextEdit1.Text;
    DM.Quser1.Execute;
    if (dm.Quser1.FieldValues['usuario']=cxTextEdit1.Text) then
     ShowMessage('Ya existe un usuario con ese nombre')
    else
     begin
       with DM.Qinsertarusuario do
        begin
           ParamByName('Puser').AsString:=cxTextEdit1.Text;
           ParamByName('Ppass').AsString:=(cxMaskEdit1.Text);
           ParamByName('Pcargo').AsString:=cxComboBox1.Text;
           ParamByName('Punidad').AsString:=cxLookupComboBox2.Text;
           Execute;
           ShowMessage('Usuario creado con éxito');
           cxTextEdit1.Clear;
           cxMaskEdit1.Clear;
           cxMaskEdit2.Clear;
           cxComboBox1.Properties.Items.Clear;
           cxLookupComboBox2.Clear;
        end;
     end;
 end;
end;

procedure TFadicionarusuario.FormActivate(Sender: TObject);
begin
  try
   begin
//    DM.Qlistcargoadm.Active:=True;
//    DM.Qlistcargoadm.Execute;
    DM.Qlistunidadadm.Active:=True;
    DM.Qlistunidadadm.Execute;
    DM.qdptos.execute;

    cxLookupComboBox2.Properties.ListSource.DataSet.Active:=True;
    cxLookupComboBox3.Properties.ListSource.DataSet.Active:=True;
   end ;

    if FPrincipal.CARGO = 'Super Admin' then
    begin
      cxComboBox1.Properties.Items.Clear;
      cxComboBox1.Properties.Items.Add('Super Admin');
      cxComboBox1.Properties.Items.Add('Admin');
      cxComboBox1.Properties.Items.Add('Usuario');
    end;

    if FPrincipal.CARGO = 'Admin' then
    begin
      cxComboBox1.Properties.Items.Clear;
      cxComboBox1.Properties.Items.Add('Admin');
      cxComboBox1.Properties.Items.Add('Usuario');
    end;

  except
    ShowMessage('no se pudo mostrar la ventana');
  end;
end;

end.
