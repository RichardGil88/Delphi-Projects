object FDMCodificadores: TFDMCodificadores
  OldCreateOrder = False
  Height = 510
  Width = 963
  object QMedicamentos: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'Select * from Medicamentos;')
    Left = 208
    Top = 32
    object QMedicamentosCODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
    end
    object QMedicamentosNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 100
    end
    object QMedicamentosCATEGORIA: TStringField
      FieldName = 'CATEGORIA'
      Size = 100
    end
  end
  object DSMedicamentos: TUniDataSource
    DataSet = QMedicamentos
    Left = 208
    Top = 80
  end
  object QServicios: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'SELECT  *'
      'FROM  `servicios`'
      'where CARGO = :CARGO;'
      ''
      ''
      '')
    Left = 131
    Top = 34
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CARGO'
        Value = nil
      end>
    object QServiciosCODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
    end
    object QServiciosNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 255
    end
    object QServiciosPRECIO_DE_VENTA: TIntegerField
      FieldName = 'PRECIO_DE_VENTA'
    end
  end
  object DSServicios: TUniDataSource
    DataSet = QServicios
    Left = 131
    Top = 80
  end
  object QInsumos: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'SELECT  *'
      'FROM  `insumos`;'
      ''
      ''
      '')
    Left = 67
    Top = 34
    object QInsumosCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object QInsumosNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 150
    end
  end
  object DSInsumos: TUniDataSource
    DataSet = QInsumos
    Left = 67
    Top = 80
  end
  object DSQproveedores: TUniDataSource
    DataSet = Qproveedores
    Left = 432
    Top = 80
  end
  object Qproveedores: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'SELECT proveedores.* from proveedores;')
    Left = 432
    Top = 32
    object QproveedoresCODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
    end
    object QproveedoresNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 100
    end
    object QproveedoresTELEFONO: TIntegerField
      FieldName = 'TELEFONO'
    end
    object QproveedoresEMAIL2: TStringField
      FieldName = 'EMAIL'
      Size = 100
    end
    object QproveedoresDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 255
    end
    object QproveedoresDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 255
    end
  end
  object DSLab: TUniDataSource
    DataSet = QLab
    Left = 368
    Top = 80
  end
  object QLab: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'Select * from Laboratorios;')
    Left = 368
    Top = 32
    object QLabCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object QLabNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 100
    end
    object QLabTELEFONO: TIntegerField
      FieldName = 'TELEFONO'
    end
    object QLabEMAIL2: TStringField
      FieldName = 'EMAIL'
      Size = 100
    end
    object QLabDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 255
    end
    object QLabDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 255
    end
  end
  object DSPresentacion: TUniDataSource
    DataSet = QPresentacion
    Left = 296
    Top = 80
  end
  object QPresentacion: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'Select * from Presentacion')
    Left = 296
    Top = 32
    object QPresentacionCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object QPresentacionNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 255
    end
  end
  object DSCod_Cita_Motivos: TUniDataSource
    DataSet = QCod_Cita_Motivos
    Left = 544
    Top = 80
  end
  object DSCod_Cita_Estados: TUniDataSource
    DataSet = QCod_Cita_Estados
    Left = 664
    Top = 80
  end
  object QCod_Cita_Estados: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'SELECT * FROM `cod_citas_estados`;')
    Left = 664
    Top = 32
    object IntegerField1: TIntegerField
      FieldName = 'CODIGO'
    end
    object StringField1: TStringField
      FieldName = 'NOMBRE'
      Size = 255
    end
  end
  object QCod_Cita_Motivos: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'SELECT * FROM `cod_citas_motivos`;')
    Left = 544
    Top = 32
    object QCod_Cita_MotivosCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object QCod_Cita_MotivosNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 255
    end
  end
  object DSCod_Tipos_De_Sangre: TUniDataSource
    DataSet = QCod_Tipos_De_Sangre
    Left = 784
    Top = 80
  end
  object QCod_Tipos_De_Sangre: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'SELECT * FROM `cod_tipo_de_sangre`;')
    Left = 784
    Top = 32
    object IntegerField2: TIntegerField
      FieldName = 'CODIGO'
    end
    object StringField2: TStringField
      FieldName = 'NOMBRE'
      Size = 255
    end
  end
  object DSCategorias: TUniDataSource
    DataSet = QCategorias
    Left = 64
    Top = 200
  end
  object QCategorias: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'SELECT * FROM `cod_categorias`;')
    Left = 64
    Top = 144
    object IntegerField3: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
    end
    object StringField3: TStringField
      FieldName = 'NOMBRE'
      Size = 255
    end
  end
  object QInsertar: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      '')
    Left = 96
    Top = 312
    object IntegerField4: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
    end
    object StringField4: TStringField
      FieldName = 'NOMBRE'
      Size = 255
    end
  end
  object QEliminar: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'SELECT * FROM `cod_categorias`;')
    Left = 96
    Top = 368
    object IntegerField5: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
    end
    object StringField5: TStringField
      FieldName = 'NOMBRE'
      Size = 255
    end
  end
  object DSDoctores: TUniDataSource
    DataSet = QDoctores
    Left = 152
    Top = 200
  end
  object QDoctores: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'SELECT * FROM `DOCTORES`;')
    Left = 152
    Top = 144
    object IntegerField6: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
    end
    object StringField6: TStringField
      FieldName = 'NOMBRE'
      Size = 100
    end
    object QDoctoresTELEFONO: TIntegerField
      FieldName = 'TELEFONO'
    end
    object QDoctoresEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 100
    end
    object QDoctoresDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 255
    end
    object QDoctoresESPECIALIDADES: TStringField
      FieldName = 'ESPECIALIDADES'
      Size = 255
    end
  end
  object DSEstados_Civiles: TUniDataSource
    DataSet = QEstados_Civiles
    Left = 240
    Top = 200
  end
  object QEstados_Civiles: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'SELECT * FROM `COD_ESTADOS_CIVILES`;')
    Left = 240
    Top = 144
    object IntegerField7: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
    end
    object StringField7: TStringField
      FieldName = 'NOMBRE'
      Size = 100
    end
  end
end
