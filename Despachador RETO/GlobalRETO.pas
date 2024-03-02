unit GlobalRETO;

interface
const
  MaxGrupos    = 200;
  MaxOrigenes  = 200;
  MaxDestinos  = 200;
  MaxServicios = 200;
  MaxGenericos  = 200;

type
 RecGrupos = Record
               grupo: string[20];
               unidad: string[20];
               ttx: string[50];
               DirTx: string[250];
               dirGenericos: string[250];
               dirBuzon: string[250];
               GuardarBdTx: string[1];
               descripcion: string[50];
  end;

   Recgenericos = Record
    guardarGenericos: boolean;
    FormaTxGenericos: string;
    genericosHost: string;
    genericosUsuario: string;
    genericosPuerto: integer;
    genericosPassword: string;
    RutaGenericos: string;

   End;

    RecOrigenes = Record

    IdOrigen: integer;
    Descripcion: string;
    Compactados: boolean;
    FormaRxIri: string;
    ServidorRxIRI: string;
    UsuarioRxIRI: string;
    PasswordRxIRI: string;
    CarpetaIRI: string;
    TimeOutIRI: integer;
    ServidorRxContenidos: string;
    PasswordRxContenidos: string;
    UsuarioRxContenidos: string;
    CarpetaContenidos: string;
    GeneraAvisos: Boolean;
    CantidadFicheros: longword;
    CantidadFicherosAviso: longword;
    CantidadFicherosLimite: longword;
    FormatoCompactados: string;
    ExtensionCompactados: string;
    FormaRxContenidos: string;
    CarpetaTemporalIRI: string;
    CarpetaTemporalContenidos: string;
    IdServicio: longword;
    Servicio: string;
    Extension: string;
    BDMasivo: string;
    GuardarBDMasivos: boolean;
    GuardarMasivos: boolean;
    BDTrazas: string;
    GuardarBDTrazas: boolean;
    GuardarTrazas: boolean;
    IdFormatosIRI: longword;
    FormatoIRI: string;
    NumeroServicio: longword;
    GrupoServicio: string;
    TablaContenidos: string;
   End;

   RecDestinos = Record
    idDestino: integer;
    Descripcion: string;
    ServidorBD: string;
    PuertoBD: word;
    UsuarioBD: string;
    PasswordBD: string;
    Master: boolean;
    ServidorTxIRI: string;
    PuertoTxIRI: word;
    UsuarioTxIRI: string;
    PasswordTxIRI: string;
    CarpetaIRI: string;
    ServidorTxContenidos: string;
    PuertoTxContenidos: word;
    UsuarioTxContenidos: string;
    PasswordTxContenidos: string;
    CarpetaContenidos: string;
    Compactados: boolean;
    CantidadIRIenZIP: word;
    FormatoCompactados: string;
    ExtensionCompactados: string;
    Zona: string;
    Autoridad: string;
    TipodeAutoridad: string;
    FormaTxIRI: string;
    FormaTxContenidos: string;
    GuardarRequerimientos: boolean;
    GuardarBDRequerimientos: boolean;
    GuardarMasivos: boolean;
    CarpetaMasivos: string;
    GuardarTrazas: boolean;
    Guardarestadisticas: boolean;
    GuardarBDEstadisticas: boolean;
    GuardarEstudios: boolean;
    CarpetaEstudios: string;
    GuardarBDEstudios: boolean;
    ClaveMenor: integer;
    ClaveMayor: integer;
   End;

   RecServicios = Record
    IdServicio: longword;
    Servicio: string;
    Extension: string;
    BDMasivo: string;
    BDTrazas: string;
    IdFormatosIRI: longword;
    FormatoIRI: string;
    NumeroServicio: longword;
    GrupoServicio: string;
    TablaContenidos: string;
   End;

   RecCartas = Record
     IdServicio :Word;
     Modo : string;
     Municipio : string;
     Sentido :string;
     Clasificacion : string;
     Remitente : string;
     DireccionRemitente : string;
     Destinatario : string;
     DireccionDestinatario: string;
     CarpetaContenido : string;
     FicheroContenido : string;
     CarpetaNota : string;
     Nota: string;
     Fecha : TDateTime;
     Observaciones : string;
   End;

   RecTelefonia = Record
     IdServicio :Word;
     Modo : string;
     CarpetaContenido : string;
     FicheroContenido : string;
     Fechatx : TDateTime;
     Duracion : string;
     duaraciontx : Integer;
     Llamado : string;
     Llamador : string;
     Tema : string;
     dsa  : string;
     Tipocaptura : word;
     Multiplex : word;
     Sentido :string;
     Itdestino : word;
     Idestadotx : word;
     Idtipotx : word;
     Itorigen : word;
   End;

   RecSms = Record
     IdServicio :Word;
     Modo : string;
     CarpetaContenido : string;
     FicheroContenido : string;
     FechaTx : TDateTime;
     Llamado : string;
     Llamador : string;
     Tipocaptura : word;
   End;

   RecTxCR = Record
     IdServicio :Word;
     Modo : string;
     CarpetaContenido : string;
     FicheroContenido : string;
     Fechatx : TDateTime;
     Duraciontx : integer;
     emisoracanal : string;
     programa : string;
     espacio  : string;
     Tema : string;
     Tipocaptura : word;
     Idestadotx : word;
   End;

   datos = record
       origen: boolean;
       fecha: array [1..40] of ansiChar;
       duracion: array [1..20] of ansiChar;
       sentido: ansiChar;
       llamador: array [1..20] of ansiChar;
       llamado: array[1..20] of ansiChar;
       idcategoria: longint;
       idtipotx: longint;
       tema: array [1..50] of ansiChar;
       dsa: array [1..50] of ansiChar;
       tipocaptura : longint;
       itdestino: longint;
       multiplex: longint;
       itorigen: longint;
    end;
  pdatos= ^datos;

  aux   = record
          CODE:longword;
          clave: longword;
          categoria: string[50];
          tipotx: string[50];
          caso: string[20];
          aplicadopor: string[50];
          grupo: string[20];
          unidad: string[20];
          activa: integer;
          end;
  paux = ^Aux;



implementation

end.
