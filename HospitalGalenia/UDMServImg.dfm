object DMServImg: TDMServImg
  OldCreateOrder = False
  Height = 453
  Width = 695
  object ConeccionServImg: TUniConnection
    ProviderName = 'MySQL'
    Database = 'hospitalgalenia'
    Username = 'mama'
    Server = 'localhost'
    Left = 48
    Top = 16
    EncryptedPassword = '92FF9EFF92FF9EFF'
  end
  object QTruncateServImg: TUniQuery
    Connection = ConeccionServImg
    SQL.Strings = (
      'TRUNCATE catalogo_servicio_de_imagenologia;')
    Left = 56
    Top = 88
  end
  object QInsertarServImg: TUniQuery
    Connection = ConeccionServImg
    SQL.Strings = (
      'INSERT INTO catalogo_servicio_de_imagenologia'
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
  object QInsertarServImgPesos: TUniQuery
    Connection = ConeccionServImg
    SQL.Strings = (
      'INSERT INTO catalogo_servicio_de_imagenologia_Pesos'
      
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
  object QTruncateServImgPesos: TUniQuery
    Connection = ConeccionServImg
    SQL.Strings = (
      'TRUNCATE catalogo_servicio_de_imagenologia_pesos;')
    Left = 56
    Top = 208
  end
  object QTruncateServImgDolares: TUniQuery
    Connection = ConeccionServImg
    SQL.Strings = (
      'TRUNCATE catalogo_servicio_de_imagenologia_dolares;')
    Left = 56
    Top = 328
  end
  object QInsertarServImgDolares: TUniQuery
    Connection = ConeccionServImg
    SQL.Strings = (
      'INSERT INTO catalogo_servicio_de_imagenologia_dolares'
      
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
  object TablaServImg: TUniTable
    TableName = 'catalogo_servicio_de_imagenologia'
    Connection = ConeccionServImgVer
    Left = 392
    Top = 80
    object TablaServImgCODIGO: TLargeintField
      FieldName = 'CODIGO'
    end
    object TablaServImgDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 255
    end
    object TablaServImgGRUPO: TStringField
      FieldName = 'GRUPO'
      Size = 100
    end
    object TablaServImgIMPORTE: TStringField
      FieldName = 'IMPORTE'
      Size = 50
    end
    object TablaServImgIVA: TStringField
      FieldName = 'IVA'
      Size = 50
    end
    object TablaServImgTOTAL_CON_IVA: TStringField
      FieldName = 'TOTAL_CON_IVA'
      Size = 50
    end
  end
  object DSServImg: TUniDataSource
    DataSet = TablaServImg
    Left = 392
    Top = 136
  end
  object TablaServImgPesos: TUniTable
    TableName = 'catalogo_servicio_de_imagenologia_pesos'
    Connection = ConeccionServImgVer
    Left = 392
    Top = 200
    object TablaServImgPesosCODIGO: TLargeintField
      FieldName = 'CODIGO'
    end
    object TablaServImgPesosDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 255
    end
    object TablaServImgPesosGRUPO: TStringField
      FieldName = 'GRUPO'
      Size = 100
    end
    object TablaServImgPesosIMPORTE: TStringField
      FieldName = 'IMPORTE'
      Size = 50
    end
    object TablaServImgPesosIVA: TStringField
      FieldName = 'IVA'
      Size = 50
    end
    object TablaServImgPesosTOTAL_CON_IVA: TStringField
      FieldName = 'TOTAL_CON_IVA'
      Size = 50
    end
  end
  object DSServImgPesos: TUniDataSource
    DataSet = TablaServImgPesos
    Left = 392
    Top = 256
  end
  object TablaServImgDolares: TUniTable
    TableName = 'catalogo_servicio_de_imagenologia_dolares'
    Connection = ConeccionServImgVer
    Left = 392
    Top = 320
    object TablaServImgDolaresCODIGO: TLargeintField
      FieldName = 'CODIGO'
    end
    object TablaServImgDolaresDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 255
    end
    object TablaServImgDolaresGRUPO: TStringField
      FieldName = 'GRUPO'
      Size = 100
    end
    object TablaServImgDolaresIMPORTE: TStringField
      FieldName = 'IMPORTE'
      Size = 50
    end
    object TablaServImgDolaresIVA: TStringField
      FieldName = 'IVA'
      Size = 50
    end
    object TablaServImgDolaresTOTAL_CON_IVA: TStringField
      FieldName = 'TOTAL_CON_IVA'
      Size = 50
    end
  end
  object DSServImgDolares: TUniDataSource
    DataSet = TablaServImgDolares
    Left = 392
    Top = 383
  end
  object MySQLUniProvider1: TMySQLUniProvider
    Left = 192
    Top = 16
  end
  object ConeccionServImgVer: TUniConnection
    ProviderName = 'MySQL'
    Database = 'hospitalgalenia'
    Username = 'mama'
    Server = 'localhost'
    Left = 392
    Top = 24
    EncryptedPassword = '92FF9EFF92FF9EFF'
  end
end
