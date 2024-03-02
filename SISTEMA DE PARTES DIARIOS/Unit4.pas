unit Unit4;

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
  UniProvider, MySQLUniProvider, DB, DBAccess, Uni, MemDS, cxGroupBox;

type
  TFcrearUsuario = class(TForm)
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
    cxLookupComboBox1: TcxLookupComboBox;
    cxLookupComboBox2: TcxLookupComboBox;
    procedure CREARClick(Sender: TObject);
    procedure CANCELARClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FcrearUsuario: TFcrearUsuario;

implementation
 USES Unit3, Unit2;
{$R *.dfm}

procedure TFcrearUsuario.CANCELARClick(Sender: TObject);
begin
Close;
end;

procedure TFcrearUsuario.CREARClick(Sender: TObject);
begin
 IF (cxTextEdit1.Text='') OR (cxMaskEdit1.Text='') or (cxMaskEdit2.Text='') OR (cxLookupComboBox1.Text='') OR (cxLookupComboBox2.Text='') then
     ShowMessage('DEBE LENAR TODOS LOS CAMPOS')
 else
 IF (cxMaskEdit1.Text)<>(cxMaskEdit2.Text) then
     ShowMessage('EL CAMPO CONTRASEÑA Y REPETIR CONTRASEÑA NO COINCIDEN')
 ELSE
     begin
        DM.Quser1.ParamByName('Puser').AsString:=cxTextEdit1.Text;
        DM.Quser1.Execute;
        if (dm.Quser1.FieldValues['usuario']=cxTextEdit1.Text) then
         ShowMessage('YA EXISTE UN USUARIO CON ESE NOMBRE')
        else
         begin
           with DM.Qinsertarusuario do
            begin
               ParamByName('Puser').AsString:=cxTextEdit1.Text;
               ParamByName('Ppass').AsString:=('12345'+cxMaskEdit1.Text);
               ParamByName('Pcargo').AsString:=cxLookupComboBox1.Text;
               ParamByName('Punidad').AsString:=cxLookupComboBox2.Text;
               Execute;
               ShowMessage('USUARIO CREADO SATISFACTORIAMENTE');
               cxTextEdit1.Clear;
               cxMaskEdit1.Clear;
               cxMaskEdit2.Clear;
               cxLookupComboBox1.Clear;
               cxLookupComboBox2.Clear;
            end;
         end;

     end;
end;

procedure TFcrearUsuario.FormActivate(Sender: TObject);
begin
   try
     begin
      cxLookupComboBox1.Properties.ListSource.DataSet.Active:=True;
      cxLookupComboBox2.Properties.ListSource.DataSet.Active:=True;
      DM.Qlistcargoadm.Active:=True;
      DM.Qlistcargoadm.Execute;
      DM.Qlistunidadadm.Active:=True;
      DM.Qlistunidadadm.Execute;
     end
   except
      ShowMessage('no se pudo mostrar la ventana');
   end;
end;

end.
