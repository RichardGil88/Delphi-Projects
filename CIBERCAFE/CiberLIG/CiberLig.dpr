program CiberLig;

uses
  Forms,
  UDM1 in 'UDM1.pas' {DM1: TDataModule},
  UPrincipal in 'UPrincipal.pas' {FPrincipal},
  Threads in 'Threads.pas',
  UDM2 in 'UDM2.pas' {DM2: TDataModule},
  UDM3 in 'UDM3.pas' {DM3: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM1, DM1);
  Application.CreateForm(TFPrincipal, FPrincipal);
  Application.CreateForm(TDM2, DM2);
  Application.CreateForm(TDM3, DM3);
  Application.Run;
end.
