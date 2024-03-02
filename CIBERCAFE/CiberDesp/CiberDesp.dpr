program CiberDesp;

uses
  Forms,
  Umain in 'Umain.pas' {Fmain},
  tareas in 'tareas.pas',
  UDM1 in 'UDM1.pas' {DM1: TDataModule},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFmain, Fmain);
  Application.CreateForm(TDM1, DM1);
  Application.Run;
end.
