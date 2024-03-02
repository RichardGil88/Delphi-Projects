program DespRETO;

uses
  Vcl.Forms,
  Despx64Main in 'Despx64Main.pas' {Principal},
  DspApp_ConfigServicios in 'F:\PROYECTOS\Despachador RETO\DspApp_ConfigServicios.pas' {ConfigServicios},
  DMDespachador1 in 'DMDespachador1.pas' {DMDespachador: TDataModule},
  magsubs1 in 'F:\PROYECTOS\Despachador RETO\magsubs1.pas',
  uCiaXml in 'F:\PROYECTOS\Despachador RETO\uCiaXml.pas',
  GlobalRETO in 'GlobalRETO.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TPrincipal, Principal);
  Application.CreateForm(TConfigServicios, ConfigServicios);
  Application.CreateForm(TDMDespachador, DMDespachador);
  Application.Run;
end.
