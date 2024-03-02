program HospitalGalenia;

uses
  Forms,
  Umain in 'Umain.pas' {Fmain},
  UDm in 'UDm.pas' {DM1: TDataModule},
  Vcl.Themes,
  Vcl.Styles,
  ULogin in 'ULogin.pas' {FLogin},
  UDMMateriales in 'UDMMateriales.pas' {DmMateriales: TDataModule},
  UDmMedicamentos in 'UDmMedicamentos.pas' {DmMedicamentos: TDataModule},
  UDMServImg in 'UDMServImg.pas' {DMServImg: TDataModule},
  UDMServHosp in 'UDMServHosp.pas' {DMServHosp: TDataModule},
  UDMEquipoMedico in 'UDMEquipoMedico.pas' {DMEquipoMedico: TDataModule},
  UDMServLab in 'UDMServLab.pas' {DMServLab: TDataModule},
  UDMServMed in 'UDMServMed.pas' {DMServMed: TDataModule},
  UDMTerInt in 'UDMTerInt.pas' {DMTerInt: TDataModule},
  UDMTrasAmb in 'UDMTrasAmb.pas' {DMTrasAmb: TDataModule},
  UDMCamHiper in 'UDMCamHiper.pas' {DMCamHiper: TDataModule},
  UDMMedNuc in 'UDMMedNuc.pas' {DMMedNuc: TDataModule},
  UDMMembresia in 'UDMMembresia.pas' {DMMembresia: TDataModule},
  UDMPaquetes in 'UDMPaquetes.pas' {DMPaquetes: TDataModule},
  UDMCuenta in 'UDMCuenta.pas' {DMCuenta: TDataModule},
  UReporte in 'UReporte.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFmain, Fmain);
  Application.CreateForm(TDM1, DM1);
  Application.CreateForm(TFLogin, FLogin);
  Application.CreateForm(TDmMateriales, DmMateriales);
  Application.CreateForm(TDmMedicamentos, DmMedicamentos);
  Application.CreateForm(TDMServImg, DMServImg);
  Application.CreateForm(TDMServHosp, DMServHosp);
  Application.CreateForm(TDMEquipoMedico, DMEquipoMedico);
  Application.CreateForm(TDMServLab, DMServLab);
  Application.CreateForm(TDMServMed, DMServMed);
  Application.CreateForm(TDMTerInt, DMTerInt);
  Application.CreateForm(TDMTrasAmb, DMTrasAmb);
  Application.CreateForm(TDMCamHiper, DMCamHiper);
  Application.CreateForm(TDMMedNuc, DMMedNuc);
  Application.CreateForm(TDMMembresia, DMMembresia);
  Application.CreateForm(TDMPaquetes, DMPaquetes);
  Application.CreateForm(TDMCuenta, DMCuenta);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
