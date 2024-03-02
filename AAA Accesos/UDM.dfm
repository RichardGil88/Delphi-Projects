object DM: TDM
  OldCreateOrder = False
  Height = 454
  Width = 490
  object MySQLUniProvider1: TMySQLUniProvider
    Left = 40
    Top = 16
  end
  object UniConnection1: TUniConnection
    ProviderName = 'MySQL'
    Port = 9306
    Database = 'aaa'
    Username = 'root'
    Password = 'windowsxp'
    Server = '10.206.10.3'
    Connected = True
    Left = 40
    Top = 72
  end
  object UniConnection2: TUniConnection
    ProviderName = 'MySQL'
    Port = 9306
    Database = 'kd'
    Username = 'root'
    Password = 'windowsxp'
    Server = '10.206.10.3'
    Left = 120
    Top = 72
  end
  object DStodos: TUniDataSource
    DataSet = Qtodos
    Left = 96
    Top = 184
  end
  object Qtodos: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      'select * from todos;')
    Left = 40
    Top = 184
    object QtodosUserIpV4: TStringField
      FieldName = 'UserIpV4'
      Size = 15
    end
    object QtodosUserInfo: TStringField
      FieldName = 'UserInfo'
      Size = 50
    end
    object QtodosNasIP: TStringField
      FieldName = 'NasIP'
      Size = 15
    end
    object QtodosNasId: TStringField
      FieldName = 'NasId'
      Size = 30
    end
    object QtodosIdSesion: TStringField
      FieldName = 'IdSesion'
      Size = 30
    end
    object QtodosInicio: TDateTimeField
      FieldName = 'Inicio'
    end
    object QtodosFin: TDateTimeField
      FieldName = 'Fin'
    end
    object QtodosProtocolo: TStringField
      FieldName = 'Protocolo'
      Size = 15
    end
    object QtodosPortType: TStringField
      FieldName = 'PortType'
    end
    object QtodosCausaFin: TStringField
      FieldName = 'CausaFin'
      Size = 50
    end
    object QtodosTSesion: TStringField
      FieldName = 'TSesion'
      Size = 10
    end
    object QtodosInBytes: TStringField
      FieldName = 'InBytes'
      Size = 10
    end
    object QtodosOutBytes: TStringField
      FieldName = 'OutBytes'
      Size = 10
    end
    object Qtodosusername: TStringField
      FieldName = 'username'
      Size = 50
    end
    object Qtodoscli: TStringField
      FieldName = 'cli'
      Size = 50
    end
  end
  object Quser: TUniQuery
    Connection = UniConnection2
    SQL.Strings = (
      'select * from usuarios'
      'where usuarios.kt = :Puser and'
      '      usuarios.password = sha(:Ppass);')
    Left = 40
    Top = 128
    ParamData = <
      item
        DataType = ftString
        Name = 'Puser'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'Ppass'
        ParamType = ptInput
        Value = ''
      end>
  end
  object Qcli: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      'select * from cli order by cli.id asc;')
    Left = 40
    Top = 240
  end
  object DSQcli: TUniDataSource
    DataSet = Qcli
    Left = 96
    Top = 240
  end
  object Qusername: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      'select * from username order by username.id asc ;')
    Left = 40
    Top = 296
  end
  object DSQusername: TUniDataSource
    DataSet = Qusername
    Left = 96
    Top = 296
  end
  object DSQbyCli: TUniDataSource
    DataSet = QbyCli
    Left = 168
    Top = 184
  end
  object DSQlistartablas: TUniDataSource
    DataSet = Qlistartablas
    Left = 168
    Top = 296
  end
  object Qlistartablas: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      'show tables')
    Left = 168
    Top = 240
    object QlistartablasTables_in_aaa: TStringField
      FieldName = 'Tables_in_aaa'
      Required = True
      Size = 64
    end
  end
  object DSQdepurar: TUniDataSource
    DataSet = Qdepurar
    Left = 248
    Top = 296
  end
  object Qdepurar: TUniQuery
    Connection = UniConnection1
    Left = 248
    Top = 240
    object StringField1: TStringField
      FieldName = 'Tables_in_aaa'
      Required = True
      Size = 64
    end
  end
  object QbyCli: TUniQuery
    Connection = UniConnection1
    Left = 168
    Top = 136
  end
  object DSQbyusername: TUniDataSource
    DataSet = Qbyusername
    Left = 248
    Top = 184
  end
  object Qbyusername: TUniQuery
    Connection = UniConnection1
    Left = 248
    Top = 136
  end
end
