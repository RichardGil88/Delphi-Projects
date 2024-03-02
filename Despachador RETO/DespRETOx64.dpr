program DespRETOx64;

uses
  Vcl.Forms,
  Despx64Main in 'Despx64Main.pas' {Principal},
  DMDespachador1 in 'DMDespachador1.pas' {DMDespachador: TDataModule},
  magsubs1 in 'magsubs1.pas',
  uCiaXml in 'uCiaXml.pas',
  GlobalRETO in 'GlobalRETO.pas',
  DspApp_ConfigServicios in 'DspApp_ConfigServicios.pas' {ConfigServicios},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Sapphire Kamri');
  Application.CreateForm(TPrincipal, Principal);
  Application.CreateForm(TConfigServicios, ConfigServicios);
  Application.CreateForm(TDMDespachador, DMDespachador);
  Application.CreateForm(TConfigServicios, ConfigServicios);
  Application.Run;
end.
