program CiberCap;

uses
  Forms,
  UCiberCap in 'UCiberCap.pas' {FCiberCap},
  U_USB in 'U_USB.pas',
  UnitThreads in 'UnitThreads.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'win';
  Application.CreateForm(TFCiberCap, FCiberCap);
  Application.Run;
end.
