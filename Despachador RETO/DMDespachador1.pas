unit DMDespachador1;

interface

uses
  SysUtils, Classes, DB, DBAccess, Uni, MemDS, UniProvider, MySQLUniProvider,
  DAScript, UniScript;

type
  TDMDespachador = class(TDataModule)
    global: TUniConnection;
    DespachadoresProc: TUniStoredProc;
    Despachadoressrc: TUniDataSource;
    MySQLUniProvider1: TMySQLUniProvider;
    genericosProc: TUniStoredProc;
    DestinosProc: TUniStoredProc;
    genericossrc: TUniDataSource;
    destinossrc: TUniDataSource;
    OrigenesProc: TUniStoredProc;
    origenessrc: TUniDataSource;
    ConexionDestino1: TUniConnection;
    Claves1: TUniStoredProc;
    InsertarTTelefonia1: TUniStoredProc;
    configuracion: TUniTable;
    GruposDescubre: TUniStoredProc;
    NuevaClave: TUniStoredProc;
    NuevoChequeo: TUniStoredProc;
    Chequeo: TUniStoredProc;
    InsertarTCorrespondencia1: TUniStoredProc;
    InsertarTTxCR1: TUniStoredProc;
    ConexionDestino2: TUniConnection;
    Claves2: TUniStoredProc;
    InsertarTTelefonia2: TUniStoredProc;
    InsertarTCorrespondencia2: TUniStoredProc;
    InsertarTTxCR2: TUniStoredProc;
    ConexionDestino3: TUniConnection;
    Claves3: TUniStoredProc;
    InsertarTTelefonia3: TUniStoredProc;
    InsertarTCorrespondencia3: TUniStoredProc;
    InsertarTTxCR3: TUniStoredProc;
    ConexionDestino4: TUniConnection;
    Claves4: TUniStoredProc;
    InsertarTTelefonia4: TUniStoredProc;
    InsertarTCorrespondencia4: TUniStoredProc;
    InsertarTTxCR4: TUniStoredProc;
    ConexionDestino5: TUniConnection;
    Claves5: TUniStoredProc;
    InsertarTTelefonia5: TUniStoredProc;
    InsertarTCorrespondencia5: TUniStoredProc;
    InsertarTTxCR5: TUniStoredProc;
    ConexionDestino6: TUniConnection;
    Claves6: TUniStoredProc;
    InsertarTTelefonia6: TUniStoredProc;
    InsertarTCorrespondencia6: TUniStoredProc;
    InsertarTTxCR6: TUniStoredProc;
    ConexionDestino7: TUniConnection;
    Claves7: TUniStoredProc;
    InsertarTTelefonia7: TUniStoredProc;
    InsertarTCorrespondencia7: TUniStoredProc;
    InsertarTTxCR7: TUniStoredProc;
    ConexionDestino8: TUniConnection;
    Claves8: TUniStoredProc;
    InsertarTTelefonia8: TUniStoredProc;
    InsertarTCorrespondencia8: TUniStoredProc;
    InsertarTTxCR8: TUniStoredProc;
    ConexionDestino9: TUniConnection;
    Claves9: TUniStoredProc;
    InsertarTTelefonia9: TUniStoredProc;
    InsertarTCorrespondencia9: TUniStoredProc;
    InsertarTTxCR9: TUniStoredProc;
    ConexionDestino10: TUniConnection;
    Claves10: TUniStoredProc;
    InsertarTTelefonia10: TUniStoredProc;
    InsertarTCorrespondencia10: TUniStoredProc;
    InsertarTTxCR10: TUniStoredProc;
    ConexionDestino11: TUniConnection;
    Claves11: TUniStoredProc;
    InsertarTTelefonia11: TUniStoredProc;
    InsertarTCorrespondencia11: TUniStoredProc;
    InsertarTTxCR11: TUniStoredProc;
    ConexionDestino12: TUniConnection;
    Claves12: TUniStoredProc;
    InsertarTTelefonia12: TUniStoredProc;
    InsertarTCorrespondencia12: TUniStoredProc;
    InsertarTTxCR12: TUniStoredProc;
    ConexionDestino13: TUniConnection;
    Claves13: TUniStoredProc;
    InsertarTTelefonia13: TUniStoredProc;
    InsertarTCorrespondencia13: TUniStoredProc;
    InsertarTTxCR13: TUniStoredProc;
    ConexionDestino14: TUniConnection;
    Claves14: TUniStoredProc;
    InsertarTTelefonia14: TUniStoredProc;
    InsertarTCorrespondencia14: TUniStoredProc;
    InsertarTTxCR14: TUniStoredProc;
    ConexionDestino15: TUniConnection;
    Claves15: TUniStoredProc;
    InsertarTTelefonia15: TUniStoredProc;
    InsertarTCorrespondencia15: TUniStoredProc;
    InsertarTTxCR15: TUniStoredProc;
    ConexionDestino16: TUniConnection;
    Claves16: TUniStoredProc;
    InsertarTTelefonia16: TUniStoredProc;
    InsertarTCorrespondencia16: TUniStoredProc;
    InsertarTTxCR16: TUniStoredProc;
    InsertarMasivoSMS1: TUniStoredProc;
    InsertarMasivoSMS2: TUniStoredProc;
    InsertarMasivoSMS3: TUniStoredProc;
    InsertarMasivoSMS4: TUniStoredProc;
    InsertarMasivoSMS5: TUniStoredProc;
    InsertarMasivoSMS6: TUniStoredProc;
    InsertarMasivoSMS7: TUniStoredProc;
    InsertarMasivoSMS8: TUniStoredProc;
    InsertarMasivoSMS9: TUniStoredProc;
    InsertarMasivoSMS10: TUniStoredProc;
    InsertarMasivoSMS11: TUniStoredProc;
    InsertarMasivoSMS12: TUniStoredProc;
    InsertarMasivoSMS13: TUniStoredProc;
    InsertarMasivoSMS14: TUniStoredProc;
    InsertarMasivoSMS15: TUniStoredProc;
    InsertarMasivoSMS16: TUniStoredProc;
    combinados1: TUniStoredProc;
    combinados2: TUniStoredProc;
    combinados3: TUniStoredProc;
    combinados4: TUniStoredProc;
    combinados5: TUniStoredProc;
    combinados6: TUniStoredProc;
    combinados7: TUniStoredProc;
    combinados8: TUniStoredProc;
    combinados9: TUniStoredProc;
    combinados10: TUniStoredProc;
    combinados11: TUniStoredProc;
    combinados12: TUniStoredProc;
    combinados13: TUniStoredProc;
    combinados14: TUniStoredProc;
    combinados15: TUniStoredProc;
    combinados16: TUniStoredProc;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMDespachador: TDMDespachador;

implementation

{$R *.dfm}

end.
