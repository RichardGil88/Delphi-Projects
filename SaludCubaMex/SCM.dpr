program SCM;

uses
  Vcl.Forms,
  ULogin in 'ULogin.pas' {FLogin},
  Umain in 'Umain.pas' {FMain},
  UDM1 in 'UDM1.pas' {FDM1: TDataModule},
  UEstadisticas in 'ESTADISTICAS\UEstadisticas.pas' {FEstadisticas},
  Ucalculadora in 'Ucalculadora.pas' {Fcalculadora},
  UAlmacenAgregar in 'ALMACEN\UAlmacenAgregar.pas' {FAlmacenAgregar},
  UFarmaciaBuscar in 'FARMACIA\UFarmaciaBuscar.pas' {FFarmaciaBuscar},
  UUsuariosCrear in 'USUARIOS\UUsuariosCrear.pas' {FUsuariosCrear},
  UUsuariosEliminar in 'USUARIOS\UUsuariosEliminar.pas' {FUsuariosEliminar},
  UUsuariosModificar in 'USUARIOS\UUsuariosModificar.pas' {FUsuariosModificar},
  UFarmaciaVender in 'FARMACIA\UFarmaciaVender.pas' {FFarmaciaVender},
  UAlmacenMover in 'ALMACEN\UAlmacenMover.pas' {FAlmacenMover},
  UDMUsuarios in 'USUARIOS\UDMUsuarios.pas' {FDMUsuarios: TDataModule},
  UDMCodificadores in 'CODIFICADORES\UDMCodificadores.pas' {FDMCodificadores: TDataModule},
  UDMFarmacia in 'FARMACIA\UDMFarmacia.pas' {FDMFarmacia: TDataModule},
  UDMAlmacen in 'ALMACEN\UDMAlmacen.pas' {FDMAlmacen: TDataModule},
  UAlmacenBuscar in 'ALMACEN\UAlmacenBuscar.pas' {FAlmacenBuscar},
  UagendarCita in 'RECEPCION\UagendarCita.pas' {FAgendarCita},
  UDMCitas in 'RECEPCION\UDMCitas.pas' {FDMCitas: TDataModule},
  UModificarCita in 'RECEPCION\UModificarCita.pas' {FModificarCita},
  Ucodificadores in 'CODIFICADORES\Ucodificadores.pas' {FCodificadores},
  UCod_Lab_Prov in 'CODIFICADORES\UCod_Lab_Prov.pas' {FCOD_LAB_PROV},
  UCod_Servicios in 'CODIFICADORES\UCod_Servicios.pas' {FCod_Servicios},
  UCod_Medicamentos in 'CODIFICADORES\UCod_Medicamentos.pas' {FCod_Medicamentos},
  UCod_Doctores in 'CODIFICADORES\UCod_Doctores.pas' {FCod_Doctores},
  UEntradasSalidasFarmacia in 'FARMACIA\UEntradasSalidasFarmacia.pas' {FEntradasSalidasFarmacia},
  UAlmacenHistoricos in 'ALMACEN\UAlmacenHistoricos.pas' {FAlmacenHistoricos},
  UCitasHistoricos in 'RECEPCION\UCitasHistoricos.pas' {FCitasHistoricos},
  UFarmaciaHistoricos in 'FARMACIA\UFarmaciaHistoricos.pas' {FFarmaciaHistoricos},
  UNuevoPaciente in 'PACIENTES\UNuevoPaciente.pas' {FNuevoPaciente},
  UDMPacientes in 'PACIENTES\UDMPacientes.pas' {FDMPacientes: TDataModule},
  UBuscarPaciente in 'PACIENTES\UBuscarPaciente.pas' {FBuscarPaciente},
  UCrearReceta in 'PACIENTES\UCrearReceta.pas' {FCrearReceta},
  ULaboratorios in 'PACIENTES\ULaboratorios.pas' {FLaboratorios},
  UConsultas in 'PACIENTES\UConsultas.pas' {FConsultas},
  UHistoriaClinica in 'PACIENTES\UHistoriaClinica.pas' {FHistoriaClinica},
  UConsultasVender in 'PACIENTES\UConsultasVender.pas' {FConsultasVender},
  UMoverHist in 'ESTADISTICAS\UMoverHist.pas' {FMoverHist},
  UInsumosHistoricos in 'PACIENTES\UInsumosHistoricos.pas' {FInsumosHistoricos},
  UEntradaSalidaInsumos in 'PACIENTES\UEntradaSalidaInsumos.pas' {FEntradaSalidaInsumos},
  UEntradasSalidasAlmacen in 'ALMACEN\UEntradasSalidasAlmacen.pas' {FEntradasSalidasAlmacen},
  UInsumosBuscar in 'PACIENTES\UInsumosBuscar.pas' {FInsumosBuscar},
  UDMEstadisticas in 'ESTADISTICAS\UDMEstadisticas.pas' {FDMEstadisticas: TDataModule},
  UVentasHist in 'ESTADISTICAS\UVentasHist.pas' {FVentasHist},
  UBuscarCitas in 'RECEPCION\UBuscarCitas.pas' {FBuscarCita},
  UCobroServicios in 'RECEPCION\UCobroServicios.pas' {FCobroServicios},
  ULabResult in 'PACIENTES\ULabResult.pas' {FLabResult},
  UModificarPaciente in 'PACIENTES\UModificarPaciente.pas' {FModificarPaciente},
  UMostrarUsuarios in 'USUARIOS\UMostrarUsuarios.pas' {FMostrarUsuarios};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFDM1, FDM1);
  Application.CreateForm(TFLogin, FLogin);
  Application.CreateForm(TFMain, FMain);
  Application.Run;
end.
