object DmMateriales: TDmMateriales
  OldCreateOrder = False
  Height = 445
  Width = 670
  object ConeccionMateriales: TUniConnection
    ProviderName = 'MySQL'
    Database = 'hospitalgalenia'
    Username = 'mama'
    Server = 'localhost'
    Left = 48
    Top = 16
    EncryptedPassword = '92FF9EFF92FF9EFF'
  end
  object QTruncateMateriales: TUniQuery
    Connection = ConeccionMateriales
    SQL.Strings = (
      'TRUNCATE catalogo_materiales;')
    Left = 56
    Top = 88
  end
  object QInsertarMateriales: TUniQuery
    Connection = ConeccionMateriales
    SQL.Strings = (
      
        'INSERT INTO catalogo_materiales(CODIGO, MATERIAL, GRUPO, IMPORTE' +
        ', IVA, TOTAL_CON_IVA) '
      
        'VALUES(:CODIGO, :MATERIAL, :GRUPO, :IMPORTE, :IVA, :TOTAL_CON_IV' +
        'A);')
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
        Name = 'MATERIAL'
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
  object QInsertarMaterialesPesos: TUniQuery
    Connection = ConeccionMateriales
    SQL.Strings = (
      
        'INSERT INTO catalogo_materiales_Pesos(CODIGO, MATERIAL, GRUPO, I' +
        'MPORTE, IVA, TOTAL_CON_IVA, NUMERO) '
      
        'VALUES(:CODIGO, :MATERIAL, :GRUPO, :IMPORTE, :IVA, :TOTAL_CON_IV' +
        'A, :NUMERO);')
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
        Name = 'MATERIAL'
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
  object QTruncateMaterialesPesos: TUniQuery
    Connection = ConeccionMateriales
    SQL.Strings = (
      'TRUNCATE catalogo_materiales_pesos;')
    Left = 56
    Top = 208
  end
  object QTruncateMaterialesDolares: TUniQuery
    Connection = ConeccionMateriales
    SQL.Strings = (
      'TRUNCATE catalogo_materiales_dolares;')
    Left = 56
    Top = 328
  end
  object QInsertarMaterialesDolares: TUniQuery
    Connection = ConeccionMateriales
    SQL.Strings = (
      'INSERT INTO catalogo_materiales_dolares'
      '(CODIGO, MATERIAL, GRUPO, IMPORTE, IVA, TOTAL_CON_IVA, CAMBIO) '
      'VALUES'
      
        '(:CODIGO, :MATERIAL, :GRUPO, :IMPORTE, :IVA, :TOTAL_CON_IVA, :CA' +
        'MBIO);')
    Left = 56
    Top = 384
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODIGO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'MATERIAL'
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
  object TablaMateriales: TUniTable
    TableName = 'catalogo_materiales'
    Connection = ConeccionMaterialesVer
    Left = 392
    Top = 80
    object TablaMaterialesCODIGO: TLargeintField
      FieldName = 'CODIGO'
    end
    object TablaMaterialesMATERIAL: TStringField
      FieldName = 'MATERIAL'
      Size = 255
    end
    object TablaMaterialesGRUPO: TStringField
      FieldName = 'GRUPO'
      Size = 100
    end
    object TablaMaterialesIMPORTE: TStringField
      FieldName = 'IMPORTE'
      Size = 50
    end
    object TablaMaterialesIVA: TStringField
      FieldName = 'IVA'
      Size = 50
    end
    object TablaMaterialesTOTAL_CON_IVA: TStringField
      FieldName = 'TOTAL_CON_IVA'
      Size = 50
    end
  end
  object DSMateriales: TUniDataSource
    DataSet = TablaMateriales
    Left = 392
    Top = 136
  end
  object TablaMaterialesPesos: TUniTable
    TableName = 'catalogo_materiales_pesos'
    Connection = ConeccionMaterialesVer
    Left = 392
    Top = 200
    object TablaMaterialesPesosCODIGO: TLargeintField
      FieldName = 'CODIGO'
    end
    object TablaMaterialesPesosMATERIAL: TStringField
      FieldName = 'MATERIAL'
      Size = 255
    end
    object TablaMaterialesPesosGRUPO: TStringField
      FieldName = 'GRUPO'
      Size = 100
    end
    object TablaMaterialesPesosIMPORTE: TStringField
      FieldName = 'IMPORTE'
      Size = 50
    end
    object TablaMaterialesPesosIVA: TStringField
      FieldName = 'IVA'
      Size = 50
    end
    object TablaMaterialesPesosTOTAL_CON_IVA: TStringField
      FieldName = 'TOTAL_CON_IVA'
      Size = 50
    end
  end
  object DSMaterialesPesos: TUniDataSource
    DataSet = TablaMaterialesPesos
    Left = 392
    Top = 256
  end
  object TablaMaterialesDolares: TUniTable
    TableName = 'catalogo_materiales_dolares'
    Connection = ConeccionMaterialesVer
    Left = 392
    Top = 320
    object TablaMaterialesDolaresCODIGO: TLargeintField
      FieldName = 'CODIGO'
    end
    object TablaMaterialesDolaresMATERIAL: TStringField
      FieldName = 'MATERIAL'
      Size = 255
    end
    object TablaMaterialesDolaresGRUPO: TStringField
      FieldName = 'GRUPO'
      Size = 100
    end
    object TablaMaterialesDolaresIMPORTE: TStringField
      FieldName = 'IMPORTE'
      Size = 50
    end
    object TablaMaterialesDolaresIVA: TStringField
      FieldName = 'IVA'
      Size = 50
    end
    object TablaMaterialesDolaresTOTAL_CON_IVA: TStringField
      FieldName = 'TOTAL_CON_IVA'
      Size = 50
    end
  end
  object DSMaterialesDolares: TUniDataSource
    DataSet = TablaMaterialesDolares
    Left = 392
    Top = 376
  end
  object MySQLUniProvider1: TMySQLUniProvider
    Left = 192
    Top = 16
  end
  object ConeccionMaterialesVer: TUniConnection
    ProviderName = 'MySQL'
    Database = 'hospitalgalenia'
    Username = 'mama'
    Server = 'localhost'
    Left = 392
    Top = 24
    EncryptedPassword = '92FF9EFF92FF9EFF'
  end
end
