program Monitor2;

uses
  Forms,
  Umain in 'Umain.pas' {Fmain},
  hilos in 'hilos.pas',
  Uconfig in 'Uconfig.pas' {Fconfig},
  UEstadisticas in 'UEstadisticas.pas' {FEstadisticas},
  Umodificar in 'Umodificar.pas' {Fmodificar};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFmain, Fmain);
  Application.CreateForm(TFconfig, Fconfig);
  Application.CreateForm(TFEstadisticas, FEstadisticas);
  Application.CreateForm(TFmodificar, Fmodificar);
  Application.Run;
end.
