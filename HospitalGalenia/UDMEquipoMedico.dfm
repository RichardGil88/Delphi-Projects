object DMEquipoMedico: TDMEquipoMedico
  OldCreateOrder = False
  Height = 450
  Width = 645
  object ConeccionEquipoMed: TUniConnection
    ProviderName = 'MySQL'
    Database = 'hospitalgalenia'
    Username = 'mama'
    Server = 'localhost'
    Left = 48
    Top = 16
    EncryptedPassword = '92FF9EFF92FF9EFF'
  end
  object QTruncateEquipoMed: TUniQuery
    Connection = ConeccionEquipoMed
    SQL.Strings = (
      'TRUNCATE catalogo_equipo_medico;')
    Left = 56
    Top = 88
  end
  object QInsertarEquipoMed: TUniQuery
    Connection = ConeccionEquipoMed
    SQL.Strings = (
      'INSERT INTO catalogo_equipo_medico'
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
  object QInsertarEquipoMedPesos: TUniQuery
    Connection = ConeccionEquipoMed
    SQL.Strings = (
      'INSERT INTO catalogo_equipo_medico_Pesos'
      
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
  object QTruncateEquipoMedPesos: TUniQuery
    Connection = ConeccionEquipoMed
    SQL.Strings = (
      'TRUNCATE catalogo_equipo_medico_pesos;')
    Left = 56
    Top = 208
  end
  object QTruncateEquipoMedDolares: TUniQuery
    Connection = ConeccionEquipoMed
    SQL.Strings = (
      'TRUNCATE catalogo_equipo_medico_dolares;')
    Left = 56
    Top = 328
  end
  object QInsertarEquipoMedDolares: TUniQuery
    Connection = ConeccionEquipoMed
    SQL.Strings = (
      'INSERT INTO catalogo_equipo_medico_dolares'
      
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
  object TablaEquipoMedico: TUniTable
    TableName = 'catalogo_equipo_medico'
    Connection = ConeccionServHospVer
    Left = 392
    Top = 80
    object TablaEquipoMedicoCODIGO: TLargeintField
      FieldName = 'CODIGO'
    end
    object TablaEquipoMedicoDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 255
    end
    object TablaEquipoMedicoGRUPO: TStringField
      FieldName = 'GRUPO'
      Size = 100
    end
    object TablaEquipoMedicoIMPORTE: TStringField
      FieldName = 'IMPORTE'
      Size = 50
    end
    object TablaEquipoMedicoIVA: TStringField
      FieldName = 'IVA'
      Size = 50
    end
    object TablaEquipoMedicoTOTAL_CON_IVA: TStringField
      FieldName = 'TOTAL_CON_IVA'
      Size = 50
    end
  end
  object DSEquipoMed: TUniDataSource
    DataSet = TablaEquipoMedico
    Left = 392
    Top = 136
  end
  object TablaEquipoMedPesos: TUniTable
    TableName = 'catalogo_equipo_medico_pesos'
    Connection = ConeccionServHospVer
    Left = 392
    Top = 200
    object TablaEquipoMedPesosCODIGO: TLargeintField
      FieldName = 'CODIGO'
    end
    object TablaEquipoMedPesosDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 255
    end
    object TablaEquipoMedPesosGRUPO: TStringField
      FieldName = 'GRUPO'
      Size = 100
    end
    object TablaEquipoMedPesosIMPORTE: TStringField
      FieldName = 'IMPORTE'
      Size = 50
    end
    object TablaEquipoMedPesosIVA: TStringField
      FieldName = 'IVA'
      Size = 50
    end
    object TablaEquipoMedPesosTOTAL_CON_IVA: TStringField
      FieldName = 'TOTAL_CON_IVA'
      Size = 50
    end
  end
  object DSEquipoMedPesos: TUniDataSource
    DataSet = TablaEquipoMedPesos
    Left = 392
    Top = 256
  end
  object TablaEquipoMedDolares: TUniTable
    TableName = 'catalogo_equipo_medico_dolares'
    Connection = ConeccionServHospVer
    Left = 392
    Top = 320
    object TablaEquipoMedDolaresCODIGO: TLargeintField
      FieldName = 'CODIGO'
    end
    object TablaEquipoMedDolaresDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 255
    end
    object TablaEquipoMedDolaresGRUPO: TStringField
      FieldName = 'GRUPO'
      Size = 100
    end
    object TablaEquipoMedDolaresIMPORTE: TStringField
      FieldName = 'IMPORTE'
      Size = 50
    end
    object TablaEquipoMedDolaresIVA: TStringField
      FieldName = 'IVA'
      Size = 50
    end
    object TablaEquipoMedDolaresTOTAL_CON_IVA: TStringField
      FieldName = 'TOTAL_CON_IVA'
      Size = 50
    end
  end
  object DSEquipoMedDolares: TUniDataSource
    DataSet = TablaEquipoMedDolares
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
