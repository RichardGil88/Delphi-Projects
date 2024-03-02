unit UnitEditarUsuario;

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
  dxSkinXmas2008Blue, Vcl.Menus, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, Vcl.StdCtrls, cxButtons, cxCheckBox,
  cxMemo, cxTextEdit, cxLabel, cxGroupBox;

type
  TFormEditarUsuario = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cxLabel1: TcxLabel;
    cxTextEdit1: TcxTextEdit;
    cxMemo1: TcxMemo;
    cxCheckBox1: TcxCheckBox;
    cxCheckBox2: TcxCheckBox;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxLookupComboBox2: TcxLookupComboBox;
    cxMaskEdit1: TcxMaskEdit;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel9: TcxLabel;
    cxTextEdit4: TcxTextEdit;
    cxTextEdit5: TcxTextEdit;
    cxGroupBox2: TcxGroupBox;
    cxLookupComboBox1: TcxLookupComboBox;
    cxLabel3: TcxLabel;
    procedure cxButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxLookupComboBox1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEditarUsuario: TFormEditarUsuario;

implementation

uses UnitDataModule1;
{$R *.dfm}

procedure TFormEditarUsuario.cxButton1Click(Sender: TObject);
begin
  try
    if cxLookupComboBox1.Text <> '' then
    begin

      with DataModule1.QEditarUsuario do
      begin
        ParamByName('Id').AsInteger:=DataModule1.QUsuariosPorNombre.FieldValues['Id'];
        ParamByName('Nombres').AsString:= cxTextEdit1.Text;
        ParamByName('Credencial').AsString:=cxMemo1.Text;
        ParamByName('Departamento').AsString:=cxLookupComboBox2.Text;
        if cxTextEdit4.Text <> '' then
        begin
          ParamByName('Telefono1').AsString:= cxTextEdit4.Text;
        end
        else
        ParamByName('Telefono1').AsString:= 'NULL';

        if cxTextEdit5.Text <> '' then
        begin
          ParamByName('Extension').AsString:= cxTextEdit5.Text;
        end
        else
        ParamByName('Extension').AsString:= 'NULL';

        if cxCheckBox1.Checked then
        begin
          ParamByName('AccesoComedor').AsString:= 'True';
        end
        else
        ParamByName('AccesoComedor').AsString:= 'False';

        if cxCheckBox2.Checked then
        begin
          ParamByName('Status').AsInteger:= 1;
        end
        else
        ParamByName('Status').AsInteger:= 0;

        if cxMaskEdit1.Text <> '' then
        begin
          ParamByName('CantidadComidas').AsInteger:=StrToInt(cxMaskEdit1.Text);
        end;

        Execute;
      end;

      cxTextEdit1.Clear;
      cxMaskEdit1.Clear;
      cxTextEdit4.Clear;
      cxTextEdit5.Clear;
      cxMemo1.Clear;
      cxLookupComboBox2.Clear;
      cxCheckBox1.Checked:=False;
      cxCheckBox2.Checked:=False;
      cxLookupComboBox1.Clear;
      cxLookupComboBox1.SetFocus;

      ShowMessage('Usuario editado satisfactoriamente.');

    end
    else
    begin
      ShowMessage('Debe escoger un nombre de usuario.');
    end;
  except
    ShowMessage('No se pudo editar el usuario');
  end;
end;

procedure TFormEditarUsuario.cxButton2Click(Sender: TObject);
begin
  try
     cxTextEdit1.Clear;
     cxMaskEdit1.Clear;
     cxTextEdit4.Clear;
     cxTextEdit5.Clear;
     cxMemo1.Clear;
     cxLookupComboBox2.Clear;
     cxCheckBox1.Checked:=False;
     cxCheckBox2.Checked:=False;
     cxLookupComboBox1.Clear;
     cxLookupComboBox1.SetFocus;
  except

  end;
end;

procedure TFormEditarUsuario.cxLookupComboBox1Click(Sender: TObject);
begin
  try
     // primero preguntar si existe ese usuario en la bd
     DataModule1.QUsuariosPorNombre.ParamByName('Nombre').AsString:=cxLookupComboBox1.Text;
     DataModule1.QUsuariosPorNombre.Execute;

     cxTextEdit1.Text:= DataModule1.QUsuariosPorNombre.FieldValues['Nombres'];
     cxMemo1.Text:=DataModule1.QUsuariosPorNombre.FieldValues['Credencial'];
     cxLookupComboBox2.Text:=DataModule1.QUsuariosPorNombre.FieldValues['Departamento'];
     cxMaskEdit1.Text:= DataModule1.QUsuariosPorNombre.FieldValues['CantidadComidas'];

     if DataModule1.QUsuariosPorNombre.FieldValues['Telefono1'] <> 'NULL' then
     begin
       cxTextEdit4.Text:= DataModule1.QUsuariosPorNombre.FieldValues['Telefono1'];
     end;

     if DataModule1.QUsuariosPorNombre.FieldValues['Extension'] <> 'NULL' then
     begin
       cxTextEdit5.Text:= DataModule1.QUsuariosPorNombre.FieldValues['Extension'];
     end;

     if DataModule1.QUsuariosPorNombre.FieldValues['Status'] = 1 then
     begin
         cxCheckBox2.Checked:=True;
     end
     else
     cxCheckBox2.Checked:=False;

     if DataModule1.QUsuariosPorNombre.FieldValues['AccesoComedor'] = 'True' then
     begin
         cxCheckBox1.Checked:=True;
     end
     else
     cxCheckBox1.Checked:=False;
  except

  end;

end;

procedure TFormEditarUsuario.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  try
    cxTextEdit1.Clear;
    cxMaskEdit1.Clear;
    cxTextEdit4.Clear;
    cxTextEdit5.Clear;
    cxMemo1.Clear;
    cxLookupComboBox2.Clear;
    cxCheckBox1.Checked:=False;
    cxCheckBox2.Checked:=False;
    cxLookupComboBox1.Clear;
  except

  end;
end;

procedure TFormEditarUsuario.FormShow(Sender: TObject);
begin
  try
     DataModule1.QUsuarios.Execute;
     cxLookupComboBox1.SetFocus;
     DataModule1.QDepartamentos.Execute;
  Except

  end;

end;

end.
