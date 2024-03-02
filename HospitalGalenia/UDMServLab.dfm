object DMServLab: TDMServLab
  OldCreateOrder = False
  Height = 462
  Width = 575
  object ConeccionServLab: TUniConnection
    ProviderName = 'MySQL'
    Database = 'hospitalgalenia'
    Username = 'mama'
    Server = 'localhost'
    Left = 48
    Top = 16
    EncryptedPassword = '92FF9EFF92FF9EFF'
  end
  object QTruncateServLab: TUniQuery
    Connection = ConeccionServLab
    SQL.Strings = (
      'TRUNCATE catalogo_servicio_de_laboratorio;')
    Left = 56
    Top = 88
  end
  object QInsertarServLab: TUniQuery
    Connection = ConeccionServLab
    SQL.Strings = (
      'INSERT INTO catalogo_servicio_de_laboratorio'
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
  object QInsertarServLabPesos: TUniQuery
    Connection = ConeccionServLab
    SQL.Strings = (
      'INSERT INTO catalogo_servicio_de_laboratorio_Pesos'
      
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
  object QTruncateServLabPesos: TUniQuery
    Connection = ConeccionServLab
    SQL.Strings = (
      'TRUNCATE catalogo_servicio_de_laboratorio_pesos;')
    Left = 56
    Top = 208
  end
  object QTruncateServLabDolares: TUniQuery
    Connection = ConeccionServLab
    SQL.Strings = (
      'TRUNCATE catalogo_servicio_de_laboratorio_dolares;')
    Left = 56
    Top = 328
  end
  object QInsertarServLabDolares: TUniQuery
    Connection = ConeccionServLab
    SQL.Strings = (
      'INSERT INTO catalogo_servicio_de_laboratorio_dolares'
      
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
  object TablaServLab: TUniTable
    TableName = 'catalogo_servicio_de_laboratorio'
    Connection = ConeccionServLabVer
    Left = 392
    Top = 80
    object TablaServLabCODIGO: TLargeintField
      FieldName = 'CODIGO'
    end
    object TablaServLabDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 255
    end
    object TablaServLabGRUPO: TStringField
      FieldName = 'GRUPO'
      Size = 100
    end
    object TablaServLabIMPORTE: TStringField
      FieldName = 'IMPORTE'
      Size = 50
    end
    object TablaServLabIVA: TStringField
      FieldName = 'IVA'
      Size = 50
    end
    object TablaServLabTOTAL_CON_IVA: TStringField
      FieldName = 'TOTAL_CON_IVA'
      Size = 50
    end
  end
  object DSServLab: TUniDataSource
    DataSet = TablaServLab
    Left = 392
    Top = 136
  end
  object TablaServLabPesos: TUniTable
    TableName = 'catalogo_servicio_de_laboratorio_pesos'
    Connection = ConeccionServLabVer
    Left = 392
    Top = 200
    object TablaServLabPesosCODIGO: TLargeintField
      FieldName = 'CODIGO'
    end
    object TablaServLabPesosDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 255
    end
    object TablaServLabPesosGRUPO: TStringField
      FieldName = 'GRUPO'
      Size = 100
    end
    object TablaServLabPesosIMPORTE: TStringField
      FieldName = 'IMPORTE'
      Size = 50
    end
    object TablaServLabPesosIVA: TStringField
      FieldName = 'IVA'
      Size = 50
    end
    object TablaServLabPesosTOTAL_CON_IVA: TStringField
      FieldName = 'TOTAL_CON_IVA'
      Size = 50
    end
  end
  object DSServLabPesos: TUniDataSource
    DataSet = TablaServLabPesos
    Left = 392
    Top = 256
  end
  object TablaServLabDolares: TUniTable
    TableName = 'catalogo_servicio_de_laboratorio_dolares'
    Connection = ConeccionServLabVer
    Left = 392
    Top = 328
    object TablaServLabDolaresCODIGO: TLargeintField
      FieldName = 'CODIGO'
    end
    object TablaServLabDolaresDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 255
    end
    object TablaServLabDolaresGRUPO: TStringField
      FieldName = 'GRUPO'
      Size = 100
    end
    object TablaServLabDolaresIMPORTE: TStringField
      FieldName = 'IMPORTE'
      Size = 50
    end
    object TablaServLabDolaresIVA: TStringField
      FieldName = 'IVA'
      Size = 50
    end
    object TablaServLabDolaresTOTAL_CON_IVA: TStringField
      FieldName = 'TOTAL_CON_IVA'
      Size = 50
    end
  end
  object DSServLabDolares: TUniDataSource
    DataSet = TablaServLabDolares
    Left = 392
    Top = 388
  end
  object MySQLUniProvider1: TMySQLUniProvider
    Left = 192
    Top = 16
  end
  object ConeccionServLabVer: TUniConnection
    ProviderName = 'MySQL'
    Database = 'hospitalgalenia'
    Username = 'mama'
    Server = 'localhost'
    Left = 392
    Top = 24
    EncryptedPassword = '92FF9EFF92FF9EFF'
  end
end
