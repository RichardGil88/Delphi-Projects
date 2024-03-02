object DMDespachador: TDMDespachador
  OldCreateOrder = False
  Height = 795
  Width = 833
  object global: TUniConnection
    ProviderName = 'MySQL'
    Port = 3306
    Database = 'global'
    Username = 'root'
    Password = 'windowsxp'
    Server = '10.10.0.10'
    Left = 30
    Top = 16
  end
  object DespachadoresProc: TUniStoredProc
    StoredProcName = 'DespachadorPorNombre'
    Connection = global
    Options.QueryRecCount = True
    Left = 36
    Top = 74
    ParamData = <
      item
        DataType = ftString
        Name = 'NombreDespachador'
        ParamType = ptInput
        Size = 50
      end>
    CommandStoredProcName = 'DespachadorPorNombre'
    StoredProcIsQuery = True
  end
  object Despachadoressrc: TUniDataSource
    DataSet = DespachadoresProc
    Left = 132
    Top = 74
  end
  object MySQLUniProvider1: TMySQLUniProvider
    Left = 110
    Top = 16
  end
  object genericosProc: TUniStoredProc
    StoredProcName = 'GenericosPorDespachador'
    Connection = global
    Options.QueryRecCount = True
    Left = 36
    Top = 130
    ParamData = <
      item
        DataType = ftString
        Name = 'NombreDespachador'
        ParamType = ptInput
        Size = 50
      end>
    CommandStoredProcName = 'GenericosPorDespachador'
  end
  object DestinosProc: TUniStoredProc
    StoredProcName = 'DestinosPorDespachador'
    Connection = global
    Options.QueryRecCount = True
    Left = 36
    Top = 242
    ParamData = <
      item
        DataType = ftString
        Name = 'NombreDespachador'
        ParamType = ptInput
        Size = 50
      end>
    CommandStoredProcName = 'DestinosPorDespachador'
    StoredProcIsQuery = True
  end
  object genericossrc: TUniDataSource
    DataSet = genericosProc
    Left = 108
    Top = 130
  end
  object destinossrc: TUniDataSource
    DataSet = DestinosProc
    Left = 108
    Top = 242
  end
  object OrigenesProc: TUniStoredProc
    StoredProcName = 'OrigenesPorDespachador'
    Connection = global
    Options.QueryRecCount = True
    Left = 28
    Top = 306
    ParamData = <
      item
        DataType = ftString
        Name = 'NombreDespachador'
        ParamType = ptInput
        Value = 'desp1'
      end>
    CommandStoredProcName = 'OrigenesPorDespachador'
    StoredProcIsQuery = True
  end
  object origenessrc: TUniDataSource
    DataSet = OrigenesProc
    Left = 108
    Top = 306
  end
  object ConexionDestino1: TUniConnection
    ProviderName = 'MySQL'
    Database = 'dgci'
    Username = 'root'
    Password = 'windowsxp'
    Server = '10.10.0.10'
    LoginPrompt = False
    Left = 199
    Top = 16
  end
  object Claves1: TUniStoredProc
    StoredProcName = 'despachador clavesxchequeo'
    Connection = ConexionDestino1
    Options.QueryRecCount = True
    Left = 339
    Top = 16
    ParamData = <
      item
        DataType = ftString
        Name = 'chequeo'
        ParamType = ptInput
        Size = 100
      end
      item
        DataType = ftString
        Name = 'chequeo1'
        ParamType = ptInput
        Size = 100
      end
      item
        DataType = ftInteger
        Name = 'LIID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'clavecita'
        ParamType = ptInput
        Size = 100
      end>
    CommandStoredProcName = 'despachador clavesxchequeo'
  end
  object InsertarTTelefonia1: TUniStoredProc
    StoredProcName = '`despachador insertar ttelefonia`'
    SQLInsert.Strings = (
      
        'CALL `despachador insertar ttelefonia`(:idclave, :duracion, :ori' +
        'gen, :destino, :carpetacontenido, :ficherocontenido, :servicio, ' +
        ':fechatx, :dsa, :idcategoria)')
    Connection = ConexionDestino1
    Left = 416
    Top = 16
    ParamData = <
      item
        DataType = ftInteger
        Name = 'idclave'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'duracion'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'origen'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'destino'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'carpetacontenido'
        ParamType = ptInput
        Size = 250
      end
      item
        DataType = ftString
        Name = 'ficherocontenido'
        ParamType = ptInput
        Size = 250
      end
      item
        DataType = ftInteger
        Name = 'servicio'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'fechatx'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'dsa'
        ParamType = ptInput
        Size = 250
      end
      item
        DataType = ftInteger
        Name = 'idcategoria'
        ParamType = ptInput
      end>
  end
  object configuracion: TUniTable
    TableName = 'despachadores configuracion genericos'
    Connection = global
    Left = 56
    Top = 184
  end
  object GruposDescubre: TUniStoredProc
    StoredProcName = 'despachador gruposdescubrimientosxservicio'
    Connection = ConexionDestino1
    Left = 120
    Top = 480
    ParamData = <
      item
        DataType = ftInteger
        Name = 'numservicio'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'despachador gruposdescubrimientosxservicio'
  end
  object NuevaClave: TUniStoredProc
    StoredProcName = 'despachadores nueva clave'
    Connection = ConexionDestino1
    Left = 96
    Top = 400
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'clave'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idchequeo'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'fechainicio'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'fechafin'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idestadoactual'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idfase'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idnivel1'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idtipoclave'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'despachadores nueva clave'
  end
  object NuevoChequeo: TUniStoredProc
    StoredProcName = 'despachadores nuevo chequeo'
    Connection = ConexionDestino1
    Left = 16
    Top = 400
    ParamData = <
      item
        DataType = ftString
        Name = 'cheq'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idserv'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'despachadores nuevo chequeo'
  end
  object Chequeo: TUniStoredProc
    StoredProcName = 'despachadores chequeo'
    Connection = ConexionDestino1
    Left = 16
    Top = 480
    ParamData = <
      item
        DataType = ftString
        Name = 'cheq'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'despachadores chequeo'
  end
  object InsertarTCorrespondencia1: TUniStoredProc
    StoredProcName = 'despachador Insertar TCorrespondencia'
    Connection = ConexionDestino1
    Left = 536
    Top = 16
    ParamData = <
      item
        DataType = ftInteger
        Name = 'idclave'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'fechatx'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'remite'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'destino'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'dirremite'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'dirdestino'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idmunicipio'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idestado'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idnivelprioridad'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'carpetaprocesado'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ficheroprocesado'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'carpetacontenido'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ficherocontenido'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'nota'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idservicio'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'despachador Insertar TCorrespondencia'
  end
  object InsertarTTxCR1: TUniStoredProc
    StoredProcName = 'despachador Insertar tTxCR'
    Connection = ConexionDestino1
    Left = 651
    Top = 16
    ParamData = <
      item
        DataType = ftInteger
        Name = 'idclave'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'fechatx'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'duraciontx'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'emisoracanal'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'programa'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'tema'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idestado'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'espacio'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'carpetacontenido'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ficherocontenido'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idservicio'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'despachador Insertar tTxCR'
  end
  object ConexionDestino2: TUniConnection
    ProviderName = 'MySQL'
    Database = 'masivosms'
    Username = 'root'
    Password = 'windowsxp'
    Server = '10.10.0.10'
    LoginPrompt = False
    Left = 199
    Top = 64
  end
  object Claves2: TUniStoredProc
    StoredProcName = 'despachador clavesxchequeo'
    Connection = ConexionDestino2
    Options.QueryRecCount = True
    Left = 339
    Top = 64
    ParamData = <
      item
        DataType = ftString
        Name = 'chequeo'
        ParamType = ptInput
        Size = 100
      end
      item
        DataType = ftString
        Name = 'chequeo1'
        ParamType = ptInput
        Size = 100
      end
      item
        DataType = ftInteger
        Name = 'LIID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'clavecita'
        ParamType = ptInput
        Size = 100
      end>
    CommandStoredProcName = 'despachador clavesxchequeo'
  end
  object InsertarTTelefonia2: TUniStoredProc
    StoredProcName = '`despachador insertar ttelefonia`'
    Connection = ConexionDestino2
    Left = 416
    Top = 64
    ParamData = <
      item
        DataType = ftInteger
        Name = 'idclave'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'duracion'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'origen'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'destino'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'carpetacontenido'
        ParamType = ptInput
        Size = 250
      end
      item
        DataType = ftString
        Name = 'ficherocontenido'
        ParamType = ptInput
        Size = 250
      end
      item
        DataType = ftInteger
        Name = 'servicio'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'fechatx'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'dsa'
        ParamType = ptInput
        Size = 250
      end
      item
        DataType = ftInteger
        Name = 'idcategoria'
        ParamType = ptInput
      end>
    CommandStoredProcName = '`despachador insertar ttelefonia`'
  end
  object InsertarTCorrespondencia2: TUniStoredProc
    StoredProcName = 'despachador Insertar TCorrespondencia'
    Connection = ConexionDestino2
    Left = 536
    Top = 64
    ParamData = <
      item
        DataType = ftInteger
        Name = 'idclave'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'fechatx'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'remite'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'destino'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'dirremite'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'dirdestino'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idmunicipio'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idestado'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idnivelprioridad'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'carpetaprocesado'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ficheroprocesado'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'carpetacontenido'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ficherocontenido'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'nota'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idservicio'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'despachador Insertar TCorrespondencia'
  end
  object InsertarTTxCR2: TUniStoredProc
    StoredProcName = 'despachador Insertar tTxCR'
    Connection = ConexionDestino2
    Left = 651
    Top = 64
    ParamData = <
      item
        DataType = ftInteger
        Name = 'idclave'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'fechatx'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'duraciontx'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'emisoracanal'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'programa'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'tema'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idestado'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'espacio'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'carpetacontenido'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ficherocontenido'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idservicio'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'despachador Insertar tTxCR'
  end
  object ConexionDestino3: TUniConnection
    ProviderName = 'MySQL'
    Database = 'masivosms'
    Username = 'root'
    Password = 'windowsxp'
    Server = '10.10.0.10'
    LoginPrompt = False
    Left = 199
    Top = 112
  end
  object Claves3: TUniStoredProc
    StoredProcName = 'despachador clavesxchequeo'
    Connection = ConexionDestino3
    Options.QueryRecCount = True
    Left = 339
    Top = 112
    ParamData = <
      item
        DataType = ftString
        Name = 'chequeo'
        ParamType = ptInput
        Size = 100
      end
      item
        DataType = ftString
        Name = 'chequeo1'
        ParamType = ptInput
        Size = 100
      end
      item
        DataType = ftInteger
        Name = 'LIID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'clavecita'
        ParamType = ptInput
        Size = 100
      end>
    CommandStoredProcName = 'despachador clavesxchequeo'
  end
  object InsertarTTelefonia3: TUniStoredProc
    StoredProcName = '`despachador insertar ttelefonia`'
    Connection = ConexionDestino3
    Left = 416
    Top = 112
    ParamData = <
      item
        DataType = ftInteger
        Name = 'idclave'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'duracion'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'origen'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'destino'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'carpetacontenido'
        ParamType = ptInput
        Size = 250
      end
      item
        DataType = ftString
        Name = 'ficherocontenido'
        ParamType = ptInput
        Size = 250
      end
      item
        DataType = ftInteger
        Name = 'servicio'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'fechatx'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'dsa'
        ParamType = ptInput
        Size = 250
      end
      item
        DataType = ftInteger
        Name = 'idcategoria'
        ParamType = ptInput
      end>
    CommandStoredProcName = '`despachador insertar ttelefonia`'
  end
  object InsertarTCorrespondencia3: TUniStoredProc
    StoredProcName = 'despachador Insertar TCorrespondencia'
    Connection = ConexionDestino3
    Left = 536
    Top = 112
    ParamData = <
      item
        DataType = ftInteger
        Name = 'idclave'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'fechatx'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'remite'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'destino'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'dirremite'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'dirdestino'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idmunicipio'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idestado'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idnivelprioridad'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'carpetaprocesado'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ficheroprocesado'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'carpetacontenido'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ficherocontenido'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'nota'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idservicio'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'despachador Insertar TCorrespondencia'
  end
  object InsertarTTxCR3: TUniStoredProc
    StoredProcName = 'despachador Insertar tTxCR'
    Connection = ConexionDestino3
    Left = 651
    Top = 112
    ParamData = <
      item
        DataType = ftInteger
        Name = 'idclave'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'fechatx'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'duraciontx'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'emisoracanal'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'programa'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'tema'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idestado'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'espacio'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'carpetacontenido'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ficherocontenido'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idservicio'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'despachador Insertar tTxCR'
  end
  object ConexionDestino4: TUniConnection
    ProviderName = 'MySQL'
    Database = 'masivosms'
    Username = 'root'
    Password = 'windowsxp'
    Server = '10.10.0.10'
    LoginPrompt = False
    Left = 199
    Top = 160
  end
  object Claves4: TUniStoredProc
    StoredProcName = 'despachador clavesxchequeo'
    Connection = ConexionDestino4
    Options.QueryRecCount = True
    Left = 339
    Top = 160
    ParamData = <
      item
        DataType = ftString
        Name = 'chequeo'
        ParamType = ptInput
        Size = 100
      end
      item
        DataType = ftString
        Name = 'chequeo1'
        ParamType = ptInput
        Size = 100
      end
      item
        DataType = ftInteger
        Name = 'LIID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'clavecita'
        ParamType = ptInput
        Size = 100
      end>
    CommandStoredProcName = 'despachador clavesxchequeo'
  end
  object InsertarTTelefonia4: TUniStoredProc
    StoredProcName = '`despachador insertar ttelefonia`'
    Connection = ConexionDestino4
    Left = 416
    Top = 160
    ParamData = <
      item
        DataType = ftInteger
        Name = 'idclave'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'duracion'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'origen'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'destino'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'carpetacontenido'
        ParamType = ptInput
        Size = 250
      end
      item
        DataType = ftString
        Name = 'ficherocontenido'
        ParamType = ptInput
        Size = 250
      end
      item
        DataType = ftInteger
        Name = 'servicio'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'fechatx'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'dsa'
        ParamType = ptInput
        Size = 250
      end
      item
        DataType = ftInteger
        Name = 'idcategoria'
        ParamType = ptInput
      end>
    CommandStoredProcName = '`despachador insertar ttelefonia`'
  end
  object InsertarTCorrespondencia4: TUniStoredProc
    StoredProcName = 'despachador Insertar TCorrespondencia'
    Connection = ConexionDestino4
    Left = 536
    Top = 160
    ParamData = <
      item
        DataType = ftInteger
        Name = 'idclave'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'fechatx'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'remite'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'destino'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'dirremite'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'dirdestino'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idmunicipio'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idestado'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idnivelprioridad'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'carpetaprocesado'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ficheroprocesado'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'carpetacontenido'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ficherocontenido'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'nota'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idservicio'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'despachador Insertar TCorrespondencia'
  end
  object InsertarTTxCR4: TUniStoredProc
    StoredProcName = 'despachador Insertar tTxCR'
    Connection = ConexionDestino4
    Left = 651
    Top = 160
    ParamData = <
      item
        DataType = ftInteger
        Name = 'idclave'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'fechatx'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'duraciontx'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'emisoracanal'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'programa'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'tema'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idestado'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'espacio'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'carpetacontenido'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ficherocontenido'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idservicio'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'despachador Insertar tTxCR'
  end
  object ConexionDestino5: TUniConnection
    ProviderName = 'MySQL'
    Database = 'masivosms'
    Username = 'root'
    Password = 'windowsxp'
    Server = '10.10.0.10'
    LoginPrompt = False
    Left = 199
    Top = 208
  end
  object Claves5: TUniStoredProc
    StoredProcName = 'despachador clavesxchequeo'
    Connection = ConexionDestino5
    Options.QueryRecCount = True
    Left = 339
    Top = 208
    ParamData = <
      item
        DataType = ftString
        Name = 'chequeo'
        ParamType = ptInput
        Size = 100
      end
      item
        DataType = ftString
        Name = 'chequeo1'
        ParamType = ptInput
        Size = 100
      end
      item
        DataType = ftInteger
        Name = 'LIID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'clavecita'
        ParamType = ptInput
        Size = 100
      end>
    CommandStoredProcName = 'despachador clavesxchequeo'
  end
  object InsertarTTelefonia5: TUniStoredProc
    StoredProcName = '`despachador insertar ttelefonia`'
    Connection = ConexionDestino5
    Left = 416
    Top = 208
    ParamData = <
      item
        DataType = ftInteger
        Name = 'idclave'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'duracion'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'origen'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'destino'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'carpetacontenido'
        ParamType = ptInput
        Size = 250
      end
      item
        DataType = ftString
        Name = 'ficherocontenido'
        ParamType = ptInput
        Size = 250
      end
      item
        DataType = ftInteger
        Name = 'servicio'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'fechatx'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'dsa'
        ParamType = ptInput
        Size = 250
      end
      item
        DataType = ftInteger
        Name = 'idcategoria'
        ParamType = ptInput
      end>
    CommandStoredProcName = '`despachador insertar ttelefonia`'
  end
  object InsertarTCorrespondencia5: TUniStoredProc
    StoredProcName = 'despachador Insertar TCorrespondencia'
    Connection = ConexionDestino5
    Left = 536
    Top = 208
    ParamData = <
      item
        DataType = ftInteger
        Name = 'idclave'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'fechatx'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'remite'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'destino'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'dirremite'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'dirdestino'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idmunicipio'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idestado'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idnivelprioridad'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'carpetaprocesado'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ficheroprocesado'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'carpetacontenido'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ficherocontenido'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'nota'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idservicio'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'despachador Insertar TCorrespondencia'
  end
  object InsertarTTxCR5: TUniStoredProc
    StoredProcName = 'despachador Insertar tTxCR'
    Connection = ConexionDestino5
    Left = 651
    Top = 208
    ParamData = <
      item
        DataType = ftInteger
        Name = 'idclave'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'fechatx'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'duraciontx'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'emisoracanal'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'programa'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'tema'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idestado'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'espacio'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'carpetacontenido'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ficherocontenido'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idservicio'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'despachador Insertar tTxCR'
  end
  object ConexionDestino6: TUniConnection
    ProviderName = 'MySQL'
    Database = 'masivosms'
    Username = 'root'
    Password = 'windowsxp'
    Server = '10.10.0.10'
    LoginPrompt = False
    Left = 199
    Top = 256
  end
  object Claves6: TUniStoredProc
    StoredProcName = 'despachador clavesxchequeo'
    Connection = ConexionDestino6
    Options.QueryRecCount = True
    Left = 339
    Top = 256
    ParamData = <
      item
        DataType = ftString
        Name = 'chequeo'
        ParamType = ptInput
        Size = 100
      end
      item
        DataType = ftString
        Name = 'chequeo1'
        ParamType = ptInput
        Size = 100
      end
      item
        DataType = ftInteger
        Name = 'LIID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'clavecita'
        ParamType = ptInput
        Size = 100
      end>
    CommandStoredProcName = 'despachador clavesxchequeo'
  end
  object InsertarTTelefonia6: TUniStoredProc
    StoredProcName = '`despachador insertar ttelefonia`'
    Connection = ConexionDestino6
    Left = 416
    Top = 256
    ParamData = <
      item
        DataType = ftInteger
        Name = 'idclave'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'duracion'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'origen'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'destino'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'carpetacontenido'
        ParamType = ptInput
        Size = 250
      end
      item
        DataType = ftString
        Name = 'ficherocontenido'
        ParamType = ptInput
        Size = 250
      end
      item
        DataType = ftInteger
        Name = 'servicio'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'fechatx'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'dsa'
        ParamType = ptInput
        Size = 250
      end
      item
        DataType = ftInteger
        Name = 'idcategoria'
        ParamType = ptInput
      end>
    CommandStoredProcName = '`despachador insertar ttelefonia`'
  end
  object InsertarTCorrespondencia6: TUniStoredProc
    StoredProcName = 'despachador Insertar TCorrespondencia'
    Connection = ConexionDestino6
    Left = 536
    Top = 256
    ParamData = <
      item
        DataType = ftInteger
        Name = 'idclave'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'fechatx'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'remite'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'destino'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'dirremite'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'dirdestino'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idmunicipio'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idestado'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idnivelprioridad'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'carpetaprocesado'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ficheroprocesado'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'carpetacontenido'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ficherocontenido'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'nota'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idservicio'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'despachador Insertar TCorrespondencia'
  end
  object InsertarTTxCR6: TUniStoredProc
    StoredProcName = 'despachador Insertar tTxCR'
    Connection = ConexionDestino6
    Left = 651
    Top = 256
    ParamData = <
      item
        DataType = ftInteger
        Name = 'idclave'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'fechatx'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'duraciontx'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'emisoracanal'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'programa'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'tema'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idestado'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'espacio'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'carpetacontenido'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ficherocontenido'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idservicio'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'despachador Insertar tTxCR'
  end
  object ConexionDestino7: TUniConnection
    ProviderName = 'MySQL'
    Database = 'masivosms'
    Username = 'root'
    Password = 'windowsxp'
    Server = '10.10.0.10'
    LoginPrompt = False
    Left = 199
    Top = 304
  end
  object Claves7: TUniStoredProc
    StoredProcName = 'despachador clavesxchequeo'
    Connection = ConexionDestino7
    LockMode = lmOptimistic
    Options.QueryRecCount = True
    Left = 339
    Top = 304
    ParamData = <
      item
        DataType = ftString
        Name = 'chequeo'
        ParamType = ptInput
        Size = 100
      end
      item
        DataType = ftString
        Name = 'chequeo1'
        ParamType = ptInput
        Size = 100
      end
      item
        DataType = ftInteger
        Name = 'LIID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'clavecita'
        ParamType = ptInput
        Size = 100
      end>
    CommandStoredProcName = 'despachador clavesxchequeo'
  end
  object InsertarTTelefonia7: TUniStoredProc
    StoredProcName = '`despachador insertar ttelefonia`'
    Connection = ConexionDestino7
    Left = 416
    Top = 304
    ParamData = <
      item
        DataType = ftInteger
        Name = 'idclave'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'duracion'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'origen'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'destino'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'carpetacontenido'
        ParamType = ptInput
        Size = 250
      end
      item
        DataType = ftString
        Name = 'ficherocontenido'
        ParamType = ptInput
        Size = 250
      end
      item
        DataType = ftInteger
        Name = 'servicio'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'fechatx'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'dsa'
        ParamType = ptInput
        Size = 250
      end
      item
        DataType = ftInteger
        Name = 'idcategoria'
        ParamType = ptInput
      end>
    CommandStoredProcName = '`despachador insertar ttelefonia`'
  end
  object InsertarTCorrespondencia7: TUniStoredProc
    StoredProcName = 'despachador Insertar TCorrespondencia'
    Connection = ConexionDestino7
    Left = 536
    Top = 304
    ParamData = <
      item
        DataType = ftInteger
        Name = 'idclave'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'fechatx'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'remite'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'destino'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'dirremite'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'dirdestino'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idmunicipio'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idestado'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idnivelprioridad'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'carpetaprocesado'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ficheroprocesado'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'carpetacontenido'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ficherocontenido'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'nota'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idservicio'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'despachador Insertar TCorrespondencia'
  end
  object InsertarTTxCR7: TUniStoredProc
    StoredProcName = 'despachador Insertar tTxCR'
    Connection = ConexionDestino7
    Left = 651
    Top = 304
    ParamData = <
      item
        DataType = ftInteger
        Name = 'idclave'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'fechatx'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'duraciontx'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'emisoracanal'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'programa'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'tema'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idestado'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'espacio'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'carpetacontenido'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ficherocontenido'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idservicio'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'despachador Insertar tTxCR'
  end
  object ConexionDestino8: TUniConnection
    ProviderName = 'MySQL'
    Database = 'masivosms'
    Username = 'root'
    Password = 'windowsxp'
    Server = '10.10.0.10'
    LoginPrompt = False
    Left = 199
    Top = 352
  end
  object Claves8: TUniStoredProc
    StoredProcName = 'despachador clavesxchequeo'
    Connection = ConexionDestino8
    Options.QueryRecCount = True
    Left = 339
    Top = 352
    ParamData = <
      item
        DataType = ftString
        Name = 'chequeo'
        ParamType = ptInput
        Size = 100
      end
      item
        DataType = ftString
        Name = 'chequeo1'
        ParamType = ptInput
        Size = 100
      end
      item
        DataType = ftInteger
        Name = 'LIID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'clavecita'
        ParamType = ptInput
        Size = 100
      end>
    CommandStoredProcName = 'despachador clavesxchequeo'
  end
  object InsertarTTelefonia8: TUniStoredProc
    StoredProcName = '`despachador insertar ttelefonia`'
    Connection = ConexionDestino8
    Left = 416
    Top = 352
    ParamData = <
      item
        DataType = ftInteger
        Name = 'idclave'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'duracion'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'origen'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'destino'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'carpetacontenido'
        ParamType = ptInput
        Size = 250
      end
      item
        DataType = ftString
        Name = 'ficherocontenido'
        ParamType = ptInput
        Size = 250
      end
      item
        DataType = ftInteger
        Name = 'servicio'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'fechatx'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'dsa'
        ParamType = ptInput
        Size = 250
      end
      item
        DataType = ftInteger
        Name = 'idcategoria'
        ParamType = ptInput
      end>
    CommandStoredProcName = '`despachador insertar ttelefonia`'
  end
  object InsertarTCorrespondencia8: TUniStoredProc
    StoredProcName = 'despachador Insertar TCorrespondencia'
    Connection = ConexionDestino8
    Left = 536
    Top = 352
    ParamData = <
      item
        DataType = ftInteger
        Name = 'idclave'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'fechatx'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'remite'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'destino'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'dirremite'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'dirdestino'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idmunicipio'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idestado'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idnivelprioridad'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'carpetaprocesado'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ficheroprocesado'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'carpetacontenido'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ficherocontenido'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'nota'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idservicio'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'despachador Insertar TCorrespondencia'
  end
  object InsertarTTxCR8: TUniStoredProc
    StoredProcName = 'despachador Insertar tTxCR'
    Connection = ConexionDestino8
    Left = 651
    Top = 352
    ParamData = <
      item
        DataType = ftInteger
        Name = 'idclave'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'fechatx'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'duraciontx'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'emisoracanal'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'programa'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'tema'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idestado'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'espacio'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'carpetacontenido'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ficherocontenido'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idservicio'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'despachador Insertar tTxCR'
  end
  object ConexionDestino9: TUniConnection
    ProviderName = 'MySQL'
    Database = 'masivosms'
    Username = 'root'
    Password = 'windowsxp'
    Server = '10.10.0.10'
    LoginPrompt = False
    Left = 199
    Top = 400
  end
  object Claves9: TUniStoredProc
    StoredProcName = 'despachador clavesxchequeo'
    Connection = ConexionDestino9
    Options.QueryRecCount = True
    Left = 339
    Top = 400
    ParamData = <
      item
        DataType = ftString
        Name = 'chequeo'
        ParamType = ptInput
        Size = 100
      end
      item
        DataType = ftString
        Name = 'chequeo1'
        ParamType = ptInput
        Size = 100
      end
      item
        DataType = ftInteger
        Name = 'LIID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'clavecita'
        ParamType = ptInput
        Size = 100
      end>
    CommandStoredProcName = 'despachador clavesxchequeo'
  end
  object InsertarTTelefonia9: TUniStoredProc
    StoredProcName = '`despachador insertar ttelefonia`'
    Connection = ConexionDestino9
    Left = 416
    Top = 400
    ParamData = <
      item
        DataType = ftInteger
        Name = 'idclave'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'duracion'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'origen'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'destino'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'carpetacontenido'
        ParamType = ptInput
        Size = 250
      end
      item
        DataType = ftString
        Name = 'ficherocontenido'
        ParamType = ptInput
        Size = 250
      end
      item
        DataType = ftInteger
        Name = 'servicio'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'fechatx'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'dsa'
        ParamType = ptInput
        Size = 250
      end
      item
        DataType = ftInteger
        Name = 'idcategoria'
        ParamType = ptInput
      end>
    CommandStoredProcName = '`despachador insertar ttelefonia`'
  end
  object InsertarTCorrespondencia9: TUniStoredProc
    StoredProcName = 'despachador Insertar TCorrespondencia'
    Connection = ConexionDestino9
    Left = 536
    Top = 400
    ParamData = <
      item
        DataType = ftInteger
        Name = 'idclave'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'fechatx'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'remite'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'destino'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'dirremite'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'dirdestino'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idmunicipio'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idestado'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idnivelprioridad'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'carpetaprocesado'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ficheroprocesado'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'carpetacontenido'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ficherocontenido'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'nota'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idservicio'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'despachador Insertar TCorrespondencia'
  end
  object InsertarTTxCR9: TUniStoredProc
    StoredProcName = 'despachador Insertar tTxCR'
    Connection = ConexionDestino9
    Left = 651
    Top = 400
    ParamData = <
      item
        DataType = ftInteger
        Name = 'idclave'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'fechatx'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'duraciontx'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'emisoracanal'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'programa'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'tema'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idestado'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'espacio'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'carpetacontenido'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ficherocontenido'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idservicio'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'despachador Insertar tTxCR'
  end
  object ConexionDestino10: TUniConnection
    ProviderName = 'MySQL'
    Database = 'masivosms'
    Username = 'root'
    Password = 'windowsxp'
    Server = '10.10.0.10'
    LoginPrompt = False
    Left = 199
    Top = 448
  end
  object Claves10: TUniStoredProc
    StoredProcName = 'despachador clavesxchequeo'
    Connection = ConexionDestino10
    Options.QueryRecCount = True
    Left = 339
    Top = 448
    ParamData = <
      item
        DataType = ftString
        Name = 'chequeo'
        ParamType = ptInput
        Size = 100
      end
      item
        DataType = ftString
        Name = 'chequeo1'
        ParamType = ptInput
        Size = 100
      end
      item
        DataType = ftInteger
        Name = 'LIID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'clavecita'
        ParamType = ptInput
        Size = 100
      end>
    CommandStoredProcName = 'despachador clavesxchequeo'
  end
  object InsertarTTelefonia10: TUniStoredProc
    StoredProcName = '`despachador insertar ttelefonia`'
    Connection = ConexionDestino10
    Left = 416
    Top = 448
    ParamData = <
      item
        DataType = ftInteger
        Name = 'idclave'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'duracion'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'origen'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'destino'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'carpetacontenido'
        ParamType = ptInput
        Size = 250
      end
      item
        DataType = ftString
        Name = 'ficherocontenido'
        ParamType = ptInput
        Size = 250
      end
      item
        DataType = ftInteger
        Name = 'servicio'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'fechatx'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'dsa'
        ParamType = ptInput
        Size = 250
      end
      item
        DataType = ftInteger
        Name = 'idcategoria'
        ParamType = ptInput
      end>
    CommandStoredProcName = '`despachador insertar ttelefonia`'
  end
  object InsertarTCorrespondencia10: TUniStoredProc
    StoredProcName = 'despachador Insertar TCorrespondencia'
    Connection = ConexionDestino10
    Left = 536
    Top = 448
    ParamData = <
      item
        DataType = ftInteger
        Name = 'idclave'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'fechatx'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'remite'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'destino'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'dirremite'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'dirdestino'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idmunicipio'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idestado'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idnivelprioridad'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'carpetaprocesado'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ficheroprocesado'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'carpetacontenido'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ficherocontenido'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'nota'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idservicio'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'despachador Insertar TCorrespondencia'
  end
  object InsertarTTxCR10: TUniStoredProc
    StoredProcName = 'despachador Insertar tTxCR'
    Connection = ConexionDestino10
    Left = 651
    Top = 448
    ParamData = <
      item
        DataType = ftInteger
        Name = 'idclave'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'fechatx'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'duraciontx'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'emisoracanal'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'programa'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'tema'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idestado'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'espacio'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'carpetacontenido'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ficherocontenido'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idservicio'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'despachador Insertar tTxCR'
  end
  object ConexionDestino11: TUniConnection
    ProviderName = 'MySQL'
    Database = 'masivosms'
    Username = 'root'
    Password = 'windowsxp'
    Server = '10.10.0.10'
    LoginPrompt = False
    Left = 199
    Top = 504
  end
  object Claves11: TUniStoredProc
    StoredProcName = 'despachador clavesxchequeo'
    Connection = ConexionDestino11
    Options.QueryRecCount = True
    Left = 339
    Top = 504
    ParamData = <
      item
        DataType = ftString
        Name = 'chequeo'
        ParamType = ptInput
        Size = 100
      end
      item
        DataType = ftString
        Name = 'chequeo1'
        ParamType = ptInput
        Size = 100
      end
      item
        DataType = ftInteger
        Name = 'LIID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'clavecita'
        ParamType = ptInput
        Size = 100
      end>
    CommandStoredProcName = 'despachador clavesxchequeo'
  end
  object InsertarTTelefonia11: TUniStoredProc
    StoredProcName = '`despachador insertar ttelefonia`'
    Connection = ConexionDestino11
    Left = 416
    Top = 504
    ParamData = <
      item
        DataType = ftInteger
        Name = 'idclave'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'duracion'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'origen'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'destino'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'carpetacontenido'
        ParamType = ptInput
        Size = 250
      end
      item
        DataType = ftString
        Name = 'ficherocontenido'
        ParamType = ptInput
        Size = 250
      end
      item
        DataType = ftInteger
        Name = 'servicio'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'fechatx'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'dsa'
        ParamType = ptInput
        Size = 250
      end
      item
        DataType = ftInteger
        Name = 'idcategoria'
        ParamType = ptInput
      end>
    CommandStoredProcName = '`despachador insertar ttelefonia`'
  end
  object InsertarTCorrespondencia11: TUniStoredProc
    StoredProcName = 'despachador Insertar TCorrespondencia'
    Connection = ConexionDestino11
    Left = 536
    Top = 504
    ParamData = <
      item
        DataType = ftInteger
        Name = 'idclave'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'fechatx'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'remite'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'destino'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'dirremite'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'dirdestino'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idmunicipio'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idestado'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idnivelprioridad'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'carpetaprocesado'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ficheroprocesado'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'carpetacontenido'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ficherocontenido'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'nota'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idservicio'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'despachador Insertar TCorrespondencia'
  end
  object InsertarTTxCR11: TUniStoredProc
    StoredProcName = 'despachador Insertar tTxCR'
    Connection = ConexionDestino11
    Left = 651
    Top = 504
    ParamData = <
      item
        DataType = ftInteger
        Name = 'idclave'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'fechatx'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'duraciontx'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'emisoracanal'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'programa'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'tema'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idestado'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'espacio'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'carpetacontenido'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ficherocontenido'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idservicio'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'despachador Insertar tTxCR'
  end
  object ConexionDestino12: TUniConnection
    ProviderName = 'MySQL'
    Database = 'masivosms'
    Username = 'root'
    Password = 'windowsxp'
    Server = '10.10.0.10'
    LoginPrompt = False
    Left = 199
    Top = 552
  end
  object Claves12: TUniStoredProc
    StoredProcName = 'despachador clavesxchequeo'
    Connection = ConexionDestino12
    Options.QueryRecCount = True
    Left = 339
    Top = 552
    ParamData = <
      item
        DataType = ftString
        Name = 'chequeo'
        ParamType = ptInput
        Size = 100
      end
      item
        DataType = ftString
        Name = 'chequeo1'
        ParamType = ptInput
        Size = 100
      end
      item
        DataType = ftInteger
        Name = 'LIID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'clavecita'
        ParamType = ptInput
        Size = 100
      end>
    CommandStoredProcName = 'despachador clavesxchequeo'
  end
  object InsertarTTelefonia12: TUniStoredProc
    StoredProcName = '`despachador insertar ttelefonia`'
    Connection = ConexionDestino12
    Left = 416
    Top = 552
    ParamData = <
      item
        DataType = ftInteger
        Name = 'idclave'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'duracion'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'origen'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'destino'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'carpetacontenido'
        ParamType = ptInput
        Size = 250
      end
      item
        DataType = ftString
        Name = 'ficherocontenido'
        ParamType = ptInput
        Size = 250
      end
      item
        DataType = ftInteger
        Name = 'servicio'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'fechatx'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'dsa'
        ParamType = ptInput
        Size = 250
      end
      item
        DataType = ftInteger
        Name = 'idcategoria'
        ParamType = ptInput
      end>
    CommandStoredProcName = '`despachador insertar ttelefonia`'
  end
  object InsertarTCorrespondencia12: TUniStoredProc
    StoredProcName = 'despachador Insertar TCorrespondencia'
    Connection = ConexionDestino12
    Left = 536
    Top = 552
    ParamData = <
      item
        DataType = ftInteger
        Name = 'idclave'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'fechatx'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'remite'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'destino'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'dirremite'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'dirdestino'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idmunicipio'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idestado'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idnivelprioridad'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'carpetaprocesado'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ficheroprocesado'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'carpetacontenido'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ficherocontenido'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'nota'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idservicio'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'despachador Insertar TCorrespondencia'
  end
  object InsertarTTxCR12: TUniStoredProc
    StoredProcName = 'despachador Insertar tTxCR'
    Connection = ConexionDestino12
    Left = 651
    Top = 552
    ParamData = <
      item
        DataType = ftInteger
        Name = 'idclave'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'fechatx'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'duraciontx'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'emisoracanal'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'programa'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'tema'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idestado'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'espacio'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'carpetacontenido'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ficherocontenido'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idservicio'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'despachador Insertar tTxCR'
  end
  object ConexionDestino13: TUniConnection
    ProviderName = 'MySQL'
    Database = 'masivosms'
    Username = 'root'
    Password = 'windowsxp'
    Server = '10.10.0.10'
    LoginPrompt = False
    Left = 199
    Top = 600
  end
  object Claves13: TUniStoredProc
    StoredProcName = 'despachador clavesxchequeo'
    Connection = ConexionDestino13
    Options.QueryRecCount = True
    Left = 339
    Top = 600
    ParamData = <
      item
        DataType = ftString
        Name = 'chequeo'
        ParamType = ptInput
        Size = 100
      end
      item
        DataType = ftString
        Name = 'chequeo1'
        ParamType = ptInput
        Size = 100
      end
      item
        DataType = ftInteger
        Name = 'LIID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'clavecita'
        ParamType = ptInput
        Size = 100
      end>
    CommandStoredProcName = 'despachador clavesxchequeo'
  end
  object InsertarTTelefonia13: TUniStoredProc
    StoredProcName = '`despachador insertar ttelefonia`'
    Connection = ConexionDestino13
    Left = 416
    Top = 600
    ParamData = <
      item
        DataType = ftInteger
        Name = 'idclave'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'duracion'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'origen'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'destino'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'carpetacontenido'
        ParamType = ptInput
        Size = 250
      end
      item
        DataType = ftString
        Name = 'ficherocontenido'
        ParamType = ptInput
        Size = 250
      end
      item
        DataType = ftInteger
        Name = 'servicio'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'fechatx'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'dsa'
        ParamType = ptInput
        Size = 250
      end
      item
        DataType = ftInteger
        Name = 'idcategoria'
        ParamType = ptInput
      end>
    CommandStoredProcName = '`despachador insertar ttelefonia`'
  end
  object InsertarTCorrespondencia13: TUniStoredProc
    StoredProcName = 'despachador Insertar TCorrespondencia'
    Connection = ConexionDestino13
    Left = 536
    Top = 600
    ParamData = <
      item
        DataType = ftInteger
        Name = 'idclave'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'fechatx'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'remite'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'destino'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'dirremite'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'dirdestino'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idmunicipio'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idestado'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idnivelprioridad'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'carpetaprocesado'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ficheroprocesado'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'carpetacontenido'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ficherocontenido'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'nota'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idservicio'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'despachador Insertar TCorrespondencia'
  end
  object InsertarTTxCR13: TUniStoredProc
    StoredProcName = 'despachador Insertar tTxCR'
    Connection = ConexionDestino13
    Left = 651
    Top = 600
    ParamData = <
      item
        DataType = ftInteger
        Name = 'idclave'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'fechatx'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'duraciontx'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'emisoracanal'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'programa'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'tema'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idestado'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'espacio'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'carpetacontenido'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ficherocontenido'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idservicio'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'despachador Insertar tTxCR'
  end
  object ConexionDestino14: TUniConnection
    ProviderName = 'MySQL'
    Database = 'masivosms'
    Username = 'root'
    Password = 'windowsxp'
    Server = '10.10.0.10'
    LoginPrompt = False
    Left = 199
    Top = 648
  end
  object Claves14: TUniStoredProc
    StoredProcName = 'despachador clavesxchequeo'
    Connection = ConexionDestino14
    Options.QueryRecCount = True
    Left = 339
    Top = 648
    ParamData = <
      item
        DataType = ftString
        Name = 'chequeo'
        ParamType = ptInput
        Size = 100
      end
      item
        DataType = ftString
        Name = 'chequeo1'
        ParamType = ptInput
        Size = 100
      end
      item
        DataType = ftInteger
        Name = 'LIID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'clavecita'
        ParamType = ptInput
        Size = 100
      end>
    CommandStoredProcName = 'despachador clavesxchequeo'
  end
  object InsertarTTelefonia14: TUniStoredProc
    StoredProcName = '`despachador insertar ttelefonia`'
    Connection = ConexionDestino14
    Left = 416
    Top = 648
    ParamData = <
      item
        DataType = ftInteger
        Name = 'idclave'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'duracion'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'origen'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'destino'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'carpetacontenido'
        ParamType = ptInput
        Size = 250
      end
      item
        DataType = ftString
        Name = 'ficherocontenido'
        ParamType = ptInput
        Size = 250
      end
      item
        DataType = ftInteger
        Name = 'servicio'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'fechatx'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'dsa'
        ParamType = ptInput
        Size = 250
      end
      item
        DataType = ftInteger
        Name = 'idcategoria'
        ParamType = ptInput
      end>
    CommandStoredProcName = '`despachador insertar ttelefonia`'
  end
  object InsertarTCorrespondencia14: TUniStoredProc
    StoredProcName = 'despachador Insertar TCorrespondencia'
    Connection = ConexionDestino14
    Left = 536
    Top = 648
    ParamData = <
      item
        DataType = ftInteger
        Name = 'idclave'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'fechatx'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'remite'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'destino'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'dirremite'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'dirdestino'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idmunicipio'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idestado'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idnivelprioridad'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'carpetaprocesado'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ficheroprocesado'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'carpetacontenido'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ficherocontenido'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'nota'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idservicio'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'despachador Insertar TCorrespondencia'
  end
  object InsertarTTxCR14: TUniStoredProc
    StoredProcName = 'despachador Insertar tTxCR'
    Connection = ConexionDestino14
    Left = 651
    Top = 648
    ParamData = <
      item
        DataType = ftInteger
        Name = 'idclave'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'fechatx'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'duraciontx'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'emisoracanal'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'programa'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'tema'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idestado'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'espacio'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'carpetacontenido'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ficherocontenido'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idservicio'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'despachador Insertar tTxCR'
  end
  object ConexionDestino15: TUniConnection
    ProviderName = 'MySQL'
    Database = 'masivosms'
    Username = 'root'
    Password = 'windowsxp'
    Server = '10.10.0.10'
    LoginPrompt = False
    Left = 199
    Top = 696
  end
  object Claves15: TUniStoredProc
    StoredProcName = 'despachador clavesxchequeo'
    Connection = ConexionDestino15
    Options.QueryRecCount = True
    Left = 339
    Top = 696
    ParamData = <
      item
        DataType = ftString
        Name = 'chequeo'
        ParamType = ptInput
        Size = 100
      end
      item
        DataType = ftString
        Name = 'chequeo1'
        ParamType = ptInput
        Size = 100
      end
      item
        DataType = ftInteger
        Name = 'LIID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'clavecita'
        ParamType = ptInput
        Size = 100
      end>
    CommandStoredProcName = 'despachador clavesxchequeo'
  end
  object InsertarTTelefonia15: TUniStoredProc
    StoredProcName = '`despachador insertar ttelefonia`'
    Connection = ConexionDestino15
    Left = 416
    Top = 696
    ParamData = <
      item
        DataType = ftInteger
        Name = 'idclave'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'duracion'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'origen'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'destino'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'carpetacontenido'
        ParamType = ptInput
        Size = 250
      end
      item
        DataType = ftString
        Name = 'ficherocontenido'
        ParamType = ptInput
        Size = 250
      end
      item
        DataType = ftInteger
        Name = 'servicio'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'fechatx'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'dsa'
        ParamType = ptInput
        Size = 250
      end
      item
        DataType = ftInteger
        Name = 'idcategoria'
        ParamType = ptInput
      end>
    CommandStoredProcName = '`despachador insertar ttelefonia`'
  end
  object InsertarTCorrespondencia15: TUniStoredProc
    StoredProcName = 'despachador Insertar TCorrespondencia'
    Connection = ConexionDestino15
    Left = 536
    Top = 696
    ParamData = <
      item
        DataType = ftInteger
        Name = 'idclave'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'fechatx'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'remite'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'destino'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'dirremite'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'dirdestino'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idmunicipio'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idestado'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idnivelprioridad'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'carpetaprocesado'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ficheroprocesado'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'carpetacontenido'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ficherocontenido'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'nota'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idservicio'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'despachador Insertar TCorrespondencia'
  end
  object InsertarTTxCR15: TUniStoredProc
    StoredProcName = 'despachador Insertar tTxCR'
    Connection = ConexionDestino15
    Left = 651
    Top = 696
    ParamData = <
      item
        DataType = ftInteger
        Name = 'idclave'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'fechatx'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'duraciontx'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'emisoracanal'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'programa'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'tema'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idestado'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'espacio'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'carpetacontenido'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ficherocontenido'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idservicio'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'despachador Insertar tTxCR'
  end
  object ConexionDestino16: TUniConnection
    ProviderName = 'MySQL'
    Database = 'masivosms'
    Username = 'root'
    Password = 'windowsxp'
    Server = '10.10.0.10'
    LoginPrompt = False
    Left = 199
    Top = 744
  end
  object Claves16: TUniStoredProc
    StoredProcName = 'despachador clavesxchequeo'
    Connection = ConexionDestino16
    Options.QueryRecCount = True
    Left = 339
    Top = 744
    ParamData = <
      item
        DataType = ftString
        Name = 'chequeo'
        ParamType = ptInput
        Size = 100
      end
      item
        DataType = ftString
        Name = 'chequeo1'
        ParamType = ptInput
        Size = 100
      end
      item
        DataType = ftInteger
        Name = 'LIID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'clavecita'
        ParamType = ptInput
        Size = 100
      end>
    CommandStoredProcName = 'despachador clavesxchequeo'
  end
  object InsertarTTelefonia16: TUniStoredProc
    StoredProcName = '`despachador insertar ttelefonia`'
    Connection = ConexionDestino16
    Left = 416
    Top = 744
    ParamData = <
      item
        DataType = ftInteger
        Name = 'idclave'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'duracion'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'origen'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'destino'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'carpetacontenido'
        ParamType = ptInput
        Size = 250
      end
      item
        DataType = ftString
        Name = 'ficherocontenido'
        ParamType = ptInput
        Size = 250
      end
      item
        DataType = ftInteger
        Name = 'servicio'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'fechatx'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'dsa'
        ParamType = ptInput
        Size = 250
      end
      item
        DataType = ftInteger
        Name = 'idcategoria'
        ParamType = ptInput
      end>
    CommandStoredProcName = '`despachador insertar ttelefonia`'
  end
  object InsertarTCorrespondencia16: TUniStoredProc
    StoredProcName = 'despachador Insertar TCorrespondencia'
    Connection = ConexionDestino16
    Left = 536
    Top = 744
    ParamData = <
      item
        DataType = ftInteger
        Name = 'idclave'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'fechatx'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'remite'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'destino'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'dirremite'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'dirdestino'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idmunicipio'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idestado'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idnivelprioridad'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'carpetaprocesado'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ficheroprocesado'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'carpetacontenido'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ficherocontenido'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'nota'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idservicio'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'despachador Insertar TCorrespondencia'
  end
  object InsertarTTxCR16: TUniStoredProc
    StoredProcName = 'despachador Insertar tTxCR'
    Connection = ConexionDestino16
    Left = 651
    Top = 744
    ParamData = <
      item
        DataType = ftInteger
        Name = 'idclave'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'fechatx'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'duraciontx'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'emisoracanal'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'programa'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'tema'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idestado'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'espacio'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'carpetacontenido'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ficherocontenido'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idservicio'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'despachador Insertar tTxCR'
  end
  object InsertarMasivoSMS1: TUniStoredProc
    StoredProcName = 'InsMasivoSMS'
    SQLInsert.Strings = (
      
        'CALL `despachador insertar ttelefonia`(:idclave, :duracion, :ori' +
        'gen, :destino, :carpetacontenido, :ficherocontenido, :servicio, ' +
        ':fechatx, :dsa, :idcategoria)')
    Connection = ConexionDestino1
    Left = 744
    Top = 16
    ParamData = <
      item
        DataType = ftString
        Name = 'tabla'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'origen'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'destino'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'fechaIni'
        ParamType = ptInput
        Size = 40
      end
      item
        DataType = ftString
        Name = 'msg'
        ParamType = ptInput
        Size = 250
      end>
    CommandStoredProcName = 'InsMasivoSMS'
  end
  object InsertarMasivoSMS2: TUniStoredProc
    StoredProcName = 'InsMasivoSMS'
    SQLInsert.Strings = (
      
        'CALL `despachador insertar ttelefonia`(:idclave, :duracion, :ori' +
        'gen, :destino, :carpetacontenido, :ficherocontenido, :servicio, ' +
        ':fechatx, :dsa, :idcategoria)')
    Connection = ConexionDestino2
    Left = 744
    Top = 64
    ParamData = <
      item
        DataType = ftString
        Name = 'tabla'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'origen'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'destino'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'fechaIni'
        ParamType = ptInput
        Size = 40
      end
      item
        DataType = ftString
        Name = 'msg'
        ParamType = ptInput
        Size = 250
      end>
    CommandStoredProcName = 'InsMasivoSMS'
  end
  object InsertarMasivoSMS3: TUniStoredProc
    StoredProcName = 'InsMasivoSMS'
    SQLInsert.Strings = (
      
        'CALL `despachador insertar ttelefonia`(:idclave, :duracion, :ori' +
        'gen, :destino, :carpetacontenido, :ficherocontenido, :servicio, ' +
        ':fechatx, :dsa, :idcategoria)')
    Connection = ConexionDestino3
    Left = 744
    Top = 112
    ParamData = <
      item
        DataType = ftString
        Name = 'tabla'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'origen'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'destino'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'fechaIni'
        ParamType = ptInput
        Size = 40
      end
      item
        DataType = ftString
        Name = 'msg'
        ParamType = ptInput
        Size = 250
      end>
    CommandStoredProcName = 'InsMasivoSMS'
  end
  object InsertarMasivoSMS4: TUniStoredProc
    StoredProcName = 'InsMasivoSMS'
    SQLInsert.Strings = (
      
        'CALL `despachador insertar ttelefonia`(:idclave, :duracion, :ori' +
        'gen, :destino, :carpetacontenido, :ficherocontenido, :servicio, ' +
        ':fechatx, :dsa, :idcategoria)')
    Connection = ConexionDestino4
    Left = 744
    Top = 160
    ParamData = <
      item
        DataType = ftString
        Name = 'tabla'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'origen'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'destino'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'fechaIni'
        ParamType = ptInput
        Size = 40
      end
      item
        DataType = ftString
        Name = 'msg'
        ParamType = ptInput
        Size = 250
      end>
    CommandStoredProcName = 'InsMasivoSMS'
  end
  object InsertarMasivoSMS5: TUniStoredProc
    StoredProcName = 'InsMasivoSMS'
    SQLInsert.Strings = (
      
        'CALL `despachador insertar ttelefonia`(:idclave, :duracion, :ori' +
        'gen, :destino, :carpetacontenido, :ficherocontenido, :servicio, ' +
        ':fechatx, :dsa, :idcategoria)')
    Connection = ConexionDestino5
    Left = 744
    Top = 208
    ParamData = <
      item
        DataType = ftString
        Name = 'tabla'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'origen'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'destino'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'fechaIni'
        ParamType = ptInput
        Size = 40
      end
      item
        DataType = ftString
        Name = 'msg'
        ParamType = ptInput
        Size = 250
      end>
    CommandStoredProcName = 'InsMasivoSMS'
  end
  object InsertarMasivoSMS6: TUniStoredProc
    StoredProcName = 'InsMasivoSMS'
    SQLInsert.Strings = (
      
        'CALL `despachador insertar ttelefonia`(:idclave, :duracion, :ori' +
        'gen, :destino, :carpetacontenido, :ficherocontenido, :servicio, ' +
        ':fechatx, :dsa, :idcategoria)')
    Connection = ConexionDestino6
    Left = 744
    Top = 256
    ParamData = <
      item
        DataType = ftString
        Name = 'tabla'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'origen'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'destino'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'fechaIni'
        ParamType = ptInput
        Size = 40
      end
      item
        DataType = ftString
        Name = 'msg'
        ParamType = ptInput
        Size = 250
      end>
    CommandStoredProcName = 'InsMasivoSMS'
  end
  object InsertarMasivoSMS7: TUniStoredProc
    StoredProcName = 'InsMasivoSMS'
    SQLInsert.Strings = (
      'CALL InsMasivoSMS(:tabla, :origen, :destino, :fechaIni, :msg)')
    Connection = ConexionDestino7
    Left = 744
    Top = 304
    ParamData = <
      item
        DataType = ftString
        Name = 'tabla'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'origen'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'destino'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'fechaIni'
        ParamType = ptInput
        Size = 40
      end
      item
        DataType = ftString
        Name = 'msg'
        ParamType = ptInput
        Size = 250
      end>
    CommandStoredProcName = 'InsMasivoSMS'
  end
  object InsertarMasivoSMS8: TUniStoredProc
    StoredProcName = 'InsMasivoSMS'
    SQLInsert.Strings = (
      'CALL InsMasivoSMS(:tabla, :origen, :destino, :fechaIni, :msg)')
    Connection = ConexionDestino8
    Left = 744
    Top = 352
    ParamData = <
      item
        DataType = ftString
        Name = 'tabla'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'origen'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'destino'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'fechaIni'
        ParamType = ptInput
        Size = 40
      end
      item
        DataType = ftString
        Name = 'msg'
        ParamType = ptInput
        Size = 250
      end>
    CommandStoredProcName = 'InsMasivoSMS'
  end
  object InsertarMasivoSMS9: TUniStoredProc
    StoredProcName = 'InsMasivoSMS'
    SQLInsert.Strings = (
      
        'CALL `despachador insertar ttelefonia`(:idclave, :duracion, :ori' +
        'gen, :destino, :carpetacontenido, :ficherocontenido, :servicio, ' +
        ':fechatx, :dsa, :idcategoria)')
    Connection = ConexionDestino9
    Left = 744
    Top = 400
    ParamData = <
      item
        DataType = ftString
        Name = 'tabla'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'origen'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'destino'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'fechaIni'
        ParamType = ptInput
        Size = 40
      end
      item
        DataType = ftString
        Name = 'msg'
        ParamType = ptInput
        Size = 250
      end>
    CommandStoredProcName = 'InsMasivoSMS'
  end
  object InsertarMasivoSMS10: TUniStoredProc
    StoredProcName = 'InsMasivoSMS'
    SQLInsert.Strings = (
      
        'CALL `despachador insertar ttelefonia`(:idclave, :duracion, :ori' +
        'gen, :destino, :carpetacontenido, :ficherocontenido, :servicio, ' +
        ':fechatx, :dsa, :idcategoria)')
    Connection = ConexionDestino10
    Left = 744
    Top = 448
    ParamData = <
      item
        DataType = ftString
        Name = 'tabla'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'origen'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'destino'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'fechaIni'
        ParamType = ptInput
        Size = 40
      end
      item
        DataType = ftString
        Name = 'msg'
        ParamType = ptInput
        Size = 250
      end>
    CommandStoredProcName = 'InsMasivoSMS'
  end
  object InsertarMasivoSMS11: TUniStoredProc
    StoredProcName = 'InsMasivoSMS'
    SQLInsert.Strings = (
      
        'CALL `despachador insertar ttelefonia`(:idclave, :duracion, :ori' +
        'gen, :destino, :carpetacontenido, :ficherocontenido, :servicio, ' +
        ':fechatx, :dsa, :idcategoria)')
    Connection = ConexionDestino11
    Left = 744
    Top = 504
    ParamData = <
      item
        DataType = ftString
        Name = 'tabla'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'origen'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'destino'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'fechaIni'
        ParamType = ptInput
        Size = 40
      end
      item
        DataType = ftString
        Name = 'msg'
        ParamType = ptInput
        Size = 250
      end>
    CommandStoredProcName = 'InsMasivoSMS'
  end
  object InsertarMasivoSMS12: TUniStoredProc
    StoredProcName = 'InsMasivoSMS'
    SQLInsert.Strings = (
      
        'CALL `despachador insertar ttelefonia`(:idclave, :duracion, :ori' +
        'gen, :destino, :carpetacontenido, :ficherocontenido, :servicio, ' +
        ':fechatx, :dsa, :idcategoria)')
    Connection = ConexionDestino12
    Left = 744
    Top = 552
    ParamData = <
      item
        DataType = ftString
        Name = 'tabla'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'origen'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'destino'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'fechaIni'
        ParamType = ptInput
        Size = 40
      end
      item
        DataType = ftString
        Name = 'msg'
        ParamType = ptInput
        Size = 250
      end>
    CommandStoredProcName = 'InsMasivoSMS'
  end
  object InsertarMasivoSMS13: TUniStoredProc
    StoredProcName = 'InsMasivoSMS'
    SQLInsert.Strings = (
      
        'CALL `despachador insertar ttelefonia`(:idclave, :duracion, :ori' +
        'gen, :destino, :carpetacontenido, :ficherocontenido, :servicio, ' +
        ':fechatx, :dsa, :idcategoria)')
    Connection = ConexionDestino13
    Left = 744
    Top = 600
    ParamData = <
      item
        DataType = ftString
        Name = 'tabla'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'origen'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'destino'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'fechaIni'
        ParamType = ptInput
        Size = 40
      end
      item
        DataType = ftString
        Name = 'msg'
        ParamType = ptInput
        Size = 250
      end>
    CommandStoredProcName = 'InsMasivoSMS'
  end
  object InsertarMasivoSMS14: TUniStoredProc
    StoredProcName = 'InsMasivoSMS'
    SQLInsert.Strings = (
      
        'CALL `despachador insertar ttelefonia`(:idclave, :duracion, :ori' +
        'gen, :destino, :carpetacontenido, :ficherocontenido, :servicio, ' +
        ':fechatx, :dsa, :idcategoria)')
    Connection = ConexionDestino14
    Left = 744
    Top = 648
    ParamData = <
      item
        DataType = ftString
        Name = 'tabla'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'origen'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'destino'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'fechaIni'
        ParamType = ptInput
        Size = 40
      end
      item
        DataType = ftString
        Name = 'msg'
        ParamType = ptInput
        Size = 250
      end>
    CommandStoredProcName = 'InsMasivoSMS'
  end
  object InsertarMasivoSMS15: TUniStoredProc
    StoredProcName = 'InsMasivoSMS'
    SQLInsert.Strings = (
      'CALL InsMasivoSMS(:tabla, :origen, :destino, :fechaIni, :msg)')
    Connection = ConexionDestino15
    Left = 744
    Top = 696
    ParamData = <
      item
        DataType = ftString
        Name = 'tabla'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'origen'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'destino'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'fechaIni'
        ParamType = ptInput
        Size = 40
      end
      item
        DataType = ftString
        Name = 'msg'
        ParamType = ptInput
        Size = 250
      end>
    CommandStoredProcName = 'InsMasivoSMS'
  end
  object InsertarMasivoSMS16: TUniStoredProc
    StoredProcName = 'InsMasivoSMS'
    SQLInsert.Strings = (
      
        'CALL `despachador insertar ttelefonia`(:idclave, :duracion, :ori' +
        'gen, :destino, :carpetacontenido, :ficherocontenido, :servicio, ' +
        ':fechatx, :dsa, :idcategoria)')
    Connection = ConexionDestino16
    Left = 744
    Top = 730
    ParamData = <
      item
        DataType = ftString
        Name = 'tabla'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'origen'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'destino'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'fechaIni'
        ParamType = ptInput
        Size = 40
      end
      item
        DataType = ftString
        Name = 'msg'
        ParamType = ptInput
        Size = 250
      end>
    CommandStoredProcName = 'InsMasivoSMS'
  end
  object combinados1: TUniStoredProc
    StoredProcName = '`despachador seleccionar combinado`'
    Connection = ConexionDestino1
    Options.QueryRecCount = True
    Left = 283
    Top = 16
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Pidchequeo'
        ParamType = ptInput
      end>
    CommandStoredProcName = '`despachador seleccionar combinado`'
  end
  object combinados2: TUniStoredProc
    StoredProcName = '`despachador seleccionar combinado`'
    Connection = ConexionDestino2
    Options.QueryRecCount = True
    Left = 283
    Top = 64
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Pidchequeo'
        ParamType = ptInput
      end>
    CommandStoredProcName = '`despachador seleccionar combinado`'
  end
  object combinados3: TUniStoredProc
    StoredProcName = '`despachador seleccionar combinado`'
    Connection = ConexionDestino3
    Options.QueryRecCount = True
    Left = 283
    Top = 112
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Pidchequeo'
        ParamType = ptInput
      end>
    CommandStoredProcName = '`despachador seleccionar combinado`'
  end
  object combinados4: TUniStoredProc
    StoredProcName = '`despachador seleccionar combinado`'
    Connection = ConexionDestino4
    Options.QueryRecCount = True
    Left = 283
    Top = 160
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Pidchequeo'
        ParamType = ptInput
      end>
    CommandStoredProcName = '`despachador seleccionar combinado`'
  end
  object combinados5: TUniStoredProc
    StoredProcName = '`despachador seleccionar combinado`'
    Connection = ConexionDestino5
    Options.QueryRecCount = True
    Left = 283
    Top = 208
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Pidchequeo'
        ParamType = ptInput
      end>
    CommandStoredProcName = '`despachador seleccionar combinado`'
  end
  object combinados6: TUniStoredProc
    StoredProcName = '`despachador seleccionar combinado`'
    Connection = ConexionDestino6
    Options.QueryRecCount = True
    Left = 283
    Top = 256
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Pidchequeo'
        ParamType = ptInput
      end>
    CommandStoredProcName = '`despachador seleccionar combinado`'
  end
  object combinados7: TUniStoredProc
    StoredProcName = '`despachador seleccionar combinado`'
    Connection = ConexionDestino7
    Options.QueryRecCount = True
    Left = 283
    Top = 304
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Pidchequeo'
        ParamType = ptInput
      end>
    CommandStoredProcName = '`despachador seleccionar combinado`'
  end
  object combinados8: TUniStoredProc
    StoredProcName = '`despachador seleccionar combinado`'
    Connection = ConexionDestino8
    Options.QueryRecCount = True
    Left = 283
    Top = 352
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Pidchequeo'
        ParamType = ptInput
      end>
    CommandStoredProcName = '`despachador seleccionar combinado`'
  end
  object combinados9: TUniStoredProc
    StoredProcName = '`despachador seleccionar combinado`'
    Connection = ConexionDestino9
    Options.QueryRecCount = True
    Left = 283
    Top = 400
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Pidchequeo'
        ParamType = ptInput
      end>
    CommandStoredProcName = '`despachador seleccionar combinado`'
  end
  object combinados10: TUniStoredProc
    StoredProcName = '`despachador seleccionar combinado`'
    Connection = ConexionDestino10
    Options.QueryRecCount = True
    Left = 283
    Top = 448
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Pidchequeo'
        ParamType = ptInput
      end>
    CommandStoredProcName = '`despachador seleccionar combinado`'
  end
  object combinados11: TUniStoredProc
    StoredProcName = '`despachador seleccionar combinado`'
    Connection = ConexionDestino11
    Options.QueryRecCount = True
    Left = 283
    Top = 504
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Pidchequeo'
        ParamType = ptInput
      end>
    CommandStoredProcName = '`despachador seleccionar combinado`'
  end
  object combinados12: TUniStoredProc
    StoredProcName = '`despachador seleccionar combinado`'
    Connection = ConexionDestino12
    Options.QueryRecCount = True
    Left = 283
    Top = 552
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Pidchequeo'
        ParamType = ptInput
      end>
    CommandStoredProcName = '`despachador seleccionar combinado`'
  end
  object combinados13: TUniStoredProc
    StoredProcName = '`despachador seleccionar combinado`'
    Connection = ConexionDestino13
    Options.QueryRecCount = True
    Left = 283
    Top = 600
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Pidchequeo'
        ParamType = ptInput
      end>
    CommandStoredProcName = '`despachador seleccionar combinado`'
  end
  object combinados14: TUniStoredProc
    StoredProcName = '`despachador seleccionar combinado`'
    Connection = ConexionDestino14
    Options.QueryRecCount = True
    Left = 283
    Top = 648
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Pidchequeo'
        ParamType = ptInput
      end>
    CommandStoredProcName = '`despachador seleccionar combinado`'
  end
  object combinados15: TUniStoredProc
    StoredProcName = '`despachador seleccionar combinado`'
    Connection = ConexionDestino15
    Options.QueryRecCount = True
    Left = 283
    Top = 696
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Pidchequeo'
        ParamType = ptInput
      end>
    CommandStoredProcName = '`despachador seleccionar combinado`'
  end
  object combinados16: TUniStoredProc
    StoredProcName = '`despachador seleccionar combinado`'
    Connection = ConexionDestino16
    Options.QueryRecCount = True
    Left = 283
    Top = 744
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Pidchequeo'
        ParamType = ptInput
      end>
    CommandStoredProcName = '`despachador seleccionar combinado`'
  end
end
