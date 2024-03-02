object DMServHosp: TDMServHosp
  OldCreateOrder = False
  Height = 445
  Width = 691
  object ConeccionServHosp: TUniConnection
    ProviderName = 'MySQL'
    Database = 'hospitalgalenia'
    Username = 'mama'
    Server = 'localhost'
    Left = 48
    Top = 16
    EncryptedPassword = '92FF9EFF92FF9EFF'
  end
  object QTruncateServHosp: TUniQuery
    Connection = ConeccionServHosp
    SQL.Strings = (
      'TRUNCATE catalogo_servicio_de_hospital;')
    Left = 56
    Top = 88
  end
  object QInsertarServHosp: TUniQuery
    Connection = ConeccionServHosp
    SQL.Strings = (
      'INSERT INTO catalogo_servicio_de_hospital'
      '(CODIGO, DESCRIPCION, GRUPO, IMPORTE, IVA, TOTAL_CON_IVA) '
      'VALUES'
      '(:CODIGO, :DESCRIPCION, :GRUPO, :IMPORTE, :IVA, :TOTAL_CON_IVA);')
    Left = 56
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODIGO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DESCRIPCION'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'GRUPO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'IMPORTE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'IVA'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TOTAL_CON_IVA'
        Value = nil
      end>
  end
  object QInsertarServHospPesos: TUniQuery
    Connection = ConeccionServHosp
    SQL.Strings = (
      'INSERT INTO catalogo_servicio_de_hospital_Pesos'
      
        '(CODIGO, DESCRIPCION, GRUPO, IMPORTE, IVA, TOTAL_CON_IVA, NUMERO' +
        ') '
      'VALUES'
      
        '(:CODIGO, :DESCRIPCION, :GRUPO, :IMPORTE, :IVA, :TOTAL_CON_IVA, ' +
        ':NUMERO);')
    Left = 56
    Top = 264
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODIGO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DESCRIPCION'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'GRUPO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'IMPORTE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'IVA'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TOTAL_CON_IVA'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NUMERO'
        Value = nil
      end>
  end
  object QTruncateServHospPesos: TUniQuery
    Connection = ConeccionServHosp
    SQL.Strings = (
      'TRUNCATE catalogo_servicio_de_hospital_pesos;')
    Left = 56
    Top = 208
  end
  object QTruncateServHospDolares: TUniQuery
    Connection = ConeccionServHosp
    SQL.Strings = (
      'TRUNCATE catalogo_servicio_de_hospital_dolares;')
    Left = 56
    Top = 328
  end
  object QInsertarServHospDolares: TUniQuery
    Connection = ConeccionServHosp
    SQL.Strings = (
      'INSERT INTO catalogo_servicio_de_hospital_dolares'
      
        '(CODIGO, DESCRIPCION, GRUPO, IMPORTE, IVA, TOTAL_CON_IVA, CAMBIO' +
        ') '
      'VALUES'
      
        '(:CODIGO, :DESCRIPCION, :GRUPO, :IMPORTE, :IVA, :TOTAL_CON_IVA, ' +
        ':CAMBIO);')
    Left = 56
    Top = 391
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODIGO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DESCRIPCION'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'GRUPO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'IMPORTE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'IVA'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TOTAL_CON_IVA'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CAMBIO'
        Value = nil
      end>
  end
  object TablaServHosp: TUniTable
    TableName = 'catalogo_servicio_de_hospital'
    Connection = ConeccionServHospVer
    Left = 392
    Top = 80
    object TablaServHospCODIGO: TLargeintField
      FieldName = 'CODIGO'
    end
    object TablaServHospDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 255
    end
    object TablaServHospGRUPO: TStringField
      FieldName = 'GRUPO'
      Size = 100
    end
    object TablaServHospIMPORTE: TStringField
      FieldName = 'IMPORTE'
      Size = 50
    end
    object TablaServHospIVA: TStringField
      FieldName = 'IVA'
      Size = 50
    end
    object TablaServHospTOTAL_CON_IVA: TStringField
      FieldName = 'TOTAL_CON_IVA'
      Size = 50
    end
  end
  object DSServHosp: TUniDataSource
    DataSet = TablaServHosp
    Left = 392
    Top = 136
  end
  object TablaServHospPesos: TUniTable
    TableName = 'catalogo_servicio_de_hospital_pesos'
    Connection = ConeccionServHospVer
    Left = 392
    Top = 200
    object TablaServHospPesosCODIGO: TLargeintField
      FieldName = 'CODIGO'
    end
    object TablaServHospPesosDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 255
    end
    object TablaServHospPesosGRUPO: TStringField
      FieldName = 'GRUPO'
      Size = 100
    end
    object TablaServHospPesosIMPORTE: TStringField
      FieldName = 'IMPORTE'
      Size = 50
    end
    object TablaServHospPesosIVA: TStringField
      FieldName = 'IVA'
      Size = 50
    end
    object TablaServHospPesosTOTAL_CON_IVA: TStringField
      FieldName = 'TOTAL_CON_IVA'
      Size = 50
    end
  end
  object DSServHospPesos: TUniDataSource
    DataSet = TablaServHospPesos
    Left = 392
    Top = 256
  end
  object TablaServHospDolares: TUniTable
    TableName = 'catalogo_servicio_de_hospital_dolares'
    Connection = ConeccionServHospVer
    Left = 392
    Top = 320
    object TablaServHospDolaresCODIGO: TLargeintField
      FieldName = 'CODIGO'
    end
    object TablaServHospDolaresDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 255
    end
    object TablaServHospDolaresGRUPO: TStringField
      FieldName = 'GRUPO'
      Size = 100
    end
    object TablaServHospDolaresIMPORTE: TStringField
      FieldName = 'IMPORTE'
      Size = 50
    end
    object TablaServHospDolaresIVA: TStringField
      FieldName = 'IVA'
      Size = 50
    end
    object TablaServHospDolaresTOTAL_CON_IVA: TStringField
      FieldName = 'TOTAL_CON_IVA'
      Size = 50
    end
  end
  object DSServHospDolares: TUniDataSource
    DataSet = TablaServHospDolares
    Left = 392
    Top = 383
  end
  object MySQLUniProvider1: TMySQLUniProvider
    Left = 192
    Top = 16
  end
  object ConeccionServHospVer: TUniConnection
    ProviderName = 'MySQL'
    Database = 'hospitalgalenia'
    Username = 'mama'
    Server = 'localhost'
    Left = 392
    Top = 24
    EncryptedPassword = '92FF9EFF92FF9EFF'
  end
end
