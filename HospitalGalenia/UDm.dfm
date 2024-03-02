object DM1: TDM1
  OldCreateOrder = False
  Height = 519
  Width = 890
  object MySQLUniProvider1: TMySQLUniProvider
    Left = 40
    Top = 16
  end
  object ConeccionGeneral: TUniConnection
    ProviderName = 'MySQL'
    Database = 'hospitalgalenia'
    Username = 'root'
    Server = 'localhost'
    Left = 152
    Top = 16
    EncryptedPassword = 
      'BEFF9BFF92FF96FF91FF96FF8CFF8BFF8DFF9EFF9BFF90FF8DFFCEFFCDFFCCFF' +
      'D1FFD1FF'
  end
  object QGuardarConfInc: TUniQuery
    Connection = ConeccionGeneral
    SQL.Strings = (
      
        'INSERT INTO config_incremento (`Habilitado`,`Numero`,`Desde`,`Ha' +
        'sta`,`Valor`) '
      
        'VALUES(:Inc_Habilitado, :Inc_Numero, :Inc_Desde, :Inc_Hasta, :In' +
        'c_Valor);'
      ''
      '')
    Left = 56
    Top = 184
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Inc_Habilitado'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'Inc_Numero'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'Inc_Desde'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'Inc_Hasta'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'Inc_Valor'
        Value = nil
      end>
  end
  object QGuardarConfDec: TUniQuery
    Connection = ConeccionGeneral
    SQL.Strings = (
      'INSERT INTO config_decremento (`Habilitado`,`Numero`,`Valor`) '
      'VALUES(:Dec_Habilitado, :Dec_Numero, :Dec_Valor);')
    Left = 248
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Dec_Habilitado'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'Dec_Numero'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'Dec_Valor'
        Value = nil
      end>
  end
  object QGuardarConfIvaYCambio: TUniQuery
    Connection = ConeccionGeneral
    SQL.Strings = (
      'INSERT INTO config_iva (`Iva`) '
      'VALUES(:Iva);'
      ''
      'INSERT INTO config_cambiomonedas (`CambioMonedas`) '
      'VALUES(:CambioDeMonedas);')
    Left = 248
    Top = 184
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Iva'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CambioDeMonedas'
        Value = nil
      end>
  end
  object QBorrarConf: TUniQuery
    Connection = ConeccionGeneral
    SQL.Strings = (
      'TRUNCATE config_incremento;'
      'TRUNCATE config_decremento;'
      'TRUNCATE config_iva;'
      'TRUNCATE config_cambiomonedas;')
    Left = 136
    Top = 112
  end
  object Qlogin: TUniQuery
    Connection = ConeccionGeneral
    SQL.Strings = (
      'SELECT * '
      'FROM   usuariossistema'
      'WHERE  usuariossistema.`Usuario` = :Pusuario AND'
      '       usuariossistema.`Contrase'#241'a` = :Pcontrase'#241'a;'
      '')
    Left = 56
    Top = 112
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Pusuario'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'Pcontrase'#241'a'
        Value = nil
      end>
    object QloginId: TIntegerField
      FieldName = 'Id'
    end
    object QloginUsuario: TStringField
      FieldName = 'Usuario'
      Size = 100
    end
    object QloginContraseña: TStringField
      FieldName = 'Contrase'#241'a'
      Size = 100
    end
    object QloginPerfil: TStringField
      FieldName = 'Perfil'
      Size = 50
    end
  end
  object QConfInc: TUniTable
    TableName = 'config_incremento'
    Connection = ConeccionGeneral
    Left = 136
    Top = 184
    object QConfIncId: TIntegerField
      FieldName = 'Id'
    end
    object QConfIncHabilitado: TStringField
      FieldName = 'Habilitado'
      Size = 2
    end
    object QConfIncNumero: TStringField
      FieldName = 'Numero'
      Size = 2
    end
    object QConfIncDesde: TStringField
      FieldName = 'Desde'
      Size = 10
    end
    object QConfIncHasta: TStringField
      FieldName = 'Hasta'
      Size = 10
    end
    object QConfIncValor: TStringField
      FieldName = 'Valor'
      Size = 100
    end
  end
  object QConfDec: TUniTable
    TableName = 'config_decremento'
    Connection = ConeccionGeneral
    Left = 56
    Top = 256
    object QConfDecId: TIntegerField
      FieldName = 'Id'
    end
    object QConfDecHabilitado: TStringField
      FieldName = 'Habilitado'
      Size = 2
    end
    object QConfDecNumero: TStringField
      FieldName = 'Numero'
      Size = 2
    end
    object QConfDecValor: TStringField
      FieldName = 'Valor'
      Size = 100
    end
  end
  object QconfIva: TUniTable
    TableName = 'config_iva'
    Connection = ConeccionGeneral
    Left = 136
    Top = 256
    object QconfIvaId: TIntegerField
      FieldName = 'Id'
    end
    object QconfIvaIva: TStringField
      FieldName = 'Iva'
      Size = 10
    end
  end
  object QConfDolar: TUniTable
    TableName = 'config_cambiomonedas'
    Connection = ConeccionGeneral
    Left = 248
    Top = 256
    object QConfDolarId: TIntegerField
      FieldName = 'Id'
    end
    object QConfDolarCambioMonedas: TStringField
      FieldName = 'CambioMonedas'
      Size = 10
    end
  end
  object QEstado: TUniQuery
    Connection = ConeccionGeneral
    SQL.Strings = (
      'SELECT * '
      'FROM   estado_actualizacion;')
    Left = 56
    Top = 336
    object QEstadoId: TIntegerField
      FieldName = 'Id'
    end
    object QEstadoEstado: TStringField
      FieldName = 'Estado'
    end
  end
  object QEstadoPorActualizar: TUniQuery
    Connection = ConeccionGeneral
    SQL.Strings = (
      'UPDATE estado_actualizacion '
      'SET Estado = '#39'PorActualizar'#39' '
      'WHERE Id=1;')
    Left = 136
    Top = 336
    object IntegerField1: TIntegerField
      FieldName = 'Id'
    end
    object StringField1: TStringField
      FieldName = 'Estado'
    end
  end
  object QEstadoActualizado: TUniQuery
    Connection = ConeccionGeneral
    SQL.Strings = (
      'UPDATE estado_actualizacion '
      'SET Estado = '#39'Actualizado'#39' '
      'WHERE Id=1;')
    Left = 248
    Top = 328
    object IntegerField2: TIntegerField
      FieldName = 'Id'
    end
    object StringField2: TStringField
      FieldName = 'Estado'
    end
  end
  object QGuardarConfFtp: TUniQuery
    Connection = ConeccionGeneral
    SQL.Strings = (
      'Truncate config_ftp;'
      ''
      'INSERT INTO config_ftp (`Host`,`User`,`Pass`) '
      'VALUES(:Host, :User, :Pass);')
    Left = 360
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Host'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'User'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'Pass'
        Value = nil
      end>
  end
  object QConfFtp: TUniQuery
    Connection = ConeccionGeneral
    SQL.Strings = (
      ''
      ''
      'select * from config_ftp;')
    Left = 368
    Top = 184
  end
end
