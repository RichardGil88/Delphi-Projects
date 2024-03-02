program AccesosAAA;

uses
  Forms,
  Ulogin in 'Ulogin.pas' {Flogin},
  Umain in 'Umain.pas' {Fmain},
  UDM in 'UDM.pas' {DM: TDataModule},
  UDepurar in 'UDepurar.pas' {Fdepurar};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFlogin, Flogin);
  Application.CreateForm(TFmain, Fmain);
  Application.CreateForm(TFmain, Fmain);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFdepurar, Fdepurar);
  Application.Run;
end.
