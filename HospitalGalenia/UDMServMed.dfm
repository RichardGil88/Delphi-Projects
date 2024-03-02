object DMServMed: TDMServMed
  OldCreateOrder = False
  Height = 459
  Width = 564
  object ConeccionServMed: TUniConnection
    ProviderName = 'MySQL'
    Database = 'hospitalgalenia'
    Username = 'mama'
    Server = 'localhost'
    Left = 48
    Top = 16
    EncryptedPassword = '92FF9EFF92FF9EFF'
  end
  object QTruncateServMed: TUniQuery
    Connection = ConeccionServMed
    SQL.Strings = (
      'TRUNCATE catalogo_servicio_medico;')
    Left = 56
    Top = 88
  end
  object QInsertarServMed: TUniQuery
    Connection = ConeccionServMed
    SQL.Strings = (
      'INSERT INTO catalogo_servicio_medico'
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
  object QInsertarServMedPesos: TUniQuery
    Connection = ConeccionServMed
    SQL.Strings = (
      'INSERT INTO catalogo_servicio_medico_Pesos'
      
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
  object QTruncateServMedPesos: TUniQuery
    Connection = ConeccionServMed
    SQL.Strings = (
      'TRUNCATE catalogo_servicio_medico_pesos;')
    Left = 56
    Top = 208
  end
  object QTruncateServMedDolares: TUniQuery
    Connection = ConeccionServMed
    SQL.Strings = (
      'TRUNCATE catalogo_servicio_medico_dolares;')
    Left = 56
    Top = 328
  end
  object QInsertarServMedDolares: TUniQuery
    Connection = ConeccionServMed
    SQL.Strings = (
      'INSERT INTO catalogo_servicio_medico_dolares'
      
        '(CODIGO, DESCRIPCION, GRUPO, IMPORTE, IVA, TOTAL_CON_IVA, CAMBIO' +
        ') '
      'VALUES'
      
        '(:CODIGO, :DESCRIPCION, :GRUPO, :IMPORTE, :IVA, :TOTAL_CON_IVA, ' +
        ':CAMBIO);')
    Left = 56
    Top = 388
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
  object TablaServMed: TUniTable
    TableName = 'catalogo_servicio_medico'
    Connection = ConeccionServMedVer
    Left = 392
    Top = 80
    object TablaServMedCODIGO: TLargeintField
      FieldName = 'CODIGO'
    end
    object TablaServMedDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 255
    end
    object TablaServMedGRUPO: TStringField
      FieldName = 'GRUPO'
      Size = 100
    end
    object TablaServMedIMPORTE: TStringField
      FieldName = 'IMPORTE'
      Size = 50
    end
    object TablaServMedIVA: TStringField
      FieldName = 'IVA'
      Size = 50
    end
    object TablaServMedTOTAL_CON_IVA: TStringField
      FieldName = 'TOTAL_CON_IVA'
      Size = 50
    end
  end
  object DSServMed: TUniDataSource
    DataSet = TablaServMed
    Left = 392
    Top = 136
  end
  object TablaServMedPesos: TUniTable
    TableName = 'catalogo_servicio_medico_pesos'
    Connection = ConeccionServMedVer
    Left = 392
    Top = 200
    object TablaServMedPesosCODIGO: TLargeintField
      FieldName = 'CODIGO'
    end
    object TablaServMedPesosDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 255
    end
    object TablaServMedPesosGRUPO: TStringField
      FieldName = 'GRUPO'
      Size = 100
    end
    object TablaServMedPesosIMPORTE: TStringField
      FieldName = 'IMPORTE'
      Size = 50
    end
    object TablaServMedPesosIVA: TStringField
      FieldName = 'IVA'
      Size = 50
    end
    object TablaServMedPesosTOTAL_CON_IVA: TStringField
      FieldName = 'TOTAL_CON_IVA'
      Size = 50
    end
  end
  object DSServMedPesos: TUniDataSource
    DataSet = TablaServMedPesos
    Left = 392
    Top = 256
  end
  object TablaServMedDolares: TUniTable
    TableName = 'catalogo_servicio_medico_dolares'
    Connection = ConeccionServMedVer
    Left = 392
    Top = 328
    object TablaServMedDolaresCODIGO: TLargeintField
      FieldName = 'CODIGO'
    end
    object TablaServMedDolaresDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 255
    end
    object TablaServMedDolaresGRUPO: TStringField
      FieldName = 'GRUPO'
      Size = 100
    end
    object TablaServMedDolaresIMPORTE: TStringField
      FieldName = 'IMPORTE'
      Size = 50
    end
    object TablaServMedDolaresIVA: TStringField
      FieldName = 'IVA'
      Size = 50
    end
    object TablaServMedDolaresTOTAL_CON_IVA: TStringField
      FieldName = 'TOTAL_CON_IVA'
      Size = 50
    end
  end
  object DSServMedDolares: TUniDataSource
    DataSet = TablaServMedDolares
    Left = 392
    Top = 388
  end
  object MySQLUniProvider1: TMySQLUniProvider
    Left = 192
    Top = 16
  end
  object ConeccionServMedVer: TUniConnection
    ProviderName = 'MySQL'
    Database = 'hospitalgalenia'
    Username = 'mama'
    Server = 'localhost'
    Left = 392
    Top = 24
    EncryptedPassword = '92FF9EFF92FF9EFF'
  end
end
