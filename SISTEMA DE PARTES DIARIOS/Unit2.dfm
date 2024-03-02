object DM: TDM
  OldCreateOrder = False
  Height = 765
  Width = 923
  object MySQLUniProvider1: TMySQLUniProvider
    Left = 40
    Top = 16
  end
  object serv: TUniConnection
    ProviderName = 'mySQL'
    Left = 168
    Top = 16
  end
  object Quser1: TUniQuery
    Connection = serv
    SQL.Strings = (
      'SELECT usuarios.usuario '
      'FROM usuarios'
      'WHERE usuarios.usuario = :Puser;')
    Left = 32
    Top = 64
    ParamData = <
      item
        DataType = ftString
        Name = 'Puser'
        ParamType = ptInput
      end>
  end
  object DSuser1: TUniDataSource
    DataSet = Quser1
    Left = 88
    Top = 64
  end
  object Qinsertarusuario: TUniQuery
    Connection = serv
    SQL.Strings = (
      'INSERT into `usuarios`(usuario,contrase'#241'a,cargo,unidad) '
      'values (:Puser,SHA(:Ppass),:Pcargo,:Punidad)')
    Left = 152
    Top = 168
    ParamData = <
      item
        DataType = ftString
        Name = 'Puser'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Ppass'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Pcargo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Punidad'
        ParamType = ptInput
      end>
  end
  object DSinsertarusuario: TUniDataSource
    DataSet = Qinsertarusuario
    Left = 216
    Top = 168
  end
  object Qlistcargoadm: TUniQuery
    Connection = serv
    SQL.Strings = (
      'SELECT cargos.cargos  '
      'FROM cargos')
    Left = 32
    Top = 168
  end
  object DSlistcargoadm: TUniDataSource
    DataSet = Qlistcargoadm
    Left = 88
    Top = 168
  end
  object Qlistunidadadm: TUniQuery
    Connection = serv
    SQL.Strings = (
      'SELECT unidades.unidad '
      'FROM unidades')
    Left = 32
    Top = 120
  end
  object DSQlistunidadadm: TUniDataSource
    DataSet = Qlistunidadadm
    Left = 88
    Top = 120
  end
  object Qeliminaruser: TUniQuery
    Connection = serv
    SQL.Strings = (
      
        'DELETE QUICK FROM `usuarios` WHERE `usuarios`.`usuario` = :Puser' +
        ';')
    Left = 280
    Top = 168
    ParamData = <
      item
        DataType = ftString
        Name = 'Puser'
        ParamType = ptInput
      end>
  end
  object DSeliminaruser: TUniDataSource
    DataSet = Qeliminaruser
    Left = 352
    Top = 168
  end
  object DSusuarios: TUniDataSource
    DataSet = Tusuarios
    Left = 216
    Top = 64
  end
  object Qmodpass: TUniQuery
    Connection = serv
    SQL.Strings = (
      'update `usuarios` '
      'set `usuarios`.`contrase'#241'a` = sha(:pnewpass) '
      'where `usuarios`.`usuario` = :puser')
    Left = 152
    Top = 121
    ParamData = <
      item
        DataType = ftString
        Name = 'pnewpass'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'puser'
        ParamType = ptInput
      end>
  end
  object DSmospass: TUniDataSource
    DataSet = Qmodpass
    Left = 216
    Top = 120
  end
  object chequeo: TUniConnection
    ProviderName = 'mySQL'
    Left = 112
    Top = 16
  end
  object codificadores: TUniConnection
    ProviderName = 'mySQL'
    Database = 'partes 2'
    Left = 232
    Top = 16
  end
  object partes: TUniConnection
    ProviderName = 'mySQL'
    Left = 296
    Top = 16
  end
  object UniQuery1: TUniQuery
    SQL.Strings = (
      'SELECT usuarios.usuario '
      'FROM usuarios'
      'where usuarios.usuario = :Puser')
    Left = 280
    Top = 64
    ParamData = <
      item
        DataType = ftString
        Name = 'Puser'
        ParamType = ptInput
      end>
  end
  object UniDataSource1: TUniDataSource
    DataSet = UniQuery1
    Left = 280
    Top = 120
  end
  object Quser: TUniQuery
    Connection = serv
    SQL.Strings = (
      'SELECT usuarios.usuario,usuarios.contrase'#241'a '
      'FROM usuarios '
      'where usuarios.usuario=:Puser AND '
      'usuarios.contrase'#241'a= SHA(:Ppass);')
    Left = 352
    Top = 64
    ParamData = <
      item
        DataType = ftString
        Name = 'Puser'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Ppass'
        ParamType = ptInput
      end>
  end
  object Qcargoyunidad: TUniQuery
    Connection = serv
    SQL.Strings = (
      'SELECT usuarios.cargo,usuarios.unidad '
      'FROM usuarios '
      'where usuarios.usuario=:Puser;')
    Left = 32
    Top = 216
    ParamData = <
      item
        DataType = ftString
        Name = 'Puser'
        ParamType = ptInput
        Value = ''
      end>
  end
  object DScargoyunidad: TUniDataSource
    DataSet = Qcargoyunidad
    Left = 32
    Top = 264
  end
  object DSuser: TUniDataSource
    DataSet = Quser
    Left = 352
    Top = 120
  end
  object DSQBYUchequeos: TUniDataSource
    DataSet = QBYUchequeos
    Left = 445
    Top = 64
  end
  object QBYUchequeos: TUniQuery
    Connection = partes
    SQL.Strings = (
      'SELECT * from chequeos '
      'WHERE chequeos.UNIDAD = :Punidad;')
    RefreshOptions = [roAfterUpdate]
    Left = 445
    Top = 16
    ParamData = <
      item
        DataType = ftString
        Name = 'Punidad'
        ParamType = ptInput
      end>
    object QBYUchequeosUNIDAD: TStringField
      FieldName = 'UNIDAD'
    end
    object QBYUchequeosCLAVES: TIntegerField
      FieldName = 'CLAVES'
    end
    object QBYUchequeosLMONITOREO: TStringField
      FieldName = 'LMONITOREO'
      Size = 50
    end
    object QBYUchequeosTELÉFONO: TStringField
      FieldName = 'TEL'#201'FONO'
      Size = 50
    end
    object QBYUchequeosESTADO: TStringField
      FieldName = 'ESTADO'
    end
    object QBYUchequeosCASO: TStringField
      FieldName = 'CASO'
      Size = 50
    end
    object QBYUchequeosFECHAALTA: TDateTimeField
      FieldName = 'FECHAALTA'
    end
    object QBYUchequeosOBJETIVO: TStringField
      FieldName = 'OBJETIVO'
      Size = 100
    end
    object QBYUchequeosFASE: TStringField
      FieldName = 'FASE'
      Size = 50
    end
    object QBYUchequeosDPTO: TStringField
      FieldName = 'DPTO'
      Size = 50
    end
    object QBYUchequeosOFICIAL: TStringField
      FieldName = 'OFICIAL'
      Size = 50
    end
    object QBYUchequeosNIVELDEAPROBACION: TStringField
      FieldName = 'NIVELDEAPROBACION'
      Size = 100
    end
    object QBYUchequeosPERMANENTEONO: TSmallintField
      FieldName = 'PERMANENTEONO'
    end
    object QBYUchequeosATENCIONESPECIAL: TSmallintField
      FieldName = 'ATENCIONESPECIAL'
    end
    object QBYUchequeosMOTIVOAE: TStringField
      FieldName = 'MOTIVOAE'
      Size = 255
    end
    object QBYUchequeosCUMPLIMIENTO: TSmallintField
      FieldName = 'CUMPLIMIENTO'
    end
    object QBYUchequeosMOTIVO: TStringField
      FieldName = 'MOTIVO'
      Size = 50
    end
    object QBYUchequeosESPECIALISTA: TStringField
      FieldName = 'ESPECIALISTA'
      Size = 50
    end
    object QBYUchequeosFECHABAJA: TDateTimeField
      FieldName = 'FECHABAJA'
    end
    object QBYUchequeosUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object QBYUchequeosINTERES: TStringField
      FieldName = 'INTERES'
      Size = 255
    end
    object QBYUchequeosIDCHEQUEO: TLargeintField
      FieldName = 'IDCHEQUEO'
    end
  end
  object DSdptosysecc: TUniDataSource
    DataSet = TABLEdptosysecc
    Left = 240
    Top = 318
  end
  object DSfase: TUniDataSource
    DataSet = TABLEfase
    Left = 176
    Top = 318
  end
  object DSmotcump: TUniDataSource
    DataSet = TABLEmotcump
    Left = 120
    Top = 320
  end
  object DSniveldelAprobacion: TUniDataSource
    DataSet = Tniveldeaprobacion
    Left = 32
    Top = 320
  end
  object DSlugmon: TUniDataSource
    DataSet = Tlugardemonitoreo
    Left = 320
    Top = 318
  end
  object UniSQL1: TUniSQL
    Connection = partes
    Left = 360
    Top = 16
  end
  object DSQBYUllamadas: TUniDataSource
    DataSet = QBYUllamadas
    Left = 517
    Top = 64
  end
  object DSTkmnoperm: TUniDataSource
    DataSet = QBYUkmnoperm
    Left = 576
    Top = 64
  end
  object QBYUllamadas: TUniQuery
    Connection = partes
    SQL.Strings = (
      'SELECT * from llamadas1'
      'WHERE llamadas1.UNIDAD = :Punidad;')
    Left = 517
    Top = 16
    ParamData = <
      item
        DataType = ftString
        Name = 'Punidad'
      end>
    object QBYUllamadasUNIDAD: TIntegerField
      FieldName = 'UNIDAD'
    end
    object QBYUllamadasLUGARDEMONITOREO: TStringField
      FieldName = 'LUGAR DE MONITOREO'
      Size = 50
    end
    object QBYUllamadasFECHA: TDateTimeField
      FieldName = 'FECHA'
    end
    object QBYUllamadasCHEQUEOSKT: TIntegerField
      FieldName = 'CHEQUEOSKT'
    end
    object QBYUllamadasLLAMENTRADAS: TIntegerField
      FieldName = 'LLAMENTRADAS'
    end
    object QBYUllamadasLLAMSININTERES: TIntegerField
      FieldName = 'LLAMSININTERES'
    end
    object QBYUllamadasLLAMCONINTERES: TIntegerField
      FieldName = 'LLAMCONINTERES'
    end
    object QBYUllamadasLLAMPENDIENTE: TIntegerField
      FieldName = 'LLAMPENDIENTE'
    end
    object QBYUllamadasVERSIONES: TIntegerField
      FieldName = 'VERSIONES'
    end
    object QBYUllamadasPUBLICASAPLICADAS: TIntegerField
      FieldName = 'PUBLICASAPLICADAS'
    end
    object QBYUllamadasMCCENTRADAS: TIntegerField
      FieldName = 'MCCENTRADAS'
    end
    object QBYUllamadasMCCCONINTERES: TIntegerField
      FieldName = 'MCCCONINTERES'
    end
    object QBYUllamadasMCCSININTERES: TIntegerField
      FieldName = 'MCCSININTERES'
    end
    object QBYUllamadasMCCPENDIENTE: TIntegerField
      FieldName = 'MCCPENDIENTE'
    end
    object QBYUllamadasUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object QBYUllamadasIDLLAMADAS: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'IDLLAMADAS'
    end
  end
  object QBYUkmnoperm: TUniQuery
    Connection = partes
    SQL.Strings = (
      'SELECT * from `km no permanentes 1`'
      'WHERE `km no permanentes 1`.UNIDAD = :Punidad;')
    Left = 576
    Top = 16
    ParamData = <
      item
        DataType = ftString
        Name = 'Punidad'
        ParamType = ptInput
      end>
    object QBYUkmnopermidkmnoperm: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'idkmnoperm'
    end
    object QBYUkmnopermunidad: TStringField
      FieldName = 'unidad'
    end
    object QBYUkmnopermexpediente: TStringField
      FieldName = 'expediente'
      Size = 100
    end
    object QBYUkmnopermentrada: TDateTimeField
      FieldName = 'entrada'
    end
    object QBYUkmnopermsalida: TDateTimeField
      FieldName = 'salida'
    end
    object QBYUkmnopermestado: TStringField
      FieldName = 'estado'
      Size = 50
    end
    object QBYUkmnopermniveldeaprobacion: TStringField
      FieldName = 'niveldeaprobacion'
      Size = 50
    end
    object QBYUkmnopermtipodekm: TStringField
      FieldName = 'tipodekm'
      Size = 50
    end
    object QBYUkmnopermlugarmonitoreo: TStringField
      FieldName = 'lugar  monitoreo'
      Size = 50
    end
    object QBYUkmnopermmonitoreadopor: TStringField
      FieldName = 'monitoreadopor'
      Size = 50
    end
    object QBYUkmnopermtranscritopor: TStringField
      FieldName = 'transcritopor'
      Size = 50
    end
    object QBYUkmnopermidioma: TStringField
      FieldName = 'idioma'
      Size = 50
    end
    object QBYUkmnopermfase: TStringField
      FieldName = 'fase'
      Size = 50
    end
    object QBYUkmnopermdpto: TStringField
      FieldName = 'dpto'
      Size = 50
    end
    object QBYUkmnopermformaprocesamiento: TStringField
      FieldName = 'forma procesamiento'
      Size = 50
    end
    object QBYUkmnopermcumpfinalidadop: TSmallintField
      FieldName = 'cumpfinalidadop'
    end
    object QBYUkmnopermmotivonocumplim: TStringField
      FieldName = 'motivonocumplim'
      Size = 255
    end
    object QBYUkmnoperminfresultado: TDateTimeField
      FieldName = 'infresultado'
    end
    object QBYUkmnopermtrancripsia: TDateTimeField
      FieldName = 'trancripsia'
    end
    object QBYUkmnopermcantidaddecuartillas: TIntegerField
      FieldName = 'cantidaddecuartillas'
    end
    object QBYUkmnopermppalestematicasreferencia: TStringField
      FieldName = 'ppalestematicasreferencia'
      Size = 255
    end
    object QBYUkmnopermusuario: TStringField
      FieldName = 'usuario'
    end
  end
  object DSestados: TUniDataSource
    DataSet = Testados
    Left = 176
    Top = 552
  end
  object DSTtiposdeKM: TUniDataSource
    DataSet = TtiposdeKM
    Left = 40
    Top = 440
  end
  object DSTlugardemonitoreo: TUniDataSource
    DataSet = Tlugardemonitoreo
    Left = 120
    Top = 440
  end
  object DSidiomas: TUniDataSource
    DataSet = Tidiomas
    Left = 176
    Top = 440
  end
  object DSTformadeprocesamientokm: TUniDataSource
    DataSet = Tformadeprocesamientokm
    Left = 240
    Top = 440
  end
  object QBYUasist: TUniQuery
    Connection = partes
    SQL.Strings = (
      'SELECT * from ASISTENCIA '
      'WHERE ASISTENCIA.UNIDAD = :Punidad;')
    Left = 640
    Top = 16
    ParamData = <
      item
        DataType = ftString
        Name = 'Punidad'
        ParamType = ptInput
      end>
    object QBYUasistFECHA: TDateTimeField
      FieldName = 'FECHA'
    end
    object QBYUasistUNIDAD: TStringField
      FieldName = 'UNIDAD'
      Size = 30
    end
    object QBYUasistLUGARDEMONITOREO: TStringField
      FieldName = 'LUGAR DE MONITOREO'
      Size = 255
    end
    object QBYUasistKT: TIntegerField
      FieldName = 'KT'
    end
    object QBYUasistKM: TIntegerField
      FieldName = 'KM'
    end
    object QBYUasistKD: TIntegerField
      FieldName = 'KD'
    end
    object QBYUasistESCRITO: TIntegerField
      FieldName = 'ESCRITO'
    end
    object QBYUasistADMSIST: TIntegerField
      FieldName = 'ADMSIST'
    end
    object QBYUasistOCIC: TIntegerField
      FieldName = 'OCIC'
    end
    object QBYUasistDIRECCION: TIntegerField
      FieldName = 'DIRECCION'
    end
    object QBYUasistCADETESISMI: TIntegerField
      FieldName = 'CADETES ISMI'
    end
    object QBYUasistSERVDEGUARDIA: TIntegerField
      FieldName = 'SERV DE GUARDIA'
    end
    object QBYUasistCOMISIONSERV: TIntegerField
      FieldName = 'COMISION SERV'
    end
    object QBYUasistESTUDIOAUTORIZADO: TIntegerField
      FieldName = 'ESTUDIO AUTORIZADO'
    end
    object QBYUasistPREPMILITAR: TIntegerField
      FieldName = 'PREP MILITAR'
    end
    object QBYUasistCHEQUEOMEDICO: TIntegerField
      FieldName = 'CHEQUEO MEDICO'
    end
    object QBYUasistVAC: TIntegerField
      FieldName = 'VAC'
    end
    object QBYUasistLM: TIntegerField
      FieldName = 'L/M'
    end
    object QBYUasistLSS: TIntegerField
      FieldName = 'LSS'
    end
    object QBYUasistRS: TIntegerField
      FieldName = 'RS'
    end
    object QBYUasistENFERMO: TIntegerField
      FieldName = 'ENFERMO'
    end
    object QBYUasistPROBPERSOFAMILIAR: TIntegerField
      FieldName = 'PROB PERS O FAMILIAR'
    end
    object QBYUasistFRANCO: TIntegerField
      FieldName = 'FRANCO'
    end
    object QBYUasistOTROS: TStringField
      FieldName = 'OTROS'
      Size = 255
    end
    object QBYUasistUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object QBYUasistIDASISTENCIA: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'IDASISTENCIA'
    end
  end
  object DSQBYUasist: TUniDataSource
    DataSet = QBYUasist
    Left = 640
    Top = 64
  end
  object DSescrito: TUniDataSource
    DataSet = Tescrito
    Left = 149
    Top = 264
  end
  object DStipodoc: TUniDataSource
    DataSet = Ttipodoc
    Left = 112
    Top = 552
  end
  object DST6virus: TUniDataSource
    DataSet = T6virus
    Left = 213
    Top = 264
  end
  object DST6reporte: TUniDataSource
    DataSet = T6reporte
    Left = 280
    Top = 264
  end
  object DST6asist: TUniDataSource
    DataSet = T6asist
    Left = 352
    Top = 264
  end
  object DStunidades: TUniDataSource
    DataSet = Tunidades
    Left = 40
    Top = 552
  end
  object DSllamadas: TUniDataSource
    DataSet = Tllamadas
    Left = 517
    Top = 160
  end
  object DSchequeos: TUniDataSource
    DataSet = Tchequeos
    Left = 445
    Top = 160
  end
  object DSasist: TUniDataSource
    DataSet = Tasist
    Left = 640
    Top = 160
  end
  object DSkmnoperm: TUniDataSource
    DataSet = Tkmnoperm
    Left = 576
    Top = 160
  end
  object DSincidencias: TUniDataSource
    DataSet = Tincidencias
    Left = 296
    Top = 552
  end
  object QBYUincidencias: TUniQuery
    Connection = partes
    SQL.Strings = (
      'select * from incidencias where incidencias.unidad = :punidad;')
    Options.StrictUpdate = False
    Left = 445
    Top = 232
    ParamData = <
      item
        DataType = ftString
        Name = 'punidad'
        ParamType = ptInput
      end>
  end
  object DSQBYUincidencias: TUniDataSource
    DataSet = QBYUincidencias
    Left = 445
    Top = 280
  end
  object Qmodcargo: TUniQuery
    Connection = serv
    SQL.Strings = (
      'update `usuarios` '
      'set `usuarios`.`cargo` = :pcargo '
      'where `usuarios`.`usuario` = :puser')
    Left = 88
    Top = 216
    ParamData = <
      item
        DataType = ftString
        Name = 'pcargo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'puser'
        ParamType = ptInput
      end>
  end
  object DSQmodcargo: TUniDataSource
    DataSet = Qmodcargo
    Left = 88
    Top = 264
  end
  object QOICE: TUniQuery
    Connection = partes
    SQL.Strings = (
      'SELECT `oice`.`Id` FROM `oice` WHERE `oice`.`DPTO` = :Pdpto;')
    Options.StrictUpdate = False
    Left = 509
    Top = 232
    ParamData = <
      item
        DataType = ftString
        Name = 'Pdpto'
        ParamType = ptInput
      end>
  end
  object DSQOICE: TUniDataSource
    DataSet = QOICE
    Left = 509
    Top = 280
  end
  object QOICE2: TUniQuery
    Connection = partes
    SQL.Strings = (
      'SELECT * FROM OICE2 WHERE OICE2.ID=:PID;')
    Options.StrictUpdate = False
    Left = 568
    Top = 232
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PID'
        ParamType = ptInput
      end>
    object QOICE2USUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 255
    end
    object QOICE2UNIDAD: TStringField
      FieldName = 'UNIDAD'
      Size = 255
    end
    object QOICE2Id: TIntegerField
      FieldName = 'Id'
    end
    object QOICE2FECHA: TDateTimeField
      FieldName = 'FECHA'
    end
    object QOICE2LLAMADASPROC: TStringField
      FieldName = 'LLAMADAS PROC'
      Size = 255
    end
    object QOICE2INFENBUZON: TStringField
      FieldName = 'INF EN BUZON'
      Size = 255
    end
    object QOICE2CINTERES: TStringField
      FieldName = 'C/INTERES'
      Size = 255
    end
    object QOICE2INFALOSDPTO: TStringField
      FieldName = 'INF A LOS DPTO'
      Size = 255
    end
    object QOICE2PDTE: TStringField
      FieldName = 'PDTE'
      Size = 255
    end
  end
  object DSQOICE2: TUniDataSource
    DataSet = QOICE2
    Left = 568
    Top = 280
  end
  object DSTOICE: TUniDataSource
    DataSet = TOICE
    Left = 232
    Top = 552
  end
  object DSQava0: TUniDataSource
    DataSet = Qava0
    Left = 445
    Top = 376
  end
  object Qava1: TUniQuery
    Connection = partes
    SQL.Strings = (
      'select * from `puntos avanzadas`'
      'where  `puntos avanzadas`.`unidad` = :Punidad;')
    Left = 509
    Top = 328
    ParamData = <
      item
        DataType = ftString
        Name = 'Punidad'
        ParamType = ptInput
      end>
  end
  object DSQava1: TUniDataSource
    DataSet = Qava1
    Left = 509
    Top = 376
  end
  object Qava0: TUniQuery
    Connection = partes
    SQL.Strings = (
      'select DISTINCT `puntos avanzadas`.`unidad`'
      '           from `puntos avanzadas`;')
    Left = 445
    Top = 328
  end
  object Qavaseg: TUniQuery
    Connection = partes
    SQL.Strings = (
      'select * from `seguimiento a las avanzadas 2`'
      'where `seguimiento a las avanzadas 2`.`idavanz` = :Pid'
      '  and `seguimiento a las avanzadas 2`.`unidad`  = :Punidad;')
    Options.StrictUpdate = False
    Left = 629
    Top = 232
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Pid'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'Punidad'
      end>
  end
  object DSQavaseg: TUniDataSource
    DataSet = Qavaseg
    Left = 629
    Top = 280
  end
  object DSQavaexplo: TUniDataSource
    DataSet = Qavaexplo
    Left = 693
    Top = 280
  end
  object Qavaexplo: TUniQuery
    Connection = partes
    SQL.Strings = (
      'select * from `explotaci'#243'n diaria oop avanzada`'
      'where `explotaci'#243'n diaria oop avanzada`.`idavanz` = :Pid '
      '  and `explotaci'#243'n diaria oop avanzada`.`unidad`= :Punidad;')
    Options.StrictUpdate = False
    Left = 693
    Top = 232
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Pid'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Punidad'
        ParamType = ptInput
      end>
  end
  object Qava2: TUniQuery
    Connection = partes
    SQL.Strings = (
      'select `puntos avanzadas`.`idavanz` from `puntos avanzadas`'
      'where  `puntos avanzadas`.`Punto Av` =:Pava '
      '  and   `puntos avanzadas`.`unidad` =:Punidad;')
    Left = 565
    Top = 328
    ParamData = <
      item
        DataType = ftString
        Name = 'Pava'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'Punidad'
        ParamType = ptInput
      end>
  end
  object DSQava2: TUniDataSource
    DataSet = Qava2
    Left = 565
    Top = 376
  end
  object DSTLUGARAPLIC: TUniDataSource
    DataSet = TLUGARAPLIC
    Left = 320
    Top = 440
  end
  object Qkmp0: TUniQuery
    Connection = partes
    SQL.Strings = (
      'select *'
      '  from `km permanentes y a requerimiento 1`'
      '  where `km permanentes y a requerimiento 1`.unidad = :Punidad;')
    Left = 445
    Top = 424
    ParamData = <
      item
        DataType = ftString
        Name = 'Punidad'
        ParamType = ptInput
      end>
  end
  object DSQkmp0: TUniDataSource
    DataSet = Qkmp0
    Left = 445
    Top = 472
  end
  object Qkmp1: TUniQuery
    Connection = partes
    SQL.Strings = (
      'select *'
      '  from `km permanentes y a requerimiento 1`;')
    Left = 509
    Top = 424
  end
  object DSQkmp1: TUniDataSource
    DataSet = Qkmp1
    Left = 509
    Top = 472
  end
  object Qkmp2: TUniQuery
    Connection = partes
    SQL.Strings = (
      'select * '
      '  from `seguimiento kmp y a req`'
      'where  `seguimiento kmp y a req`.`idkmperm` =:Pid;')
    Left = 565
    Top = 424
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Pid'
        ParamType = ptInput
      end>
  end
  object DSQkmp2: TUniDataSource
    DataSet = Qkmp2
    Left = 565
    Top = 472
  end
  object Qkmp: TUniQuery
    Connection = partes
    SQL.Strings = (
      'select * from `km permanentes y a requerimiento 1`'
      'where `km permanentes y a requerimiento 1`.`idkmperm` = :Pid'
      
        '  and `km permanentes y a requerimiento 1`.`unidad`   = :Punidad' +
        ';')
    Left = 629
    Top = 328
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Pid'
      end
      item
        DataType = ftUnknown
        Name = 'Punidad'
      end>
  end
  object DSQkmp: TUniDataSource
    DataSet = Qkmp
    Left = 629
    Top = 376
  end
  object QsegKM: TUniQuery
    Connection = partes
    SQL.Strings = (
      'select * from `seguimiento kmp y a req`'
      'where `seguimiento kmp y a req`.`idkmperm` = :Pid'
      '  and `seguimiento kmp y a req`.`unidad`   = :Punidad;')
    Left = 693
    Top = 328
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Pid'
      end
      item
        DataType = ftUnknown
        Name = 'Punidad'
      end>
  end
  object DSQsegKM: TUniDataSource
    DataSet = QsegKM
    Left = 693
    Top = 376
  end
  object DSTEXPKM: TUniDataSource
    DataSet = TEXPKM
    Left = 629
    Top = 472
  end
  object Qasist1: TUniQuery
    Connection = partes
    SQL.Strings = (
      'SELECT *'
      'FROM `asistencia`'
      'WHERE `asistencia`.`FECHA` >= :PFECHA1 '
      '  AND `asistencia`.`FECHA` <= :PFECHA2 '
      '  AND `asistencia`.`UNIDAD`=:PUNIDAD;')
    Left = 752
    Top = 16
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'PFECHA1'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'PFECHA2'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PUNIDAD'
        ParamType = ptInput
      end>
  end
  object DSQasist1: TUniDataSource
    DataSet = Qasist1
    Left = 752
    Top = 64
  end
  object Qasist2: TUniQuery
    Connection = partes
    SQL.Strings = (
      'SELECT *'
      'FROM `asistencia` '
      'WHERE `asistencia`.`FECHA` >= :PFECHA1 '
      '  AND `asistencia`.`FECHA` <= :PFECHA2;')
    Left = 808
    Top = 16
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'PFECHA1'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'PFECHA2'
        ParamType = ptInput
      end>
  end
  object DSQasist2: TUniDataSource
    DataSet = Qasist2
    Left = 808
    Top = 64
  end
  object Qllam1: TUniQuery
    Connection = partes
    SQL.Strings = (
      'SELECT *'
      'FROM `llamadas1` '
      'WHERE `llamadas1`.`FECHA` >= :PFECHA1 '
      '  AND `llamadas1`.`FECHA` <= :PFECHA2 '
      '  AND `llamadas1`.`UNIDAD`= :PUNIDAD;')
    Left = 752
    Top = 120
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'PFECHA1'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'PFECHA2'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PUNIDAD'
        ParamType = ptInput
      end>
  end
  object Qllam2: TUniQuery
    Connection = partes
    SQL.Strings = (
      'SELECT *'
      'FROM  `llamadas1` '
      'WHERE `llamadas1`.`FECHA` >= :PFECHA1 '
      '  AND `llamadas1`.`FECHA` <= :PFECHA2;')
    Left = 808
    Top = 120
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'PFECHA1'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'PFECHA2'
        ParamType = ptInput
      end>
  end
  object DSQllam1: TUniDataSource
    DataSet = Qllam1
    Left = 752
    Top = 176
  end
  object DSQllam2: TUniDataSource
    DataSet = Qllam2
    Left = 808
    Top = 176
  end
  object DSTavanzadas: TUniDataSource
    DataSet = Tavanzadas
    Left = 696
    Top = 472
  end
  object Qefect6: TUniQuery
    Connection = partes
    SQL.Strings = (
      'SELECT *'
      'FROM  `vi-6 reporte 1`'
      'WHERE `vi-6 reporte 1`.`FECHA` >= :PFECHA1 '
      '  AND `vi-6 reporte 1`.`FECHA` <= :PFECHA2;')
    Left = 752
    Top = 232
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'PFECHA1'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'PFECHA2'
        ParamType = ptInput
      end>
  end
  object DSQefect6: TUniDataSource
    DataSet = Qefect6
    Left = 808
    Top = 232
  end
  object DSTinterrucciones: TUniDataSource
    DataSet = Tinterrucciones
    Left = 448
    Top = 576
  end
  object DSTchequeosKD: TUniDataSource
    DataSet = TchequeosKD
    Left = 512
    Top = 576
  end
  object DSTtipochequeo: TUniDataSource
    DataSet = Ttipochequeo
    Left = 40
    Top = 657
  end
  object DSTobjetoaplicacion: TUniDataSource
    DataSet = Tobjetoaplicacion
    Left = 112
    Top = 657
  end
  object DSTnivelcompart: TUniDataSource
    DataSet = Tnivelcompart
    Left = 176
    Top = 657
  end
  object DSTcorreosKD: TUniDataSource
    DataSet = TcorreosKD
    Left = 592
    Top = 576
  end
  object Qalerta: TUniQuery
    Connection = partes
    ParamCheck = False
    SQL.Strings = (
      'select *  '
      '  from alertas'
      ' where alertas.Estado = :Pestado '
      '   and alertas.Unidad = :punidad;')
    Left = 232
    Top = 712
    ParamData = <
      item
        DataType = ftString
        Name = 'Pestado'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'punidad'
        ParamType = ptInput
        Value = ''
      end>
    object QalertaAlerta: TStringField
      FieldName = 'Alerta'
      Size = 255
    end
    object Qalertaid: TLargeintField
      FieldName = 'id'
    end
    object Qalertausuario: TStringField
      FieldName = 'usuario'
    end
    object QalertaUnidad: TStringField
      FieldName = 'Unidad'
    end
    object QalertaEstado: TStringField
      FieldName = 'Estado'
      Size = 40
    end
    object Qalertaatendidopor: TStringField
      FieldName = 'atendidopor'
      Size = 40
    end
  end
  object DSQalerta: TUniDataSource
    DataSet = Qalerta
    Left = 232
    Top = 657
  end
  object UniSQL2: TUniSQL
    Connection = partes
    Left = 296
    Top = 656
  end
  object DSalertas: TUniDataSource
    DataSet = Talertas
    Left = 360
    Top = 656
  end
  object DSGSA: TUniDataSource
    DataSet = TGSA
    Left = 408
    Top = 656
  end
  object QefecGSA: TUniQuery
    Connection = partes
    SQL.Strings = (
      'SELECT * FROM `gsa` '
      'WHERE `gsa`.`fecha` >= :PFECHA1 '
      '  AND `gsa`.`fecha` <= :PFECHA2;')
    Left = 808
    Top = 288
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'PFECHA1'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'PFECHA2'
        ParamType = ptInput
      end>
  end
  object DSQefecGSA: TUniDataSource
    DataSet = QefecGSA
    Left = 808
    Top = 336
  end
  object Qchequeoskd: TUniQuery
    Connection = partes
    SQL.Strings = (
      'SELECT * '
      'FROM `chequeos kd` '
      'WHERE `chequeos kd`.UNIDAD = :Punidad;')
    Left = 520
    Top = 632
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Punidad'
      end>
  end
  object Qcorreoskd: TUniQuery
    Connection = partes
    SQL.Strings = (
      'SELECT * '
      'FROM `correos kd` '
      'WHERE `correos kd`.UNIDAD = :Punidad;')
    Left = 592
    Top = 632
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Punidad'
      end>
  end
  object DSQchequeoskd: TUniDataSource
    DataSet = Qchequeoskd
    Left = 520
    Top = 688
  end
  object DSQcorreoskd: TUniDataSource
    DataSet = Qcorreoskd
    Left = 600
    Top = 688
  end
  object Qefectcorreoskd: TUniQuery
    Connection = partes
    SQL.Strings = (
      'SELECT *'
      'FROM  `correos kd`'
      'WHERE `correos kd`.`FECHA` >= :PFECHA1 '
      '  AND `correos kd`.`FECHA` <= :PFECHA2;')
    Left = 808
    Top = 416
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PFECHA1'
      end
      item
        DataType = ftUnknown
        Name = 'PFECHA2'
      end>
  end
  object DSQefectcorreoskd: TUniDataSource
    DataSet = Qefectcorreoskd
    Left = 808
    Top = 464
  end
  object QefectcorreoskdU: TUniQuery
    Connection = partes
    SQL.Strings = (
      'SELECT *'
      'FROM  `correos kd`'
      'WHERE `correos kd`.`FECHA` >= :PFECHA1 '
      '  AND `correos kd`.`FECHA` <= :PFECHA2'
      '  AND `correos kd`.unidad =:Punidad;')
    Left = 808
    Top = 520
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PFECHA1'
      end
      item
        DataType = ftUnknown
        Name = 'PFECHA2'
      end
      item
        DataType = ftUnknown
        Name = 'Punidad'
      end>
  end
  object DSQefectcorreoskdU: TUniDataSource
    DataSet = QefectcorreoskdU
    Left = 808
    Top = 568
  end
  object Tescrito: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO escrito'
      
        '  (`FECHA ENTRADA`, EXPEDIENTE, ESTADO, `FECHA SALIDA`, IDIOMA, ' +
        '`TIPO DE DOCUMENTO`, PAGINAS, CUANTILLAS, ORGANO, `URGENTE/NO UR' +
        'GENTE`, `REFERENCIA TEMATICA`, USUARIO)'
      'VALUES'
      
        '  (:`FECHA ENTRADA`, :EXPEDIENTE, :ESTADO, :`FECHA SALIDA`, :IDI' +
        'OMA, :`TIPO DE DOCUMENTO`, :PAGINAS, :CUANTILLAS, :ORGANO, :`URG' +
        'ENTE/NO URGENTE`, :`REFERENCIA TEMATICA`, :USUARIO)')
    SQLDelete.Strings = (
      'DELETE FROM escrito'
      'WHERE'
      '  IDESCRITO = :Old_IDESCRITO')
    SQLUpdate.Strings = (
      'UPDATE escrito'
      'SET'
      
        '  `FECHA ENTRADA` = :`FECHA ENTRADA`, EXPEDIENTE = :EXPEDIENTE, ' +
        'ESTADO = :ESTADO, `FECHA SALIDA` = :`FECHA SALIDA`, IDIOMA = :ID' +
        'IOMA, `TIPO DE DOCUMENTO` = :`TIPO DE DOCUMENTO`, PAGINAS = :PAG' +
        'INAS, CUANTILLAS = :CUANTILLAS, ORGANO = :ORGANO, `URGENTE/NO UR' +
        'GENTE` = :`URGENTE/NO URGENTE`, `REFERENCIA TEMATICA` = :`REFERE' +
        'NCIA TEMATICA`, USUARIO = :USUARIO'
      'WHERE'
      '  IDESCRITO = :Old_IDESCRITO')
    SQLLock.Strings = (
      'SELECT * FROM escrito'
      'WHERE'
      '  IDESCRITO = :Old_IDESCRITO'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT `FECHA ENTRADA`, EXPEDIENTE, ESTADO, `FECHA SALIDA`, IDIO' +
        'MA, `TIPO DE DOCUMENTO`, PAGINAS, CUANTILLAS, ORGANO, `URGENTE/N' +
        'O URGENTE`, `REFERENCIA TEMATICA`, USUARIO FROM escrito'
      'WHERE'
      '  IDESCRITO = :IDESCRITO')
    Connection = partes
    SQL.Strings = (
      'SELECT * FROM escrito')
    Left = 152
    Top = 216
  end
  object Tusuarios: TUniQuery
    Connection = serv
    SQL.Strings = (
      'SELECT * FROM usuarios')
    Left = 152
    Top = 64
  end
  object T6virus: TUniQuery
    Connection = partes
    SQL.Strings = (
      'SELECT * FROM `vi-6 control de virus`')
    Left = 216
    Top = 216
  end
  object T6reporte: TUniQuery
    Connection = partes
    SQL.Strings = (
      'SELECT * FROM `vi-6 reporte 1`')
    Left = 280
    Top = 216
  end
  object T6asist: TUniQuery
    Connection = partes
    SQL.Strings = (
      'SELECT * FROM `vi-6 asistencia`')
    Left = 352
    Top = 216
  end
  object Tniveldeaprobacion: TUniQuery
    Connection = serv
    SQL.Strings = (
      'SELECT * FROM `niveles de aprobaci'#243'n`')
    Left = 32
    Top = 376
  end
  object TABLEmotcump: TUniQuery
    Connection = codificadores
    SQL.Strings = (
      'SELECT * FROM `claves motivonocumplimiento`')
    Left = 119
    Top = 375
  end
  object TABLEfase: TUniQuery
    Connection = codificadores
    SQL.Strings = (
      'SELECT * FROM `casos fase`')
    Left = 176
    Top = 376
  end
  object TABLEdptosysecc: TUniQuery
    Connection = codificadores
    SQL.Strings = (
      'SELECT * FROM `casos departamentos y secciones`')
    Left = 240
    Top = 376
  end
  object TABLElugmon: TUniQuery
    Connection = codificadores
    SQL.Strings = (
      'SELECT * FROM `claves lugar monitoreo`')
    Left = 320
    Top = 376
  end
  object TtiposdeKM: TUniQuery
    Connection = partes
    SQL.Strings = (
      'SELECT * FROM `asist tabla de tipo de km`')
    Left = 40
    Top = 488
  end
  object Tlugardemonitoreo: TUniQuery
    Connection = partes
    SQL.Strings = (
      'SELECT * FROM `asist lugares de monitoreo`')
    Left = 120
    Top = 488
  end
  object Tidiomas: TUniQuery
    Connection = partes
    SQL.Strings = (
      'SELECT * FROM `asist idiomas`')
    Left = 176
    Top = 488
  end
  object Tformadeprocesamientokm: TUniQuery
    Connection = partes
    SQL.Strings = (
      'SELECT * FROM `asist formas de procesamiento km`')
    Left = 240
    Top = 488
  end
  object TLUGARAPLIC: TUniQuery
    Connection = partes
    SQL.Strings = (
      'SELECT * FROM `asist lugar aplicado`')
    Left = 320
    Top = 488
  end
  object Tunidades: TUniQuery
    Connection = partes
    SQL.Strings = (
      'SELECT * FROM `asist unidades`')
    Left = 40
    Top = 600
  end
  object Ttipodoc: TUniQuery
    Connection = partes
    SQL.Strings = (
      'SELECT * FROM `asist tipo de doc`')
    Left = 112
    Top = 600
  end
  object Testados: TUniQuery
    Connection = partes
    SQL.Strings = (
      'SELECT * FROM `asist estado`')
    Left = 176
    Top = 600
  end
  object TOICE: TUniQuery
    Connection = partes
    SQL.Strings = (
      'SELECT * FROM oice')
    Left = 232
    Top = 600
  end
  object Tincidencias: TUniQuery
    Connection = partes
    SQL.Strings = (
      'SELECT * FROM incidencias')
    Left = 296
    Top = 600
  end
  object Tnivelcompart: TUniQuery
    Connection = codificadores
    SQL.Strings = (
      'SELECT * FROM `casos nivel de compartimentacion`')
    Left = 176
    Top = 712
  end
  object Tobjetoaplicacion: TUniQuery
    Connection = partes
    SQL.Strings = (
      'SELECT * FROM `asist objeto de aplicacion`')
    Left = 112
    Top = 712
  end
  object Ttipochequeo: TUniQuery
    Connection = partes
    SQL.Strings = (
      'SELECT * FROM `asist tipo de chequeo`')
    Left = 40
    Top = 712
  end
  object Talertas: TUniQuery
    Connection = partes
    SQL.Strings = (
      'SELECT * FROM alertas')
    Left = 360
    Top = 704
  end
  object TGSA: TUniQuery
    Connection = partes
    SQL.Strings = (
      'SELECT * FROM gsa')
    Left = 408
    Top = 704
  end
  object Tchequeos: TUniQuery
    Connection = partes
    SQL.Strings = (
      'SELECT * FROM chequeos')
    Left = 445
    Top = 112
  end
  object Tllamadas: TUniQuery
    Connection = partes
    SQL.Strings = (
      'SELECT * FROM llamadas1')
    Left = 520
    Top = 112
  end
  object Tkmnoperm: TUniQuery
    Connection = partes
    SQL.Strings = (
      'SELECT * FROM `km no permanentes 1`')
    Left = 576
    Top = 112
  end
  object Tasist: TUniQuery
    Connection = partes
    SQL.Strings = (
      'SELECT * FROM asistencia')
    Left = 640
    Top = 112
  end
  object TEXPKM: TUniQuery
    Connection = partes
    SQL.Strings = (
      'SELECT * FROM `km permanentes y a requerimiento 1`')
    Left = 624
    Top = 424
  end
  object Tavanzadas: TUniQuery
    Connection = partes
    SQL.Strings = (
      'SELECT * FROM `puntos avanzadas`')
    Left = 696
    Top = 424
  end
  object Tinterrucciones: TUniQuery
    Connection = partes
    SQL.Strings = (
      'SELECT * FROM interupciones')
    Left = 448
    Top = 528
  end
  object TchequeosKD: TUniQuery
    Connection = partes
    SQL.Strings = (
      'SELECT * FROM `chequeos kd`')
    Left = 512
    Top = 528
  end
  object TcorreosKD: TUniQuery
    Connection = partes
    SQL.Strings = (
      'SELECT * FROM `correos kd`')
    Left = 592
    Top = 528
  end
end
