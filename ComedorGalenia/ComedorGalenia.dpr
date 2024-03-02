program ComedorGalenia;

uses
  Vcl.Forms,
  UnitDataModule1 in 'UnitDataModule1.pas' {DataModule1: TDataModule},
  UnitInsertarRegistro in 'UnitInsertarRegistro.pas' {FormInsertarRegistro},
  Vcl.Themes,
  Vcl.Styles,
  UnitRegistrarse in 'UnitRegistrarse.pas' {FormRegistrarse},
  UnitInsertarUsuario in 'UnitInsertarUsuario.pas' {FormInsertarUsuario},
  UnitUsuarios in 'UnitUsuarios.pas' {FormUsuarios},
  UnitPrincipal in 'UnitPrincipal.pas' {FormPrincipal},
  UnitEditarUsuario in 'UnitEditarUsuario.pas' {FormEditarUsuario},
  UnitEliminarUsuarioSistema in 'UnitEliminarUsuarioSistema.pas' {FormEliminarUsuarioSistema},
  UnitInsertarUsuarioSistema in 'UnitInsertarUsuarioSistema.pas' {FormInsertarUsuarioSistema};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormRegistrarse, FormRegistrarse);
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TFormInsertarRegistro, FormInsertarRegistro);
  Application.CreateForm(TFormInsertarUsuario, FormInsertarUsuario);
  Application.CreateForm(TFormUsuarios, FormUsuarios);
  Application.CreateForm(TFormEditarUsuario, FormEditarUsuario);
  Application.CreateForm(TFormEliminarUsuarioSistema, FormEliminarUsuarioSistema);
  Application.CreateForm(TFormInsertarUsuarioSistema, FormInsertarUsuarioSistema);
  Application.Run;
end.
