object DM1: TDM1
  OldCreateOrder = False
  Height = 449
  Width = 504
  object cibercafe: TUniConnection
    ProviderName = 'MySQL'
    Port = 9306
    Database = 'cibercafe'
    Username = 'root'
    Password = 'windowsxp'
    Server = '192.168.10.10 '
    Connected = True
    LoginPrompt = True
    Left = 120
    Top = 16
  end
  object MySQLUniProvider1: TMySQLUniProvider
    Left = 40
    Top = 16
  end
  object Qmaq: TUniQuery
    Connection = cibercafe
    Left = 48
    Top = 80
  end
  object Qmaquinas: TUniQuery
    Connection = cibercafe
    SQL.Strings = (
      'SELECT DISTINCT * FROM maquinas;')
    Left = 120
    Top = 128
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
    Left = 120
    Top = 176
  end
  object QUpdateUSB: TUniQuery
    Connection = cibercafe
    SQL.Strings = (
      'update `maquinas` '
      '   SET `maquinas`.`USB` = :Pusb '
      ' WHERE `maquinas`.`PcName` = :Pmaq;')
    Left = 48
    Top = 176
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Pusb'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'Pmaq'
        Value = nil
      end>
  end
  object UniSQL1: TUniSQL
    Connection = cibercafe
    Left = 200
    Top = 16
  end
  object Qmaq1: TUniQuery
    Connection = cibercafe
    Left = 48
    Top = 128
  end
end
