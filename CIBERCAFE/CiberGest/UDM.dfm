object DM: TDM
  OldCreateOrder = False
  Height = 590
  Width = 984
  object Qinsertarusuario: TUniQuery
    Connection = cibercafe
    SQL.Strings = (
      'INSERT into `usuarios`(usuario,contrase'#241'a,cargo,unidad) '
      'values (:Puser,SHA(:Ppass),:Pcargo,:Punidad)')
    Left = 208
    Top = 168
    ParamData = <
      item
        DataType = ftString
        Name = 'Puser'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'Ppass'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'Pcargo'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'Punidad'
        ParamType = ptInput
        Value = nil
      end>
  end
  object DSQmodcargo: TUniDataSource
    DataSet = Qmodcargo
    Left = 128
    Top = 264
  end
  object DScargoyunidad: TUniDataSource
    DataSet = Qcargoyunidad
    Left = 40
    Top = 264
  end
  object Qmodcargo: TUniQuery
    Connection = cibercafe
    SQL.Strings = (
      'update `usuarios` '
      'set `usuarios`.`cargo` = :pcargo '
      'where `usuarios`.`usuario` = :puser')
    Left = 128
    Top = 216
    ParamData = <
      item
        DataType = ftString
        Name = 'pcargo'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'puser'
        ParamType = ptInput
        Value = nil
      end>
  end
  object UniSQL1: TUniSQL
    Connection = cibercafe
    Left = 208
    Top = 16
  end
  object DSuser: TUniDataSource
    DataSet = Quser
    Left = 208
    Top = 264
  end
  object Qcargoyunidad: TUniQuery
    Connection = cibercafe
    SQL.Strings = (
      'SELECT usuarios.cargo,usuarios.unidad,usuarios.dpto '
      'FROM usuarios '
      'where usuarios.usuario=:Puser;')
    Left = 40
    Top = 216
    ParamData = <
      item
        DataType = ftString
        Name = 'Puser'
        ParamType = ptInput
        Value = ''
      end>
    object Qcargoyunidadcargo: TStringField
      FieldName = 'cargo'
    end
    object Qcargoyunidadunidad: TStringField
      FieldName = 'unidad'
      Size = 50
    end
    object Qcargoyunidaddpto: TStringField
      FieldName = 'dpto'
      Size = 100
    end
  end
  object Quser: TUniQuery
    Connection = cibercafe
    SQL.Strings = (
      'SELECT usuarios.usuario,usuarios.contrase'#241'a '
      'FROM usuarios '
      'where usuarios.usuario=:Puser AND '
      'usuarios.contrase'#241'a= SHA(:Ppass);')
    Left = 208
    Top = 216
    ParamData = <
      item
        DataType = ftString
        Name = 'Puser'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'Ppass'
        ParamType = ptInput
        Value = nil
      end>
    object Quserusuario: TStringField
      FieldName = 'usuario'
      Required = True
    end
    object Qusercontraseña: TStringField
      FieldName = 'contrase'#241'a'
      Required = True
      Size = 255
    end
  end
  object cibercafe: TUniConnection
    ProviderName = 'MySQL'
    Port = 9306
    Database = 'cibercafe'
    Username = 'root'
    Password = 'windowsxp'
    Server = '192.168.10.10'
    Connected = True
    LoginPrompt = True
    Left = 128
    Top = 16
  end
  object DSmospass: TUniDataSource
    DataSet = Qmodpass
    Left = 304
    Top = 112
  end
  object Qmodpass: TUniQuery
    Connection = cibercafe
    SQL.Strings = (
      'update `usuarios` '
      'set `usuarios`.`contrase'#241'a` = sha(:pnewpass) '
      'where `usuarios`.`usuario` = :puser')
    Left = 304
    Top = 65
    ParamData = <
      item
        DataType = ftString
        Name = 'pnewpass'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'puser'
        ParamType = ptInput
        Value = nil
      end>
  end
  object DSusuarios: TUniDataSource
    DataSet = Tusuarios
    Left = 464
    Top = 16
  end
  object Tusuarios: TUniTable
    TableName = 'usuarios'
    Connection = cibercafe
    Left = 208
    Top = 64
    object Tusuariosusuario: TStringField
      FieldName = 'usuario'
    end
  end
  object DSeliminaruser: TUniDataSource
    DataSet = Qeliminaruser
    Left = 296
    Top = 264
  end
  object Qeliminaruser: TUniQuery
    Connection = cibercafe
    SQL.Strings = (
      'DELETE QUICK FROM `usuarios` '
      'WHERE `usuarios`.`usuario` = :Puser;')
    Left = 296
    Top = 216
    ParamData = <
      item
        DataType = ftString
        Name = 'Puser'
        ParamType = ptInput
        Value = nil
      end>
  end
  object DSQlistunidadadm: TUniDataSource
    DataSet = Qlistunidadadm
    Left = 128
    Top = 120
  end
  object Qlistunidadadm: TUniQuery
    Connection = cibercafe
    SQL.Strings = (
      'SELECT unidades.unidad '
      'FROM unidades')
    Left = 40
    Top = 120
  end
  object DSlistcargoadm: TUniDataSource
    DataSet = Qlistcargoadm
    Left = 128
    Top = 168
  end
  object Qlistcargoadm: TUniQuery
    Connection = cibercafe
    SQL.Strings = (
      'SELECT cargos.cargos  '
      'FROM cargos')
    Left = 40
    Top = 168
  end
  object DSinsertarusuario: TUniDataSource
    DataSet = Qinsertarusuario
    Left = 304
    Top = 168
  end
  object DSuser1: TUniDataSource
    DataSet = Quser1
    Left = 128
    Top = 64
  end
  object Quser1: TUniQuery
    Connection = cibercafe
    SQL.Strings = (
      'SELECT usuarios.usuario '
      'FROM usuarios'
      'WHERE usuarios.usuario = :Puser;')
    Active = True
    Left = 40
    Top = 64
    ParamData = <
      item
        DataType = ftString
        Name = 'Puser'
        ParamType = ptInput
        Value = nil
      end>
    object Quser1usuario: TStringField
      FieldName = 'usuario'
    end
  end
  object MySQLUniProvider1: TMySQLUniProvider
    Left = 40
    Top = 16
  end
  object Qchequeos1: TUniQuery
    Connection = cibercafe
    SQL.Strings = (
      'SELECT DISTINCT chequeos.chequeo FROM chequeos;')
    Left = 376
    Top = 64
    object Qchequeos1chequeo: TStringField
      FieldName = 'chequeo'
      Size = 255
    end
  end
  object DSQchequeos1: TUniDataSource
    DataSet = Qchequeos1
    Left = 376
    Top = 112
  end
  object Qusuarios: TUniQuery
    Connection = cibercafe
    Left = 464
    Top = 64
    object Qusuariosusuario: TStringField
      FieldName = 'usuario'
    end
    object Qusuarioscontraseña: TStringField
      FieldName = 'contrase'#241'a'
      Size = 50
    end
    object Qusuarioscargo: TStringField
      FieldName = 'cargo'
    end
    object QusuariosDpto: TStringField
      FieldName = 'Dpto'
      Size = 100
    end
    object Qusuariosunidad: TStringField
      FieldName = 'unidad'
      Size = 50
    end
  end
  object DSQusuarios: TUniDataSource
    DataSet = Qusuarios
    Left = 464
    Top = 112
  end
  object QChequeoUsuario: TUniQuery
    Connection = cibercafe
    SQL.Strings = (
      'SELECT DISTINCT * from `AsociacionUsuarioChequeo`;')
    Left = 376
    Top = 168
    object QChequeoUsuariousuario: TStringField
      FieldName = 'usuario'
      Size = 255
    end
    object QChequeoUsuarioChequeo: TStringField
      FieldName = 'Chequeo'
      Size = 100
    end
    object QChequeoUsuarioIdAsociacion: TLongWordField
      FieldName = 'IdAsociacion'
    end
  end
  object DSQChequeoUsuario: TUniDataSource
    DataSet = QChequeoUsuario
    Left = 376
    Top = 216
  end
  object QcontenidoUsuario: TUniQuery
    Connection = cibercafe
    SQL.Strings = (
      'select `contenidos`.`IdContenido` '
      'AS `IdContenido`,`contenidos`.`Nombre_PC` '
      'AS `Nombre_PC`,`contenidos`.`Chequeo` '
      'AS `Chequeo`,`contenidos`.`Carpeta` '
      'AS `Carpeta`,`contenidos`.`Fichero` '
      'AS `Fichero`,`contenidos`.`Fecha` '
      'AS `Fecha`,`contenidos`.`Hora` '
      'AS `Hora`,`contenidos`.`Tipo` '
      'AS `Tipo`,`contenidos`.`Extencion` '
      'AS `Extencion`,`contenidos`.`Procesado` '
      'AS `Procesado`,`contenidos`.`Conservar` '
      'AS `Conservar` '
      'from ((`usuarios` join `asociacionusuariochequeo` '
      
        'on((`asociacionusuariochequeo`.`Usuario` = `usuarios`.`usuario`)' +
        ')) join `contenidos` '
      
        'on((`contenidos`.`Chequeo` = `asociacionusuariochequeo`.`Chequeo' +
        '`))) '
      'where (`usuarios`.`usuario` = :puser);')
    Left = 600
    Top = 168
    ParamData = <
      item
        DataType = ftString
        Name = 'puser'
        ParamType = ptInput
        Value = ''
      end>
    object QcontenidoUsuarioIdContenido: TLongWordField
      FieldName = 'IdContenido'
    end
    object QcontenidoUsuarioNombre_PC: TStringField
      FieldName = 'Nombre_PC'
      Size = 100
    end
    object QcontenidoUsuarioChequeo: TStringField
      FieldName = 'Chequeo'
      Size = 100
    end
    object QcontenidoUsuarioCarpeta: TStringField
      FieldName = 'Carpeta'
      Size = 255
    end
    object QcontenidoUsuarioFichero: TStringField
      FieldName = 'Fichero'
      Size = 100
    end
    object QcontenidoUsuarioFecha: TDateField
      FieldName = 'Fecha'
    end
    object QcontenidoUsuarioHora: TTimeField
      FieldName = 'Hora'
    end
    object QcontenidoUsuarioTipo: TStringField
      FieldName = 'Tipo'
    end
    object QcontenidoUsuarioExtencion: TStringField
      FieldName = 'Extencion'
    end
    object QcontenidoUsuarioProcesado: TShortintField
      FieldName = 'Procesado'
    end
    object QcontenidoUsuarioConservar: TShortintField
      FieldName = 'Conservar'
    end
  end
  object DSQcontenidoUsuario: TUniDataSource
    DataSet = QcontenidoUsuario
    Left = 656
    Top = 168
  end
  object Qasignacion: TUniQuery
    Connection = cibercafe
    SQL.Strings = (
      'SELECT DISTINCT `asociacion usuario-nombrepc`.pcname'
      'from `asociacion usuario-nombrepc`'
      'where  `asociacion usuario-nombrepc`.usuario = :puser')
    Left = 536
    Top = 112
    ParamData = <
      item
        DataType = ftString
        Name = 'puser'
        ParamType = ptInput
        Value = 'richard'
      end>
    object Qasignacionpcname: TStringField
      FieldName = 'pcname'
    end
  end
  object DSQasignacion: TUniDataSource
    DataSet = Qasignacion
    Left = 536
    Top = 168
  end
  object QinsertarMaquina: TUniQuery
    Connection = cibercafe
    SQL.Strings = (
      'Insert into maquinas'
      '(Nombre_PC,'
      'Ip,'
      'Provincia,'#9
      'Municipio,'#9
      'Nombre_CiberCafe,'
      'Ubicacion) '
      'values'
      '(:PNombrePC,'
      ':PIp,'
      ':PProvincia,'#9
      ':PMunicipio,'#9
      ':PNombreCiberCafe,'
      ':PUbicacion)')
    Left = 464
    Top = 216
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PNombrePC'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PIp'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PProvincia'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PMunicipio'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PNombreCiberCafe'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PUbicacion'
        Value = nil
      end>
  end
  object Qmaquinas: TUniQuery
    Connection = cibercafe
    SQL.Strings = (
      'SELECT * FROM maquinas;')
    Left = 376
    Top = 264
    object QmaquinasidMaquina: TLongWordField
      FieldName = 'idMaquina'
    end
    object QmaquinasNombre_PC: TStringField
      FieldName = 'Nombre_PC'
      Size = 100
    end
    object QmaquinasIP: TStringField
      FieldName = 'IP'
      Size = 11
    end
    object QmaquinasProvincia: TStringField
      FieldName = 'Provincia'
      Size = 100
    end
    object QmaquinasMunicipio: TStringField
      FieldName = 'Municipio'
      Size = 100
    end
    object QmaquinasNombre_CiberCafe: TStringField
      FieldName = 'Nombre_CiberCafe'
      Size = 255
    end
    object QmaquinasUbicacion: TStringField
      FieldName = 'Ubicacion'
      Size = 255
    end
  end
  object DSQmaquinas: TUniDataSource
    DataSet = Qmaquinas
    Left = 376
    Top = 320
  end
  object Qprocesado: TUniQuery
    Connection = cibercafe
    SQL.Strings = (
      'UPDATE `contenidos` '
      '   SET `contenidos`.`Procesado`=1 '
      ' WHERE `contenidos`.`IdContenido`= :Pid;')
    Left = 464
    Top = 168
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Pid'
        Value = nil
      end>
    object StringField2: TStringField
      FieldName = 'PcName'
      Size = 255
    end
  end
  object QcontenidoSuperAdmin: TUniQuery
    Connection = cibercafe
    SQL.Strings = (
      
        'select `contenidos`.`IdContenido` AS `IdContenido`,`contenidos`.' +
        '`Nombre_PC` AS `Nombre_PC`,`contenidos`.`Chequeo` AS `Chequeo`,`' +
        'contenidos`.`Carpeta` AS `Carpeta`,`contenidos`.`Fichero` AS `Fi' +
        'chero`,`contenidos`.`Fecha` AS `Fecha`,`contenidos`.`Hora` AS `H' +
        'ora`,`contenidos`.`Tipo` AS `Tipo`,`contenidos`.`Extencion` AS `' +
        'Extencion`,`contenidos`.`Procesado` AS `Procesado`,`contenidos`.' +
        '`Conservar` AS `Conservar` from ((`usuarios` join `asociacionusu' +
        'ariochequeo` on((`asociacionusuariochequeo`.`Usuario` = `usuario' +
        's`.`usuario`))) join `contenidos` on((`contenidos`.`Chequeo` = `' +
        'asociacionusuariochequeo`.`Chequeo`))) '
      'where (`usuarios`.`Dpto` = :Pdpto)')
    Left = 600
    Top = 216
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Pdpto'
        Value = nil
      end>
    object QcontenidoSuperAdminIdContenido: TLongWordField
      FieldName = 'IdContenido'
    end
    object QcontenidoSuperAdminNombre_PC: TStringField
      FieldName = 'Nombre_PC'
      Size = 100
    end
    object QcontenidoSuperAdminChequeo: TStringField
      FieldName = 'Chequeo'
      Size = 100
    end
    object QcontenidoSuperAdminCarpeta: TStringField
      FieldName = 'Carpeta'
      Size = 255
    end
    object QcontenidoSuperAdminFichero: TStringField
      FieldName = 'Fichero'
      Size = 100
    end
    object QcontenidoSuperAdminFecha: TDateField
      FieldName = 'Fecha'
    end
    object QcontenidoSuperAdminHora: TTimeField
      FieldName = 'Hora'
    end
    object QcontenidoSuperAdminTipo: TStringField
      FieldName = 'Tipo'
    end
    object QcontenidoSuperAdminExtencion: TStringField
      FieldName = 'Extencion'
    end
    object QcontenidoSuperAdminProcesado: TShortintField
      FieldName = 'Procesado'
    end
    object QcontenidoSuperAdminConservar: TShortintField
      FieldName = 'Conservar'
    end
  end
  object DSQcontenidoSuperAdmin: TUniDataSource
    DataSet = QcontenidoSuperAdmin
    Left = 656
    Top = 216
  end
  object QcontenidoAdmin: TUniQuery
    Connection = cibercafe
    SQL.Strings = (
      'select `contenidos`.`IdContenido` '
      'AS `IdContenido`,`contenidos`.`Nombre_PC` '
      'AS `Nombre_PC`,`contenidos`.`Chequeo` '
      'AS `Chequeo`,`contenidos`.`Carpeta` '
      'AS `Carpeta`,`contenidos`.`Fichero` '
      'AS `Fichero`,`contenidos`.`Fecha` '
      'AS `Fecha`,`contenidos`.`Hora` '
      'AS `Hora`,`contenidos`.`Tipo` '
      'AS `Tipo`,`contenidos`.`Extencion` '
      'AS `Extencion`,`contenidos`.`Procesado` '
      'AS `Procesado`,`contenidos`.`Conservar` '
      'AS `Conservar` '
      'from ((`usuarios` join `asociacionusuariochequeo` '
      
        'on((`asociacionusuariochequeo`.`Usuario` = `usuarios`.`usuario`)' +
        ')) join `contenidos` '
      
        'on((`contenidos`.`Chequeo` = `asociacionusuariochequeo`.`Chequeo' +
        '`))) '
      'where (usuarios.unidad =:PUnidad);')
    Left = 600
    Top = 264
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PUnidad'
        Value = nil
      end>
    object QcontenidoAdminidtx: TLargeintField
      FieldName = 'idtx'
    end
    object QcontenidoAdminPcName: TStringField
      FieldName = 'PcName'
      Size = 100
    end
    object QcontenidoAdminUserName: TStringField
      FieldName = 'UserName'
      Size = 100
    end
    object QcontenidoAdminCarpeta: TStringField
      FieldName = 'Carpeta'
      Size = 255
    end
    object QcontenidoAdminFichero: TStringField
      FieldName = 'Fichero'
      Size = 100
    end
    object QcontenidoAdminFecha: TDateField
      FieldName = 'Fecha'
    end
    object QcontenidoAdminHora: TTimeField
      FieldName = 'Hora'
    end
    object QcontenidoAdminTipo: TStringField
      FieldName = 'Tipo'
    end
    object QcontenidoAdminExtencion: TStringField
      FieldName = 'Extencion'
    end
    object QcontenidoAdminProcesado: TSmallintField
      FieldName = 'Procesado'
    end
    object QcontenidoAdminConservar: TSmallintField
      FieldName = 'Conservar'
    end
  end
  object DSQcontenidoAdmin: TUniDataSource
    DataSet = QcontenidoAdmin
    Left = 664
    Top = 264
  end
  object QConservar: TUniQuery
    Connection = cibercafe
    SQL.Strings = (
      'UPDATE `contenidos` '
      '   SET `contenidos`.`Conservar`=1 '
      ' WHERE `contenidos`.`idContenido`= :Pid;')
    Left = 536
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Pid'
        Value = nil
      end>
    object StringField8: TStringField
      FieldName = 'PcName'
      Size = 255
    end
  end
  object Qeliminar: TUniQuery
    Connection = cibercafe
    SQL.Strings = (
      'DELETE FROM `Contenidos` WHERE `Contenidos`.`idContenido`=:Pid;')
    Left = 464
    Top = 264
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Pid'
        Value = nil
      end>
  end
  object QInsertarChequeo: TUniQuery
    Connection = cibercafe
    SQL.Strings = (
      
        'INSERT into `chequeos`(chequeo,fechahora,usuario,dpto,unidad,act' +
        'ivo) '
      
        '               values (:Pchequeo,:Pfechahora,:Pusuario,:Pdpto,:P' +
        'unidad,:Pactivo)')
    Left = 536
    Top = 216
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Pchequeo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'Pfechahora'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'Pusuario'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'Pdpto'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'Punidad'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'Pactivo'
        Value = nil
      end>
    object LargeintField1: TLargeintField
      FieldName = 'idMaquinas'
    end
    object StringField3: TStringField
      FieldName = 'Ip'
      Size = 15
    end
    object StringField4: TStringField
      FieldName = 'PcName'
      Size = 255
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'UltimaConeccion'
    end
    object SmallintField1: TSmallintField
      FieldName = 'Activo'
    end
    object StringField5: TStringField
      FieldName = 'Ftp'
    end
    object StringField6: TStringField
      FieldName = 'DirFTP'
      Size = 255
    end
    object SmallintField2: TSmallintField
      FieldName = 'USB'
    end
  end
  object Qdptos: TUniQuery
    Connection = cibercafe
    SQL.Strings = (
      'select departamentos.dptoseccion from departamentos;')
    Left = 600
    Top = 64
  end
  object DSQdptos: TUniDataSource
    DataSet = Qdptos
    Left = 600
    Top = 112
  end
  object QChequeos: TUniQuery
    Connection = cibercafe
    SQL.Strings = (
      'select * from chequeos')
    Left = 656
    Top = 64
    object QChequeosIdChequeo: TLongWordField
      AutoGenerateValue = arAutoInc
      FieldName = 'IdChequeo'
    end
    object QChequeosChequeo: TStringField
      FieldName = 'Chequeo'
      Size = 255
    end
    object QChequeosFechaHora: TDateTimeField
      FieldName = 'FechaHora'
    end
    object QChequeosUsuario: TStringField
      FieldName = 'Usuario'
      Size = 50
    end
    object QChequeosDpto: TStringField
      FieldName = 'Dpto'
      Size = 50
    end
    object QChequeosUnidad: TStringField
      FieldName = 'Unidad'
      Size = 50
    end
    object QChequeosActivo: TShortintField
      FieldName = 'Activo'
    end
  end
  object DSQChequeos: TUniDataSource
    DataSet = QChequeos
    Left = 656
    Top = 112
  end
  object QPreguntar: TUniQuery
    Connection = cibercafe
    SQL.Strings = (
      'select departamentos.dptoseccion from departamentos;')
    Left = 536
    Top = 264
  end
  object QEliminarMaquina: TUniQuery
    Connection = cibercafe
    SQL.Strings = (
      'DELETE QUICK FROM `maquinas` '
      'WHERE `maquinas`.`Nombre_PC` = :Pnombre;')
    Left = 464
    Top = 320
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Pnombre'
        Value = nil
      end>
    object LongWordField1: TLongWordField
      FieldName = 'idMaquina'
    end
    object StringField1: TStringField
      FieldName = 'Nombre_PC'
      Size = 100
    end
    object IntegerField1: TIntegerField
      FieldName = 'IP'
    end
    object StringField7: TStringField
      FieldName = 'Provincia'
      Size = 100
    end
    object StringField9: TStringField
      FieldName = 'Municipio'
      Size = 100
    end
    object StringField10: TStringField
      FieldName = 'Nombre_CiberCafe'
      Size = 255
    end
    object StringField11: TStringField
      FieldName = 'Ubicacion'
      Size = 255
    end
  end
  object Qmaquinascombo: TUniQuery
    Connection = cibercafe
    SQL.Strings = (
      'Select distinct `maquinas`.`Nombre_PC` from  maquinas;')
    Left = 568
    Top = 320
    object QmaquinascomboNombre_PC: TStringField
      FieldName = 'Nombre_PC'
      Size = 100
    end
  end
  object DSQmaquinascombo: TUniDataSource
    DataSet = Qmaquinascombo
    Left = 664
    Top = 320
  end
  object QUpdateMaquinas: TUniQuery
    Connection = cibercafe
    SQL.Strings = (
      'update `maquinas` '
      'set'
      '`maquinas`.`Nombre_PC` = :pNombrePC,'
      '`maquinas`.`IP` = :pIP,'
      '`maquinas`.`Provincia` = :pProvincia,'
      '`maquinas`.`Municipio` = :pMunicipio,'
      '`maquinas`.`Nombre_CiberCafe` = :pNombreCiberCafe,'
      '`maquinas`.`Ubicacion` = :pUbicacion'
      ''
      'where `maquinas`.`idMaquina` = :pIdMaquina')
    Left = 296
    Top = 320
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pNombrePC'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'pIP'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'pProvincia'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'pMunicipio'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'pNombreCiberCafe'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'pUbicacion'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'pidMaquina'
        Value = nil
      end>
  end
  object DSQcargos: TUniDataSource
    DataSet = Qcargos
    Left = 120
    Top = 328
  end
  object Qcargos: TUniQuery
    Connection = cibercafe
    Left = 40
    Top = 328
  end
end
