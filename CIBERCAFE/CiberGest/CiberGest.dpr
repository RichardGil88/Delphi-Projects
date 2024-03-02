program CiberGest;

uses
  Forms,
  Ulogin in 'Ulogin.pas' {Flogin},
  UDM in 'UDM.pas' {DM: TDataModule},
  Umodpass in 'Umodpass.pas' {Fmodpass},
  Ueliminarusuario in 'Ueliminarusuario.pas' {Feliminarusuario},
  Umodcargo in 'Umodcargo.pas' {Fmodcargo},
  UAdicionarusuario in 'UAdicionarusuario.pas' {Fadicionarusuario},
  UAsignarChequeoUsuario in 'UAsignarChequeoUsuario.pas' {FAsignarChequeoUsuario},
  Uusuarios in 'Uusuarios.pas' {Fusuarios},
  UFrontEnd in 'UFrontEnd.pas' {FFrontEnd},
  UPrincipal in 'UPrincipal.pas' {FPrincipal},
  UMaquinas in 'UMaquinas.pas' {FMaquinas},
  UChequeos in 'UChequeos.pas' {FChequeos},
  UAdicionarMaquina in 'UAdicionarMaquina.pas' {FAdicionarMaquina},
  UEliminarMaquina in 'UEliminarMaquina.pas' {FEliminarMaquina},
  UModificarMaquina in 'UModificarMaquina.pas' {FModificarMaquina};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := true;
  Application.CreateForm(TFlogin, Flogin);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFPrincipal, FPrincipal);
  Application.CreateForm(TFmodpass, Fmodpass);
  Application.CreateForm(TFeliminarusuario, Feliminarusuario);
  Application.CreateForm(TFmodcargo, Fmodcargo);
  Application.CreateForm(TFadicionarusuario, Fadicionarusuario);
  Application.CreateForm(TFAsignarChequeoUsuario, FAsignarChequeoUsuario);
  Application.CreateForm(TFFrontEnd, FFrontEnd);
  Application.CreateForm(TFusuarios, Fusuarios);
  Application.CreateForm(TFMaquinas, FMaquinas);
  Application.CreateForm(TFChequeos, FChequeos);
  Application.CreateForm(TFAdicionarMaquina, FAdicionarMaquina);
  Application.CreateForm(TFEliminarMaquina, FEliminarMaquina);
  Application.CreateForm(TFModificarMaquina, FModificarMaquina);
  Application.Run;
end.
