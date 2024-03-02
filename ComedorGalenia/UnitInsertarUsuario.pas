unit UnitInsertarUsuario;

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
  dxSkinXmas2008Blue, cxMemo, cxTextEdit, cxLabel, cxGroupBox, cxCheckBox,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  Vcl.Menus, Vcl.StdCtrls, cxButtons;

type
  TFormInsertarUsuario = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cxLabel1: TcxLabel;
    cxTextEdit1: TcxTextEdit;
    cxLabel4: TcxLabel;
    cxMemo1: TcxMemo;
    cxLabel6: TcxLabel;
    cxCheckBox1: TcxCheckBox;
    cxLabel7: TcxLabel;
    cxLabel9: TcxLabel;
    cxTextEdit4: TcxTextEdit;
    cxLabel10: TcxLabel;
    cxTextEdit5: TcxTextEdit;
    cxLabel11: TcxLabel;
    cxCheckBox2: TcxCheckBox;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxLookupComboBox2: TcxLookupComboBox;
    cxLabel2: TcxLabel;
    cxMaskEdit1: TcxMaskEdit;
    procedure FormShow(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormInsertarUsuario: TFormInsertarUsuario;


implementation

{$R *.dfm}
 uses UnitDataModule1,unitprincipal;


procedure TFormInsertarUsuario.cxButton1Click(Sender: TObject);
begin

     if (cxTextEdit1.Text = '') OR
        (cxMaskEdit1.Text = '') OR
        (cxLookupComboBox2.Text = '') OR
        (cxMemo1.Text = '') then
     begin
       ShowMessage('Los campos Nombre, Credencial, Departamento y Cantidad de comidas al día, no pueden estar vacios.');
     end
     else
     begin
       //preguntar si ya existe alguien con esa credencial.
       DataModule1.QPreguntarPorCredencial.ParamByName('Credencial').AsString:=FormPrincipal.QuitarCaracteres(cxMemo1.Text);
       DataModule1.QPreguntarPorCredencial.Execute;

       if DataModule1.QPreguntarPorCredencial.RecordCount > 0 then
       begin
         ShowMessage('Ya existe un usuario con esa credencial.');
       end
       else
       begin
          // insertar los datos en la tabla.
         try
           with DataModule1.Qinsertarusuario do
           begin
             ParamByName('Nombres').AsString:=cxTextEdit1.Text;
             ParamByName('Comidas').AsInteger:=StrToInt(cxMaskEdit1.Text);
             ParamByName('Credencial').AsString:=FormPrincipal.QuitarCaracteres(cxMemo1.Text);
             ParamByName('Departamento').AsString:=cxLookupComboBox2.Text;
             ParamByName('Telefono1').AsString:=cxTextEdit4.Text;
             ParamByName('Extension').AsString:=cxTextEdit5.Text;

             if cxCheckBox2.Checked then
             begin
               ParamByName('Status').AsInteger:=1;
             end
             else
             ParamByName('Status').AsInteger:=0;

             if cxCheckBox1.Checked then
             begin
               ParamByName('AccesoComedor').AsString:='True';
             end
             else
             ParamByName('AccesoComedor').AsString:='False';

             Execute;

             ShowMessage('Usuario insertado satisfactoriamente.');
             cxTextEdit1.Clear;
             cxMaskEdit1.Text:='1';
             cxTextEdit4.Clear;
             cxTextEdit5.Clear;
             cxMemo1.Clear;
             cxLookupComboBox2.Clear;
             cxCheckBox1.Checked:=False;
             cxCheckBox2.Checked:=False;
             cxTextEdit1.SetFocus;

           end;
         except
           ShowMessage('No se pudo insertar el Usuario.');
         end;
       end;

     end;


end;

procedure TFormInsertarUsuario.cxButton2Click(Sender: TObject);
begin
  try
     cxTextEdit1.Clear;
     cxMaskEdit1.Text:='1';
     cxTextEdit4.Clear;
     cxTextEdit5.Clear;
     cxMemo1.Clear;
     cxLookupComboBox2.Clear;
     cxCheckBox1.Checked:=False;
     cxCheckBox2.Checked:=False;
  except

  end;
end;

procedure TFormInsertarUsuario.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  try
     cxTextEdit1.Clear;
     cxMaskEdit1.Text:='1';
     cxTextEdit4.Clear;
     cxTextEdit5.Clear;
     cxMemo1.Clear;
     cxLookupComboBox2.Clear;
     cxCheckBox1.Checked:=False;
     cxCheckBox2.Checked:=False;
  except

  end;
end;

procedure TFormInsertarUsuario.FormShow(Sender: TObject);
begin
  try
     cxTextEdit1.SetFocus;
     DataModule1.QDepartamentos.Execute;
  Except

  end;
end;

end.
