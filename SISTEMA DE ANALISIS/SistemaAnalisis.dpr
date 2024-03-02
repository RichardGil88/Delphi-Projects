program SistemaAnalisis;

uses
  Forms,
  Controls,
  Umain in 'Umain.pas' {Fmain},
  UDM in 'UDM.pas' {DM: TDataModule},
  Ubancovoces in 'Ubancovoces.pas' {Fbancovoces},
  Ucasos in 'Ucasos.pas' {Fcasos},
  Uobjanttodos in 'Uobjanttodos.pas' {Fobjanttodos},
  Uclaves in 'Uclaves.pas' {Fclaves},
  Ucomentarios in 'Ucomentarios.pas' {FComentarios},
  Udescubrimientos in 'Udescubrimientos.pas' {Fdescubrimientos},
  Udoccat in 'Udoccat.pas' {Fdoccat},
  Udoctipos in 'Udoctipos.pas' {Fdoctipos},
  UEventos in 'UEventos.pas' {FEventos},
  Uidiomas in 'Uidiomas.pas' {Fidiomas},
  Uinformesorigen in 'Uinformesorigen.pas' {Finformesorigen},
  Umunic in 'Umunic.pas' {Fmunic},
  Unomdestentreg in 'Unomdestentreg.pas' {Fnomdestentreg},
  Unomformasentreg in 'Unomformasentreg.pas' {Fnomformasentreg},
  Uopiniones in 'Uopiniones.pas' {FOpiniones},
  Uorganismos in 'Uorganismos.pas' {Forganismos},
  Usectorsocopi in 'Usectorsocopi.pas' {Fsectorsocopi},
  Ucategorias in 'Ucategorias.pas' {Fcategorias},
  Utipotrans in 'Utipotrans.pas' {Ftipotrans},
  Uusuarioscargo in 'Uusuarioscargo.pas' {Fusuarioscargo},
  Uuserest in 'Uuserest.pas' {Fuserest},
  Uverest in 'Uverest.pas' {Fverest},
  Uvertema in 'Uvertema.pas' {Fvertema},
  Uvertipos in 'Uvertipos.pas' {Fvertipos},
  Ulogin in 'Ulogin.pas' {Flogin},
  Uhistoricos in 'Uhistoricos.pas' {Fhistoricos},
  Ueliminarusuario in 'Ueliminarusuario.pas' {Feliminarusuario},
  Umodificarusuario in 'Umodificarusuario.pas' {Fmodificarusuario},
  UcontrolAntecedentes in 'UcontrolAntecedentes.pas' {FcontrolAntecedentes},
  UActualizarDatosGenerales in 'UActualizarDatosGenerales.pas' {FActualizarDatosGenerales},
  Uactreuorganos in 'Uactreuorganos.pas' {Factreuorganos},
  Ucrearusuario in 'Ucrearusuario.pas' {Fcrearusuario},
  Uagregarantecedente in 'Uagregarantecedente.pas' {Fagregarantecedente},
  Upaises in 'Upaises.pas' {Fpaises},
  Uservicioagregado in 'Uservicioagregado.pas' {Fservicioagregado},
  UlevantamientosTelef in 'UlevantamientosTelef.pas' {FlevantamientosTelef},
  UsalidaSIA in 'UsalidaSIA.pas' {FsalidaSIA},
  UActualizarDatosAntecedentes in 'UActualizarDatosAntecedentes.pas' {FActualizarDatosAntecedentes},
  UActualizarDatosLaborales in 'UActualizarDatosLaborales.pas' {FActualizarDatosLaborales},
  UactualizarDatosResidenciales in 'UactualizarDatosResidenciales.pas' {FActualizarDatosResidenciales};

{$R *.res}
 begin
  Application.Initialize;
  Application.Title := 'Sistema Analisis';
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFlogin, Flogin);
  Application.CreateForm(TFmain, Fmain);
  Application.CreateForm(TFActualizarDatosAntecedentes, FActualizarDatosAntecedentes);
  Application.CreateForm(TFActualizarDatosLaborales, FActualizarDatosLaborales);
  Application.CreateForm(TFActualizarDatosResidenciales, FActualizarDatosResidenciales);
  Application.Run;
 end.
