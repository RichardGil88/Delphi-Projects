object FDMPacientes: TFDMPacientes
  OldCreateOrder = False
  Height = 612
  Width = 1043
  object QInsertarPaciente: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'INSERT INTO `PACIENTES` '
      '('
      '`PACIENTES`.`NOMBRE`,'
      '`PACIENTES`.`PRIMER_APELLIDO`,'
      '`PACIENTES`.`SEGUNDO_APELLIDO`,'
      '`PACIENTES`.`TELEFONOS`,'
      '`PACIENTES`.`CORREO`,'
      '`PACIENTES`.`SEXO`,'
      '`PACIENTES`.`ESCOLARIDAD`,'
      '`PACIENTES`.`ESTADO_CIVIL`,'
      '`PACIENTES`.`OCUPACION`,'
      '`PACIENTES`.`DIRECCION`,'
      '`PACIENTES`.`FECHA_DE_CREADO`, '
      '`PACIENTES`.`COMENTARIOS`,'
      '`PACIENTES`.`MEDICO`'
      ' '
      ')'
      'VALUES'
      '('
      '  :NOMBRE,'
      '  :PRIMER_APELLIDO,'
      '  :SEGUNDO_APELLIDO,'
      '  :TELEFONOS,'
      '  :CORREO,'
      '  :SEXO,'
      '  :ESCOLARIDAD,'
      '  :ESTADO_CIVIL,'
      '  :OCUPACION,'
      '  :DIRECCION,'
      '  :FECHA_DE_CREADO,'
      '  :COMENTARIOS,'
      '  :MEDICO'
      ');')
    Left = 96
    Top = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NOMBRE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PRIMER_APELLIDO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'SEGUNDO_APELLIDO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TELEFONOS'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CORREO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'SEXO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ESCOLARIDAD'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ESTADO_CIVIL'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'OCUPACION'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DIRECCION'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FECHA_DE_CREADO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'COMENTARIOS'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'MEDICO'
        Value = nil
      end>
  end
  object QExistePaciente: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'SELECT * '
      'FROM `PACIENTES`'
      'WHERE `PACIENTES`.`NOMBRE` = :NOMBRE and'
      '      `PACIENTES`.`PRIMER_APELLIDO` = :PRIMER_APELLIDO and'
      '      `PACIENTES`.`SEGUNDO_APELLIDO` = :SEGUNDO_APELLIDO ;'
      '')
    Left = 184
    Top = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NOMBRE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PRIMER_APELLIDO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'SEGUNDO_APELLIDO'
        Value = nil
      end>
  end
  object QPacientes: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'SELECT * '
      'FROM `PACIENTES`;')
    Left = 96
    Top = 120
    object QPacientesCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object QPacientesNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 50
    end
    object QPacientesPRIMER_APELLIDO: TStringField
      FieldName = 'PRIMER_APELLIDO'
      Size = 50
    end
    object QPacientesSEGUNDO_APELLIDO: TStringField
      FieldName = 'SEGUNDO_APELLIDO'
      Size = 50
    end
    object QPacientesTELEFONOS: TMemoField
      FieldName = 'TELEFONOS'
      BlobType = ftMemo
    end
    object QPacientesCORREO: TStringField
      FieldName = 'CORREO'
      Size = 50
    end
    object QPacientesDIRECCION: TMemoField
      FieldName = 'DIRECCION'
      BlobType = ftMemo
    end
    object QPacientesSEXO: TStringField
      FieldName = 'SEXO'
      Size = 50
    end
    object QPacientesESCOLARIDAD: TStringField
      FieldName = 'ESCOLARIDAD'
      Size = 50
    end
    object QPacientesESTADO_CIVIL: TStringField
      FieldName = 'ESTADO_CIVIL'
      Size = 100
    end
    object QPacientesOCUPACION: TStringField
      FieldName = 'OCUPACION'
      Size = 255
    end
    object QPacientesCOMENTARIOS: TMemoField
      FieldName = 'COMENTARIOS'
      BlobType = ftMemo
    end
    object QPacientesFECHA_DE_CREADO: TDateField
      FieldName = 'FECHA_DE_CREADO'
    end
    object QPacientesMEDICO: TStringField
      FieldName = 'MEDICO'
      Size = 100
    end
  end
  object DSPacientes: TUniDataSource
    DataSet = QPacientes
    Left = 96
    Top = 176
  end
  object QInsertarReseta: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'INSERT INTO `PACIENTES_RECETAS` '
      '('
      '`PACIENTES_RECETAS`.`NOMBRE`,'
      '`PACIENTES_RECETAS`.`PRIMER_APELLIDO`,'
      '`PACIENTES_RECETAS`.`SEGUNDO_APELLIDO`,'
      '`PACIENTES_RECETAS`.`CODIGO_PACIENTE`,'
      '`PACIENTES_RECETAS`.`TIPO`,'
      '`PACIENTES_RECETAS`.`SEXO`,'
      '`PACIENTES_RECETAS`.`PESO`,'
      '`PACIENTES_RECETAS`.`TALLA`,'
      '`PACIENTES_RECETAS`.`TA`,'
      '`PACIENTES_RECETAS`.`TEMPERATURA`,'
      '`PACIENTES_RECETAS`.`FECHA`,'
      '`PACIENTES_RECETAS`.`DOCTOR`,'
      '`PACIENTES_RECETAS`.`RECOMENDACIONES`,'
      '`PACIENTES_RECETAS`.`EDAD`'
      ''
      ')'
      'VALUES'
      '('
      '  :NOMBRE,'
      '  :PRIMER_APELLIDO,'
      '  :SEGUNDO_APELLIDO,'
      '  :CODIGO_PACIENTE,'
      '  :TIPO,'
      '  :SEXO,'
      '  :PESO,'
      '  :TALLA,'
      '  :TA,'
      '  :TEMPERATURA,'
      '  :FECHA,'
      '  :DOCTOR,'
      '  :RECOMENDACIONES,'
      '  :EDAD'
      ');'
      '')
    Left = 280
    Top = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NOMBRE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PRIMER_APELLIDO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'SEGUNDO_APELLIDO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CODIGO_PACIENTE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TIPO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'SEXO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PESO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TALLA'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TA'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TEMPERATURA'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FECHA'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DOCTOR'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'RECOMENDACIONES'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'EDAD'
        Value = nil
      end>
  end
  object QRecetas: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'SELECT * '
      'FROM  `PACIENTES_RECETAS`'
      'WHERE `PACIENTES_RECETAS`.`CODIGO_PACIENTE` = :CODIGO  AND'
      '      `PACIENTES_RECETAS`.`DOCTOR` = :DOCTOR;'
      '')
    Left = 504
    Top = 496
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODIGO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DOCTOR'
        Value = nil
      end>
    object QRecetasCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object QRecetasCODIGO_PACIENTE: TIntegerField
      FieldName = 'CODIGO_PACIENTE'
    end
    object QRecetasNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 100
    end
    object QRecetasPRIMER_APELLIDO: TStringField
      FieldName = 'PRIMER_APELLIDO'
      Size = 50
    end
    object QRecetasSEGUNDO_APELLIDO: TStringField
      FieldName = 'SEGUNDO_APELLIDO'
      Size = 50
    end
    object QRecetasEDAD: TStringField
      FieldName = 'EDAD'
    end
    object QRecetasSEXO: TStringField
      FieldName = 'SEXO'
    end
    object QRecetasPESO: TStringField
      FieldName = 'PESO'
    end
    object QRecetasTALLA: TStringField
      FieldName = 'TALLA'
    end
    object QRecetasTA: TStringField
      FieldName = 'TA'
      Size = 255
    end
    object QRecetasTEMPERATURA: TStringField
      FieldName = 'TEMPERATURA'
    end
    object QRecetasFECHA: TDateField
      FieldName = 'FECHA'
    end
    object QRecetasDOCTOR: TStringField
      FieldName = 'DOCTOR'
      Size = 100
    end
    object QRecetasRECOMENDACIONES: TMemoField
      FieldName = 'RECOMENDACIONES'
      BlobType = ftMemo
    end
    object QRecetasTIPO: TStringField
      FieldName = 'TIPO'
      Size = 255
    end
  end
  object DSResetas: TUniDataSource
    DataSet = QRecetas
    Left = 504
    Top = 552
  end
  object QInsertarLaboratorio: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'INSERT INTO `PACIENTES_LABORATORIOS` '
      '('
      '`PACIENTES_LABORATORIOS`.`NOMBRE`,'
      '`PACIENTES_LABORATORIOS`.`PRIMER_APELLIDO`,'
      '`PACIENTES_LABORATORIOS`.`SEGUNDO_APELLIDO`,'
      '`PACIENTES_LABORATORIOS`.`CODIGO_PACIENTE`,'
      '`PACIENTES_LABORATORIOS`.`TIPO`,'
      '`PACIENTES_LABORATORIOS`.`EXAMEN_REALIZADO`,'
      '`PACIENTES_LABORATORIOS`.`FECHA`,'
      '`PACIENTES_LABORATORIOS`.`DOCTOR`'
      ''
      ')'
      'VALUES'
      '('
      '  :NOMBRE,'
      '  :PRIMER_APELLIDO,'
      '  :SEGUNDO_APELLIDO,'
      '  :CODIGO_PACIENTE,'
      '  :TIPO,'
      '  :EXAMEN_REALIZADO,'
      '  :FECHA,'
      '  :DOCTOR'
      ');'
      '')
    Left = 376
    Top = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NOMBRE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PRIMER_APELLIDO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'SEGUNDO_APELLIDO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CODIGO_PACIENTE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TIPO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'EXAMEN_REALIZADO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FECHA'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DOCTOR'
        Value = nil
      end>
  end
  object QLaboratorios: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'SELECT * '
      'FROM  `PACIENTES_LABORATORIOS`'
      'WHERE `PACIENTES_LABORATORIOS`.`CODIGO_PACIENTE` = :CODIGO AND'
      '      `PACIENTES_LABORATORIOS`.`DOCTOR` = :DOCTOR;')
    Left = 432
    Top = 496
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODIGO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DOCTOR'
        Value = nil
      end>
    object QLaboratoriosCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object QLaboratoriosCODIGO_PACIENTE: TIntegerField
      FieldName = 'CODIGO_PACIENTE'
    end
    object QLaboratoriosNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 50
    end
    object QLaboratoriosPRIMER_APELLIDO: TStringField
      FieldName = 'PRIMER_APELLIDO'
      Size = 50
    end
    object QLaboratoriosSEGUNDO_APELLIDO: TStringField
      FieldName = 'SEGUNDO_APELLIDO'
      Size = 50
    end
    object QLaboratoriosTIPO: TStringField
      FieldName = 'TIPO'
      Size = 50
    end
    object QLaboratoriosEXAMEN_REALIZADO: TStringField
      FieldName = 'EXAMEN_REALIZADO'
      Size = 255
    end
    object QLaboratoriosFECHA: TDateField
      FieldName = 'FECHA'
    end
    object QLaboratoriosRESULTADO: TStringField
      FieldName = 'RESULTADO'
      Size = 255
    end
    object QLaboratoriosDOCTOR: TStringField
      FieldName = 'DOCTOR'
      Size = 100
    end
  end
  object DSLaboratorios: TUniDataSource
    DataSet = QLaboratorios
    Left = 432
    Top = 552
  end
  object QInsertarConsulta: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'INSERT INTO `PACIENTES_CONSULTAS` '
      '('
      ''
      '`PACIENTES_CONSULTAS` .`CODIGO_PACIENTE`,'
      '`PACIENTES_CONSULTAS` .`NOMBRE`,'
      '`PACIENTES_CONSULTAS` .`PRIMER_APELLIDO`,'
      '`PACIENTES_CONSULTAS` .`SEGUNDO_APELLIDO`,'
      '`PACIENTES_CONSULTAS` .`TIPO`,'
      '`PACIENTES_CONSULTAS` .`MOTIVO_DE_CONSULTA`,'
      '`PACIENTES_CONSULTAS` .`SEXO`,'
      '`PACIENTES_CONSULTAS` .`PULSO`,'
      '`PACIENTES_CONSULTAS` .`TEMPERATURA`,'
      '`PACIENTES_CONSULTAS` .`TA`,'
      '`PACIENTES_CONSULTAS` .`PESO`,'
      '`PACIENTES_CONSULTAS` .`TALLA`,'
      '`PACIENTES_CONSULTAS` .`IMC`,'
      '`PACIENTES_CONSULTAS` .`DATOS_POSITIVOS_EXAMEN_FISICO`,'
      '`PACIENTES_CONSULTAS` .`ESTUDIOS_COMPLEMENTARIOS`,'
      '`PACIENTES_CONSULTAS` .`IMPRESION_DIAGNOSTICA`,'
      '`PACIENTES_CONSULTAS` .`TRATAMIENTO`,'
      '`PACIENTES_CONSULTAS` .`OBSERVACIONES`,'
      '`PACIENTES_CONSULTAS` .`FECHA`,'
      '`PACIENTES_CONSULTAS` .`DOCTOR`,'
      '`PACIENTES_CONSULTAS` .`EDAD`,'
      ''
      '`PACIENTES_CONSULTAS` .`TABAQUISMO`,'
      '`PACIENTES_CONSULTAS` .`ALCOHOLISMO`,'
      '`PACIENTES_CONSULTAS` .`TIPO_DE_SANGRE`,'
      '`PACIENTES_CONSULTAS` .`RH`,'
      '`PACIENTES_CONSULTAS` .`APP`,'
      '`PACIENTES_CONSULTAS` .`APF`,'
      '`PACIENTES_CONSULTAS` .`ALERGIAS`,'
      '`PACIENTES_CONSULTAS` .`HISTORIA_DE_LA_ENFERMEDAD_ACTUAL`'
      ''
      ''
      ')'
      'VALUES'
      '( '
      ':CODIGO_PACIENTE,  '
      '  :NOMBRE,'
      '  :PRIMER_APELLIDO,'
      '  :SEGUNDO_APELLIDO, '
      '  :TIPO,'
      '  :MOTIVO_DE_CONSULTA,'
      '  :SEXO,'
      '  :PULSO,'
      '  :TEMPERATURA,'
      '  :TA, '
      '  :PESO,'
      '  :TALLA,'
      '  :IMC,'
      '  :DATOS_POSITIVOS_EXAMEN_FISICO,'
      '  :ESTUDIOS_COMPLEMENTARIOS,'
      '  :IMPRESION_DIAGNOSTICA,'
      '  :TRATAMIENTO,'
      '  :OBSERVACIONES,'
      '  :FECHA,'
      '  :DOCTOR,'
      '  :EDAD,'
      '  :TABAQUISMO,'
      '  :ALCOHOLISMO,'
      '  :TIPO_DE_SANGRE,'
      '  :RH,'
      '  :APP,'
      '  :APF,'
      '  :ALERGIAS,'
      '  :HISTORIA_DE_LA_ENFERMEDAD_ACTUAL'
      ');'
      '')
    Left = 488
    Top = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODIGO_PACIENTE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NOMBRE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PRIMER_APELLIDO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'SEGUNDO_APELLIDO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TIPO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'MOTIVO_DE_CONSULTA'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'SEXO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PULSO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TEMPERATURA'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TA'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PESO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TALLA'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'IMC'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DATOS_POSITIVOS_EXAMEN_FISICO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ESTUDIOS_COMPLEMENTARIOS'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'IMPRESION_DIAGNOSTICA'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TRATAMIENTO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'OBSERVACIONES'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FECHA'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DOCTOR'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'EDAD'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TABAQUISMO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ALCOHOLISMO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TIPO_DE_SANGRE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'RH'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'APP'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'APF'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ALERGIAS'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'HISTORIA_DE_LA_ENFERMEDAD_ACTUAL'
        Value = nil
      end>
  end
  object QConsutas: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'SELECT * '
      'FROM  `PACIENTES_CONSULTAS`'
      'WHERE `PACIENTES_CONSULTAS`.`CODIGO_PACIENTE` = :CODIGO AND'
      '      `PACIENTES_CONSULTAS`.`DOCTOR` = :DOCTOR;')
    Left = 352
    Top = 488
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODIGO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DOCTOR'
        Value = nil
      end>
    object QConsutasCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object QConsutasCODIGO_PACIENTE: TIntegerField
      FieldName = 'CODIGO_PACIENTE'
    end
    object QConsutasNOMBRE: TStringField
      FieldName = 'NOMBRE'
    end
    object QConsutasPRIMER_APELLIDO: TStringField
      FieldName = 'PRIMER_APELLIDO'
    end
    object QConsutasSEGUNDO_APELLIDO: TStringField
      FieldName = 'SEGUNDO_APELLIDO'
    end
    object QConsutasTIPO: TStringField
      FieldName = 'TIPO'
      Size = 50
    end
    object QConsutasEDAD: TIntegerField
      FieldName = 'EDAD'
    end
    object QConsutasMOTIVO_DE_CONSULTA: TMemoField
      FieldName = 'MOTIVO_DE_CONSULTA'
      BlobType = ftMemo
    end
    object QConsutasSEXO: TStringField
      FieldName = 'SEXO'
      Size = 10
    end
    object QConsutasPULSO: TStringField
      FieldName = 'PULSO'
      Size = 10
    end
    object QConsutasTEMPERATURA: TStringField
      FieldName = 'TEMPERATURA'
      Size = 10
    end
    object QConsutasTA: TStringField
      FieldName = 'TA'
      Size = 15
    end
    object QConsutasPESO: TStringField
      FieldName = 'PESO'
      Size = 10
    end
    object QConsutasTALLA: TStringField
      FieldName = 'TALLA'
      Size = 10
    end
    object QConsutasIMC: TStringField
      FieldName = 'IMC'
      Size = 10
    end
    object QConsutasDATOS_POSITIVOS_EXAMEN_FISICO: TMemoField
      FieldName = 'DATOS_POSITIVOS_EXAMEN_FISICO'
      BlobType = ftMemo
    end
    object QConsutasESTUDIOS_COMPLEMENTARIOS: TMemoField
      FieldName = 'ESTUDIOS_COMPLEMENTARIOS'
      BlobType = ftMemo
    end
    object QConsutasIMPRESION_DIAGNOSTICA: TMemoField
      FieldName = 'IMPRESION_DIAGNOSTICA'
      BlobType = ftMemo
    end
    object QConsutasTRATAMIENTO: TMemoField
      FieldName = 'TRATAMIENTO'
      BlobType = ftMemo
    end
    object QConsutasOBSERVACIONES: TMemoField
      FieldName = 'OBSERVACIONES'
      BlobType = ftMemo
    end
    object QConsutasTABAQUISMO: TStringField
      FieldName = 'TABAQUISMO'
      Size = 5
    end
    object QConsutasALCOHOLISMO: TStringField
      FieldName = 'ALCOHOLISMO'
      Size = 5
    end
    object QConsutasTIPO_DE_SANGRE: TStringField
      FieldName = 'TIPO_DE_SANGRE'
      Size = 5
    end
    object QConsutasRH: TStringField
      FieldName = 'RH'
      Size = 2
    end
    object QConsutasAPP: TMemoField
      FieldName = 'APP'
      BlobType = ftMemo
    end
    object QConsutasAPF: TMemoField
      FieldName = 'APF'
      BlobType = ftMemo
    end
    object QConsutasALERGIAS: TMemoField
      FieldName = 'ALERGIAS'
      BlobType = ftMemo
    end
    object QConsutasDOCTOR: TStringField
      FieldName = 'DOCTOR'
      Size = 50
    end
    object QConsutasFECHA: TDateField
      FieldName = 'FECHA'
    end
    object QConsutasHISTORIA_DE_LA_ENFERMEDAD_ACTUAL: TMemoField
      FieldName = 'HISTORIA_DE_LA_ENFERMEDAD_ACTUAL'
      BlobType = ftMemo
    end
  end
  object DSConsutas: TUniDataSource
    DataSet = QConsutas
    Left = 352
    Top = 544
  end
  object QInsumos: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'SELECT * '
      'FROM  `productos_vencimiento_consulta`;')
    Left = 576
    Top = 56
    object QInsumosCODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
    end
    object QInsumosCODIGO_PRODUCTO: TIntegerField
      FieldName = 'CODIGO_PRODUCTO'
    end
    object QInsumosNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 100
    end
    object QInsumosTIPO: TStringField
      FieldName = 'TIPO'
      Size = 100
    end
    object QInsumosPROVEEDOR: TStringField
      FieldName = 'PROVEEDOR'
      Size = 100
    end
    object QInsumosPRESENTACION: TStringField
      FieldName = 'PRESENTACION'
      Size = 100
    end
    object QInsumosLABORATORIO: TStringField
      FieldName = 'LABORATORIO'
      Size = 100
    end
    object QInsumosLOTE: TStringField
      FieldName = 'LOTE'
      Size = 100
    end
    object QInsumosFECHA_DE_VENCIMIENTO: TDateField
      FieldName = 'FECHA_DE_VENCIMIENTO'
    end
    object QInsumosPRECIO_VENTA_POR_UNIDAD: TIntegerField
      FieldName = 'PRECIO_VENTA_POR_UNIDAD'
    end
    object QInsumosPRECIO_COSTO_POR_UNIDAD: TIntegerField
      FieldName = 'PRECIO_COSTO_POR_UNIDAD'
    end
  end
  object DSInsumos: TUniDataSource
    DataSet = QInsumos
    Left = 576
    Top = 112
  end
  object QBuscarPrecioVenta: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'SELECT `SERVICIOS`.`PRECIO_DE_VENTA` '
      'FROM  `SERVICIOS`'
      'WHERE `SERVICIOS`.`NOMBRE` = :NOMBRE;')
    Left = 664
    Top = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NOMBRE'
        Value = nil
      end>
    object QBuscarPrecioVentaPRECIO_DE_VENTA: TIntegerField
      FieldName = 'PRECIO_DE_VENTA'
    end
  end
  object DSBuscarPrecioVenta: TUniDataSource
    DataSet = QBuscarPrecioVenta
    Left = 664
    Top = 120
  end
  object QInsertarVentaProv: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'Insert Into `Venta_provicional_medicamentos`'
      '('
      '`Venta_provicional_medicamentos`.`CODIGO_PACIENTE`,'
      '`Venta_provicional_medicamentos`.`CODIGO_PRODUCTO`,'
      '`Venta_provicional_medicamentos`.`CODIGO_MEDICAMENTO`,'
      '`Venta_provicional_medicamentos`.`NOMBRE`,'
      '`Venta_provicional_medicamentos`.`SERVICIO`,'
      '`Venta_provicional_medicamentos`.`TIPO`,'
      '`Venta_provicional_medicamentos`.`LOTE`,'
      '`Venta_provicional_medicamentos`.`PRESENTACION`,'
      '`Venta_provicional_medicamentos`.`LABORATORIO`,'
      '`Venta_provicional_medicamentos`.`PROVEEDOR`,'
      '`Venta_provicional_medicamentos`.`EXISTENCIA`,'
      '`Venta_provicional_medicamentos`.`FECHA_DE_VENCIMIENTO`,'
      '`Venta_provicional_medicamentos`.`PRECIO_COSTO_POR_UNIDAD`,'
      '`Venta_provicional_medicamentos`.`PRECIO_VENTA_POR_UNIDAD`,'
      '`Venta_provicional_medicamentos`.`PRECIO_TOTAL`,'
      '`Venta_provicional_medicamentos`.`ENTRADA`,'
      '`Venta_provicional_medicamentos`.`FECHA_DE_ENTRADA`,'
      '`Venta_provicional_medicamentos`.`SALIDA`,'
      '`Venta_provicional_medicamentos`.`FECHA_DE_SALIDA`,'
      '`Venta_provicional_medicamentos`.`QUEDA`,'
      '`Venta_provicional_medicamentos`.`ULTIMO_REG`'
      ')'
      'Values '
      '('
      ':CODIGO_PACIENTE,'
      ':CODIGO_PRODUCTO,'
      ':CODIGO_MEDICAMENTO,'
      ':NOMBRE,'
      ':SERVICIO,'
      ':TIPO,'
      ':LOTE,'
      ':PRESENTACION,'
      ':LABORATORIO,'
      ':PROVEEDOR,'
      ':EXISTENCIA,'
      ':FECHA_DE_VENCIMIENTO,'
      ':PRECIO_COSTO_POR_UNIDAD,'
      ':PRECIO_VENTA_POR_UNIDAD,'
      ':PRECIO_TOTAL,'
      ':ENTRADA,'
      ':FECHA_DE_ENTRADA,'
      ':SALIDA,'
      ':FECHA_DE_SALIDA,'
      ':QUEDA,'
      ':ULTIMO_REG'
      ');'
      ''
      '')
    Left = 736
    Top = 176
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODIGO_PACIENTE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CODIGO_PRODUCTO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CODIGO_MEDICAMENTO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NOMBRE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'SERVICIO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TIPO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'LOTE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PRESENTACION'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'LABORATORIO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PROVEEDOR'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'EXISTENCIA'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FECHA_DE_VENCIMIENTO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PRECIO_COSTO_POR_UNIDAD'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PRECIO_VENTA_POR_UNIDAD'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PRECIO_TOTAL'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ENTRADA'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FECHA_DE_ENTRADA'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'SALIDA'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FECHA_DE_SALIDA'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'QUEDA'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ULTIMO_REG'
        Value = nil
      end>
  end
  object QVentaProvicionalTodos: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'SELECT * FROM `Venta_provicional_medicamentos` ;')
    Left = 738
    Top = 240
    object QVentaProvicionalTodosCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object QVentaProvicionalTodosCODIGO_FARMACIA: TIntegerField
      FieldName = 'CODIGO_FARMACIA'
    end
    object QVentaProvicionalTodosCODIGO_PACIENTE: TIntegerField
      FieldName = 'CODIGO_PACIENTE'
    end
    object QVentaProvicionalTodosCODIGO_MEDICAMENTO: TIntegerField
      FieldName = 'CODIGO_MEDICAMENTO'
    end
    object QVentaProvicionalTodosNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 100
    end
    object QVentaProvicionalTodosTIPO: TStringField
      FieldName = 'TIPO'
      Size = 100
    end
    object QVentaProvicionalTodosLOTE: TStringField
      FieldName = 'LOTE'
      Size = 100
    end
    object QVentaProvicionalTodosPRESENTACION: TStringField
      FieldName = 'PRESENTACION'
      Size = 100
    end
    object QVentaProvicionalTodosLABORATORIO: TStringField
      FieldName = 'LABORATORIO'
      Size = 100
    end
    object QVentaProvicionalTodosPROVEEDOR: TStringField
      FieldName = 'PROVEEDOR'
      Size = 100
    end
    object QVentaProvicionalTodosEXISTENCIA: TIntegerField
      FieldName = 'EXISTENCIA'
    end
    object QVentaProvicionalTodosFECHA_DE_VENCIMIENTO: TDateField
      FieldName = 'FECHA_DE_VENCIMIENTO'
    end
    object QVentaProvicionalTodosPRECIO_COSTO_POR_UNIDAD: TIntegerField
      FieldName = 'PRECIO_COSTO_POR_UNIDAD'
    end
    object QVentaProvicionalTodosPRECIO_VENTA_POR_UNIDAD: TIntegerField
      FieldName = 'PRECIO_VENTA_POR_UNIDAD'
    end
    object QVentaProvicionalTodosPRECIO_TOTAL: TIntegerField
      FieldName = 'PRECIO_TOTAL'
    end
    object QVentaProvicionalTodosENTRADA: TIntegerField
      FieldName = 'ENTRADA'
    end
    object QVentaProvicionalTodosFECHA_DE_ENTRADA: TDateField
      FieldName = 'FECHA_DE_ENTRADA'
    end
    object QVentaProvicionalTodosSALIDA: TIntegerField
      FieldName = 'SALIDA'
    end
    object QVentaProvicionalTodosFECHA_DE_SALIDA: TDateField
      FieldName = 'FECHA_DE_SALIDA'
    end
    object QVentaProvicionalTodosULTIMO_REG: TIntegerField
      FieldName = 'ULTIMO_REG'
    end
    object QVentaProvicionalTodosQUEDA: TIntegerField
      FieldName = 'QUEDA'
    end
    object QVentaProvicionalTodosCODIGO_PRODUCTO: TIntegerField
      FieldName = 'CODIGO_PRODUCTO'
    end
    object QVentaProvicionalTodosSERVICIO: TStringField
      FieldName = 'SERVICIO'
      Size = 100
    end
  end
  object DSVentaProvicionalTodos: TUniDataSource
    DataSet = QVentaProvicionalTodos
    Left = 738
    Top = 288
  end
  object QBuscarExistencia: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'SELECT  `productos_en_CONSULTA`.`ENTRADA`,'
      '        `productos_en_CONSULTA`.`SALIDA`'
      'FROM    `productos_en_CONSULTA`'
      'WHERE '
      '        `productos_en_CONSULTA`.`NOMBRE` = :NOMBRE  AND'
      
        '        `productos_en_CONSULTA`.`PRESENTACION` = :PRESENTACION A' +
        'ND'
      
        '        `productos_en_CONSULTA`.`LABORATORIO` = :LABORATORIO  AN' +
        'D'
      '        `productos_en_CONSULTA`.`LOTE` = :LOTE  AND'
      '        `productos_en_CONSULTA`.`PROVEEDOR` = :PROVEEDOR  AND'
      
        '        `productos_en_CONSULTA`.`FECHA_DE_VENCIMIENTO` = :FECHA_' +
        'DE_VENCIMIENTO ;'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      '')
    Left = 739
    Top = 350
    ParamData = <
      item
        DataType = ftString
        Name = 'NOMBRE'
        Value = ''
      end
      item
        DataType = ftUnknown
        Name = 'PRESENTACION'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'LABORATORIO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'LOTE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PROVEEDOR'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FECHA_DE_VENCIMIENTO'
        Value = nil
      end>
    object QBuscarExistenciaENTRADA: TIntegerField
      FieldName = 'ENTRADA'
    end
    object QBuscarExistenciaSALIDA: TIntegerField
      FieldName = 'SALIDA'
    end
  end
  object QUltimoTemp: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'SELECT  *'
      ' FROM  `venta_provicional_medicamentos`  '
      ' WHERE `venta_provicional_medicamentos`.`Ultimo_reg`=1 and '
      '       `venta_provicional_medicamentos`.`NOMBRE`=:NOMBRE ;')
    Left = 736
    Top = 408
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NOMBRE'
        Value = nil
      end>
    object QUltimoTempCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object QUltimoTempCODIGO_FARMACIA: TIntegerField
      FieldName = 'CODIGO_FARMACIA'
    end
    object QUltimoTempCODIGO_MEDICAMENTO: TIntegerField
      FieldName = 'CODIGO_MEDICAMENTO'
    end
    object QUltimoTempNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 100
    end
    object QUltimoTempTIPO: TStringField
      FieldName = 'TIPO'
      Size = 100
    end
    object QUltimoTempLOTE: TStringField
      FieldName = 'LOTE'
      Size = 100
    end
    object QUltimoTempPRESENTACION: TStringField
      FieldName = 'PRESENTACION'
      Size = 100
    end
    object QUltimoTempLABORATORIO: TStringField
      FieldName = 'LABORATORIO'
      Size = 100
    end
    object QUltimoTempPROVEEDOR: TStringField
      FieldName = 'PROVEEDOR'
      Size = 100
    end
    object QUltimoTempEXISTENCIA: TIntegerField
      FieldName = 'EXISTENCIA'
    end
    object QUltimoTempFECHA_DE_VENCIMIENTO: TDateField
      FieldName = 'FECHA_DE_VENCIMIENTO'
    end
    object QUltimoTempPRECIO_COSTO_POR_UNIDAD: TIntegerField
      FieldName = 'PRECIO_COSTO_POR_UNIDAD'
    end
    object QUltimoTempPRECIO_VENTA_POR_UNIDAD: TIntegerField
      FieldName = 'PRECIO_VENTA_POR_UNIDAD'
    end
    object QUltimoTempPRECIO_TOTAL: TIntegerField
      FieldName = 'PRECIO_TOTAL'
    end
    object QUltimoTempENTRADA: TIntegerField
      FieldName = 'ENTRADA'
    end
    object QUltimoTempFECHA_DE_ENTRADA: TDateField
      FieldName = 'FECHA_DE_ENTRADA'
    end
    object QUltimoTempSALIDA: TIntegerField
      FieldName = 'SALIDA'
    end
    object QUltimoTempFECHA_DE_SALIDA: TDateField
      FieldName = 'FECHA_DE_SALIDA'
    end
    object QUltimoTempULTIMO_REG: TIntegerField
      FieldName = 'ULTIMO_REG'
    end
    object QUltimoTempQUEDA: TIntegerField
      FieldName = 'QUEDA'
    end
  end
  object QUpdateTemp: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'UPDATE `venta_provicional_medicamentos`'
      'SET    `venta_provicional_medicamentos`.`ULTIMO_REG`= 0'
      'WHERE  `venta_provicional_medicamentos`.`CODIGO` = :PCODIGO;')
    Left = 736
    Top = 456
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PCODIGO'
        Value = nil
      end>
  end
  object QCancelar: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'DELETE  `VENTA_PROVICIONAL_MEDICAMENTOS`.* '
      'FROM `VENTA_PROVICIONAL_MEDICAMENTOS`;')
    Left = 736
    Top = 512
  end
  object QInsertarVenta: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'Insert Into `venta_de_productos` '
      ' ('
      '`venta_de_productos`.`CODIGO_PRODUCTO`,'
      '`venta_de_productos`.`NOMBRE`,'
      '`venta_de_productos`.`TIPO`,'
      '`venta_de_productos`.`PROVEEDOR`,'
      '`venta_de_productos`.`PRESENTACION`,'
      '`venta_de_productos`.`LABORATORIO`,'
      '`venta_de_productos`.`LOTE`,'
      '`venta_de_productos`.`FECHA_DE_VENCIMIENTO`,'
      '`venta_de_productos`.`PRECIO_COSTO_POR_UNIDAD`,'
      '`venta_de_productos`.`PRECIO_VENTA_POR_UNIDAD`,'
      '`venta_de_productos`.`CANTIDAD_VENDIDO`,'
      '`venta_de_productos`.`PRECIO_TOTAL`,'
      '`venta_de_productos`.`FECHA_DE_VENTA`,'
      '`venta_de_productos`.`HORA_DE_VENTA`,'
      '`venta_de_productos`.`VENDEDOR`,'
      '`venta_de_productos`.`NOMBRE_PACIENTE`,'
      '`venta_de_productos`.`PRIMER_APELLIDO`,'
      '`venta_de_productos`.`SEGUNDO_APELLIDO`'
      ') '
      ' Values '
      '('
      ':CODIGO_PRODUCTO,'
      ':NOMBRE,'
      ':TIPO,'
      ':PROVEEDOR,'
      ':PRESENTACION,'
      ':LABORATORIO,'
      ':LOTE,'
      ':FECHA_DE_VENCIMIENTO,'
      ':PRECIO_COSTO_POR_UNIDAD,'
      ':PRECIO_VENTA_POR_UNIDAD,'
      ':CANTIDAD_VENDIDO,'
      ':PRECIO_TOTAL,'
      ':FECHA_DE_VENTA,'
      ':HORA_DE_VENTA,'
      ':VENDEDOR,'
      ':NOMBRE_PACIENTE,'
      ':PRIMER_APELLIDO,'
      ':SEGUNDO_APELLIDO'
      ''
      ');'
      '')
    Left = 488
    Top = 232
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODIGO_PRODUCTO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NOMBRE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TIPO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PROVEEDOR'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PRESENTACION'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'LABORATORIO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'LOTE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FECHA_DE_VENCIMIENTO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PRECIO_COSTO_POR_UNIDAD'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PRECIO_VENTA_POR_UNIDAD'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CANTIDAD_VENDIDO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PRECIO_TOTAL'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FECHA_DE_VENTA'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'HORA_DE_VENTA'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'VENDEDOR'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NOMBRE_PACIENTE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PRIMER_APELLIDO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'SEGUNDO_APELLIDO'
        Value = nil
      end>
  end
  object QAgregarProdConsulta: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'Insert '
      'Into `productos_en_consulta` '
      '('
      '`productos_en_consulta`.`CODIGO_PRODUCTO`,'
      '`productos_en_consulta`.`CODIGO_PACIENTE`,'
      '`productos_en_consulta`.`NOMBRE`,'
      '`productos_en_consulta`.`TIPO`,'
      '`productos_en_consulta`.`PROVEEDOR`,'
      '`productos_en_consulta`.`PRESENTACION`,'
      '`productos_en_consulta`.`LABORATORIO`,'
      '`productos_en_consulta`.`LOTE`,'
      '`productos_en_consulta`.`FECHA_DE_VENCIMIENTO`,'
      ''
      '`productos_en_consulta`.`ENTRADA`,'
      '`productos_en_consulta`.`FECHA_DE_ENTRADA`,'
      '`productos_en_consulta`.`SALIDA`,'
      '`productos_en_consulta`.`FECHA_DE_SALIDA`,'
      '`productos_en_consulta`.`PRECIO_COSTO_POR_UNIDAD`,'
      '`productos_en_consulta`.`PRECIO_VENTA_POR_UNIDAD`,'
      '`productos_en_consulta`.`OPERACION`,'
      '`productos_en_consulta`.`FECHA_DE_LA_OPERACION`'
      ') '
      'Values '
      '('
      ':CODIGO_PRODUCTO,'
      ':CODIGO_PACIENTE,'
      ':NOMBRE,'
      ':TIPO,'
      ':PROVEEDOR,'
      ':PRESENTACION,'
      ':LABORATORIO,'
      ':LOTE,'
      ':FECHA_DE_VENCIMIENTO,'
      ':ENTRADA,'
      ':FECHA_DE_ENTRADA,'
      ':SALIDA,'
      ':FECHA_DE_SALIDA,'
      ':PRECIO_COSTO_POR_UNIDAD,'
      ':PRECIO_VENTA_POR_UNIDAD,'
      ':OPERACION,'
      ':FECHA_DE_LA_OPERACION'
      ');')
    Left = 599
    Top = 183
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODIGO_PRODUCTO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CODIGO_PACIENTE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NOMBRE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TIPO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PROVEEDOR'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PRESENTACION'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'LABORATORIO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'LOTE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FECHA_DE_VENCIMIENTO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ENTRADA'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FECHA_DE_ENTRADA'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'SALIDA'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FECHA_DE_SALIDA'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PRECIO_COSTO_POR_UNIDAD'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PRECIO_VENTA_POR_UNIDAD'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'OPERACION'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FECHA_DE_LA_OPERACION'
        Value = nil
      end>
  end
  object QProduc_Venc_Cons: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'SELECT * '
      'FROM  `productos_vencimiento_consulta`'
      
        'WHERE `productos_vencimiento_consulta`.`CODIGO_PRODUCTO`  = :PCO' +
        'DIGO  AND '
      
        '      `productos_vencimiento_consulta`.`PROVEEDOR` = :PPROVEEDOR' +
        ' AND'
      
        '      `productos_vencimiento_consulta`.`PRESENTACION` = :PRESENT' +
        'ACION AND'
      
        '      `productos_vencimiento_consulta`.`LABORATORIO` = :LABORATO' +
        'RIO AND'
      '      `productos_vencimiento_consulta`.`LOTE` = :LOTE AND'
      
        '      `productos_vencimiento_consulta`.`FECHA_DE_VENCIMIENTO` = ' +
        ':FECHA_DE_VENCIMIENTO AND'
      ''
      
        '      `productos_vencimiento_consulta`.`PRECIO_VENTA_POR_UNIDAD`' +
        ' = :PPRECIOVENTA AND'
      
        '      `productos_vencimiento_consulta`.`PRECIO_COSTO_POR_UNIDAD`' +
        ' = :PPRECIOCOSTO AND'
      '      `productos_vencimiento_consulta`.`TIPO` = :PTIPO ;'
      '      '
      '')
    Left = 598
    Top = 239
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PCODIGO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PPROVEEDOR'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PRESENTACION'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'LABORATORIO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'LOTE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FECHA_DE_VENCIMIENTO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PPRECIOVENTA'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PPRECIOCOSTO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PTIPO'
        Value = nil
      end>
    object QProduc_Venc_ConsCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object QProduc_Venc_ConsCODIGO_PRODUCTO: TIntegerField
      FieldName = 'CODIGO_PRODUCTO'
    end
    object QProduc_Venc_ConsNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 100
    end
    object QProduc_Venc_ConsTIPO: TStringField
      FieldName = 'TIPO'
      Size = 100
    end
    object QProduc_Venc_ConsPROVEEDOR: TStringField
      FieldName = 'PROVEEDOR'
      Size = 100
    end
    object QProduc_Venc_ConsPRECIO_VENTA_POR_UNIDAD: TIntegerField
      FieldName = 'PRECIO_VENTA_POR_UNIDAD'
    end
    object QProduc_Venc_ConsPRECIO_COSTO_POR_UNIDAD: TIntegerField
      FieldName = 'PRECIO_COSTO_POR_UNIDAD'
    end
  end
  object QInsertarPacientesServicios: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'Insert Into `PACIENTES_SERVICIOS`'
      '('
      '`PACIENTES_SERVICIOS`.`CODIGO_PACIENTE`,'
      '`PACIENTES_SERVICIOS`.`NOMBRE`,'
      '`PACIENTES_SERVICIOS`.`PRIMER_APELLIDO`,'
      '`PACIENTES_SERVICIOS`.`SEGUNDO_APELLIDO`,'
      '`PACIENTES_SERVICIOS`.`SERVICIO`,'
      '`PACIENTES_SERVICIOS`.`PRECIO_VENTA`,'
      '`PACIENTES_SERVICIOS`.`TIPO`,'
      '`PACIENTES_SERVICIOS`.`FECHA`,'
      '`PACIENTES_SERVICIOS`.`DOCTOR`'
      ') '
      'VALUES'
      '('
      ':CODIGO_PACIENTE,'
      ':NOMBRE,'
      ':PRIMER_APELLIDO,'
      ':SEGUNDO_APELLIDO,'
      ':SERVICIO,'
      ':PRECIO_VENTA,'
      ':TIPO,'
      ':FECHA,'
      ':DOCTOR'
      ');')
    Left = 600
    Top = 304
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODIGO_PACIENTE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NOMBRE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PRIMER_APELLIDO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'SEGUNDO_APELLIDO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'SERVICIO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PRECIO_VENTA'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TIPO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FECHA'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DOCTOR'
        Value = nil
      end>
  end
  object QServicios: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'SELECT * '
      'FROM  `PACIENTES_SERVICIOS`'
      'WHERE `PACIENTES_SERVICIOS`.`CODIGO_PACIENTE` = :CODIGO AND'
      '      `PACIENTES_SERVICIOS`.`DOCTOR` = :DOCTOR;')
    Left = 560
    Top = 496
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DOCTOR'
        Value = nil
      end>
    object QServiciosCODIGO_PACIENTE: TIntegerField
      FieldName = 'CODIGO_PACIENTE'
    end
    object QServiciosNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 50
    end
    object QServiciosPRIMER_APELLIDO: TStringField
      FieldName = 'PRIMER_APELLIDO'
      Size = 50
    end
    object QServiciosSEGUNDO_APELLIDO: TStringField
      FieldName = 'SEGUNDO_APELLIDO'
      Size = 50
    end
    object QServiciosSERVICIO: TStringField
      FieldName = 'SERVICIO'
      Size = 100
    end
    object QServiciosPRECIO_VENTA: TIntegerField
      FieldName = 'PRECIO_VENTA'
    end
    object QServiciosTIPO: TStringField
      FieldName = 'TIPO'
    end
    object QServiciosFECHA: TDateField
      FieldName = 'FECHA'
    end
    object QServiciosDOCTOR: TStringField
      FieldName = 'DOCTOR'
      Size = 100
    end
  end
  object DSServicios: TUniDataSource
    DataSet = QServicios
    Left = 560
    Top = 552
  end
  object QInsumoshist: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'SELECT * '
      'FROM  `PACIENTES_INSUMOS`'
      'WHERE `PACIENTES_INSUMOS`.`CODIGO_PACIENTE` = :CODIGO  AND'
      '      `PACIENTES_INSUMOS`.`DOCTOR` = :DOCTOR;')
    Left = 280
    Top = 488
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DOCTOR'
        Value = nil
      end>
    object QInsumoshistCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object QInsumoshistCODIGO_PRODUCTO: TIntegerField
      FieldName = 'CODIGO_PRODUCTO'
    end
    object QInsumoshistCODIGO_PACIENTE: TIntegerField
      FieldName = 'CODIGO_PACIENTE'
    end
    object QInsumoshistNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 100
    end
    object QInsumoshistTIPO: TStringField
      FieldName = 'TIPO'
      Size = 100
    end
    object QInsumoshistPROVEEDOR: TStringField
      FieldName = 'PROVEEDOR'
      Size = 100
    end
    object QInsumoshistPRECIO_VENTA_POR_UNIDAD: TIntegerField
      FieldName = 'PRECIO_VENTA_POR_UNIDAD'
    end
    object QInsumoshistFECHA: TDateField
      FieldName = 'FECHA'
    end
    object QInsumoshistDOCTOR: TStringField
      FieldName = 'DOCTOR'
      Size = 100
    end
  end
  object DSInsumoshist: TUniDataSource
    DataSet = QInsumoshist
    Left = 280
    Top = 544
  end
  object QInsertarPacientesInsumos: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'Insert '
      'Into `pacientes_insumos` '
      '('
      '`pacientes_insumos`.`CODIGO_PRODUCTO`,'
      '`pacientes_insumos`.`CODIGO_PACIENTE`,'
      '`pacientes_insumos`.`NOMBRE`,'
      '`pacientes_insumos`.`TIPO`,'
      '`pacientes_insumos`.`PROVEEDOR`,'
      '`pacientes_insumos`.`PRESENTACION`,'
      '`pacientes_insumos`.`LABORATORIO`,'
      '`pacientes_insumos`.`LOTE`,'
      ''
      '`pacientes_insumos`.`PRECIO_VENTA_POR_UNIDAD`,'
      '`pacientes_insumos`.`FECHA`,'
      '`pacientes_insumos`.`DOCTOR`'
      ') '
      'Values '
      '('
      ':CODIGO_PRODUCTO,'
      ':CODIGO_PACIENTE,'
      ':NOMBRE,'
      ':TIPO,'
      ':PROVEEDOR,'
      ':PRESENTACION,'
      ':LABORATORIO,'
      ':LOTE,'
      ':PRECIO_VENTA_POR_UNIDAD,'
      ':FECHA,'
      ':DOCTOR'
      ');')
    Left = 327
    Top = 351
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODIGO_PRODUCTO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CODIGO_PACIENTE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NOMBRE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TIPO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PROVEEDOR'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PRESENTACION'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'LABORATORIO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'LOTE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PRECIO_VENTA_POR_UNIDAD'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FECHA'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DOCTOR'
        Value = nil
      end>
  end
  object QConsulta6Meses: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'SELECT  *'
      ' FROM `productos_en_CONSULTA` '
      
        'WHERE `productos_en_CONSULTA`.`FECHA_DE_LA_OPERACION` <= :FECHA ' +
        ';')
    Left = 96
    Top = 357
    ParamData = <
      item
        DataType = ftDate
        Name = 'FECHA'
        Value = nil
      end>
    object QConsulta6MesesCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object QConsulta6MesesCODIGO_PRODUCTO: TIntegerField
      FieldName = 'CODIGO_PRODUCTO'
    end
    object QConsulta6MesesCODIGO_PACIENTE: TIntegerField
      FieldName = 'CODIGO_PACIENTE'
    end
    object QConsulta6MesesNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 100
    end
    object QConsulta6MesesTIPO: TStringField
      FieldName = 'TIPO'
      Size = 100
    end
    object QConsulta6MesesPROVEEDOR: TStringField
      FieldName = 'PROVEEDOR'
      Size = 100
    end
    object QConsulta6MesesPRESENTACION: TStringField
      FieldName = 'PRESENTACION'
      Size = 100
    end
    object QConsulta6MesesLABORATORIO: TStringField
      FieldName = 'LABORATORIO'
      Size = 100
    end
    object QConsulta6MesesLOTE: TStringField
      FieldName = 'LOTE'
      Size = 100
    end
    object QConsulta6MesesFECHA_DE_VENCIMIENTO: TDateField
      FieldName = 'FECHA_DE_VENCIMIENTO'
    end
    object QConsulta6MesesENTRADA: TIntegerField
      FieldName = 'ENTRADA'
    end
    object QConsulta6MesesFECHA_DE_ENTRADA: TDateField
      FieldName = 'FECHA_DE_ENTRADA'
    end
    object QConsulta6MesesSALIDA: TIntegerField
      FieldName = 'SALIDA'
    end
    object QConsulta6MesesFECHA_DE_SALIDA: TDateField
      FieldName = 'FECHA_DE_SALIDA'
    end
    object QConsulta6MesesPRECIO_COSTO_POR_UNIDAD: TIntegerField
      FieldName = 'PRECIO_COSTO_POR_UNIDAD'
    end
    object QConsulta6MesesPRECIO_VENTA_POR_UNIDAD: TIntegerField
      FieldName = 'PRECIO_VENTA_POR_UNIDAD'
    end
    object QConsulta6MesesOPERACION: TStringField
      FieldName = 'OPERACION'
      Size = 30
    end
    object QConsulta6MesesFECHA_DE_LA_OPERACION: TDateField
      FieldName = 'FECHA_DE_LA_OPERACION'
    end
  end
  object QAgregarProdConsultaHistorial: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'Insert Into `productos_en_consulta_historial` '
      '('
      '`productos_en_consulta_historial` .`Nombre`,'
      '`productos_en_consulta_historial` .`CODIGO_PRODUCTO`,'
      '`productos_en_consulta_historial` .`CODIGO_PACIENTE`,'
      '`productos_en_consulta_historial` .`TIPO`,'
      '`productos_en_consulta_historial` .`Entrada`,'
      '`productos_en_consulta_historial` .`Fecha_de_vencimiento`,'
      '`productos_en_consulta_historial` .`Precio_costo_por_unidad`,'
      '`productos_en_consulta_historial` .`Precio_venta_por_unidad`,'
      '`productos_en_consulta_historial` .`Fecha_de_entrada`,'
      '`productos_en_consulta_historial` .`SALIDA`,'
      '`productos_en_consulta_historial` .`FECHA_DE_SALIDA`,'
      '`productos_en_consulta_historial` .`LOTE`,'
      '`productos_en_consulta_historial` .`PRESENTACION`,'
      '`productos_en_consulta_historial` .`LABORATORIO`,'
      '`productos_en_consulta_historial` .`PROVEEDOR`,'
      '`productos_en_consulta_historial` .`FECHA_DE_LA_OPERACION`,'
      '`productos_en_consulta_historial` .`OPERACION`'
      ') '
      'Values (:Pnombre,:CODIGO_PRODUCTO,:CODIGO_PACIENTE,:Ptipo,'
      '        :PEntrada,:PFechaVencimiento,'
      '        :PPrecioCostoPorUnidad,:PPrecioVentaPorUnidad,'
      '        :PFechadeentrada,:PSALIDA,:PFECHADESALIDA,'
      '        :PLote,:PPresentacion,:PLaboratorio,'
      '        :PProveedor,:PFECHA_DE_LA_OPERACION,:OPERACION);'
      '')
    Left = 95
    Top = 417
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Pnombre'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CODIGO_PRODUCTO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CODIGO_PACIENTE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'Ptipo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PEntrada'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PFechaVencimiento'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PPrecioCostoPorUnidad'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PPrecioVentaPorUnidad'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'Pfechadeentrada'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PSALIDA'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PFECHADESALIDA'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PLote'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PPresentacion'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PLaboratorio'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PProveedor'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PFECHA_DE_LA_OPERACION'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'OPERACION'
        Value = nil
      end>
  end
  object QEliminarRegistro: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'DELETE   '
      'FROM    `productos_en_consulta` '
      'WHERE   `productos_en_consulta`.`CODIGO` = :CODIGO ;')
    Left = 96
    Top = 472
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODIGO'
        Value = nil
      end>
  end
  object DSInsumosHistoricos: TUniDataSource
    DataSet = QInsumosHistoricos
    Left = 288
    Top = 280
  end
  object QInsumosHistoricos: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'SELECT  *'
      ' FROM `productos_en_consulta_historial` '
      
        'WHERE `productos_en_consulta_historial`.`FECHA_DE_LA_OPERACION` ' +
        '>= :FECHADESDE AND'
      
        '      `productos_en_consulta_historial`.`FECHA_DE_LA_OPERACION` ' +
        '<= :FECHAHASTA ;'
      '')
    Left = 288
    Top = 232
    ParamData = <
      item
        DataType = ftDate
        Name = 'FECHADESDE'
        Value = nil
      end
      item
        DataType = ftDate
        Name = 'FECHAHASTA'
        Value = nil
      end>
    object QInsumosHistoricosCODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
    end
    object QInsumosHistoricosCODIGO_PRODUCTO: TIntegerField
      FieldName = 'CODIGO_PRODUCTO'
    end
    object QInsumosHistoricosCODIGO_PACIENTE: TIntegerField
      FieldName = 'CODIGO_PACIENTE'
    end
    object QInsumosHistoricosNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 100
    end
    object QInsumosHistoricosTIPO: TStringField
      FieldName = 'TIPO'
      Size = 100
    end
    object QInsumosHistoricosPROVEEDOR: TStringField
      FieldName = 'PROVEEDOR'
      Size = 100
    end
    object QInsumosHistoricosPRESENTACION: TStringField
      FieldName = 'PRESENTACION'
      Size = 100
    end
    object QInsumosHistoricosLABORATORIO: TStringField
      FieldName = 'LABORATORIO'
      Size = 100
    end
    object QInsumosHistoricosLOTE: TStringField
      FieldName = 'LOTE'
      Size = 100
    end
    object QInsumosHistoricosFECHA_DE_VENCIMIENTO: TDateField
      FieldName = 'FECHA_DE_VENCIMIENTO'
    end
    object QInsumosHistoricosENTRADA: TIntegerField
      FieldName = 'ENTRADA'
    end
    object QInsumosHistoricosFECHA_DE_ENTRADA: TDateField
      FieldName = 'FECHA_DE_ENTRADA'
    end
    object QInsumosHistoricosSALIDA: TIntegerField
      FieldName = 'SALIDA'
    end
    object QInsumosHistoricosFECHA_DE_SALIDA: TDateField
      FieldName = 'FECHA_DE_SALIDA'
    end
    object QInsumosHistoricosPRECIO_COSTO_POR_UNIDAD: TIntegerField
      FieldName = 'PRECIO_COSTO_POR_UNIDAD'
    end
    object QInsumosHistoricosPRECIO_VENTA_POR_UNIDAD: TIntegerField
      FieldName = 'PRECIO_VENTA_POR_UNIDAD'
    end
    object QInsumosHistoricosOPERACION: TStringField
      FieldName = 'OPERACION'
      Size = 30
    end
    object QInsumosHistoricosFECHA_DE_LA_OPERACION: TDateField
      FieldName = 'FECHA_DE_LA_OPERACION'
    end
  end
  object DSInsumosFecha: TUniDataSource
    DataSet = QInsumosFecha
    Left = 184
    Top = 176
  end
  object QInsumosFecha: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'SELECT  *'
      ' FROM `productos_en_CONSULTA` '
      
        'WHERE `productos_en_CONSULTA`.`FECHA_DE_LA_OPERACION` >= :FECHAD' +
        'ESDE AND'
      
        '      `productos_en_CONSULTA`.`FECHA_DE_LA_OPERACION` <= :FECHAH' +
        'ASTA ;'
      ''
      '')
    Left = 184
    Top = 120
    ParamData = <
      item
        DataType = ftDate
        Name = 'FECHADESDE'
        Value = nil
      end
      item
        DataType = ftDate
        Name = 'FECHAHASTA'
        Value = nil
      end>
    object QInsumosFechaCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object QInsumosFechaCODIGO_PRODUCTO: TIntegerField
      FieldName = 'CODIGO_PRODUCTO'
    end
    object QInsumosFechaCODIGO_PACIENTE: TIntegerField
      FieldName = 'CODIGO_PACIENTE'
    end
    object QInsumosFechaNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 100
    end
    object QInsumosFechaTIPO: TStringField
      FieldName = 'TIPO'
      Size = 100
    end
    object QInsumosFechaPROVEEDOR: TStringField
      FieldName = 'PROVEEDOR'
      Size = 100
    end
    object QInsumosFechaPRESENTACION: TStringField
      FieldName = 'PRESENTACION'
      Size = 100
    end
    object QInsumosFechaLABORATORIO: TStringField
      FieldName = 'LABORATORIO'
      Size = 100
    end
    object QInsumosFechaLOTE: TStringField
      FieldName = 'LOTE'
      Size = 100
    end
    object QInsumosFechaFECHA_DE_VENCIMIENTO: TDateField
      FieldName = 'FECHA_DE_VENCIMIENTO'
    end
    object QInsumosFechaENTRADA: TIntegerField
      FieldName = 'ENTRADA'
    end
    object QInsumosFechaFECHA_DE_ENTRADA: TDateField
      FieldName = 'FECHA_DE_ENTRADA'
    end
    object QInsumosFechaSALIDA: TIntegerField
      FieldName = 'SALIDA'
    end
    object QInsumosFechaFECHA_DE_SALIDA: TDateField
      FieldName = 'FECHA_DE_SALIDA'
    end
    object QInsumosFechaPRECIO_COSTO_POR_UNIDAD: TIntegerField
      FieldName = 'PRECIO_COSTO_POR_UNIDAD'
    end
    object QInsumosFechaPRECIO_VENTA_POR_UNIDAD: TIntegerField
      FieldName = 'PRECIO_VENTA_POR_UNIDAD'
    end
    object QInsumosFechaOPERACION: TStringField
      FieldName = 'OPERACION'
      Size = 30
    end
    object QInsumosFechaFECHA_DE_LA_OPERACION: TDateField
      FieldName = 'FECHA_DE_LA_OPERACION'
    end
  end
  object QEliminarRegistroI: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'DELETE   '
      'FROM    `productos_EN_CONSULTA` '
      'WHERE   `productos_EN_CONSULTA`.`CODIGO` = :CODIGO ;')
    Left = 200
    Top = 352
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODIGO'
        Value = nil
      end>
  end
  object QBuscarProd: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'select `productos_vencimiento_CONSULTA`.*  '
      'from   `productos_vencimiento_CONSULTA` ;')
    Left = 384
    Top = 232
    object QBuscarProdCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object QBuscarProdCODIGO_PRODUCTO: TIntegerField
      FieldName = 'CODIGO_PRODUCTO'
    end
    object QBuscarProdNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 100
    end
    object QBuscarProdTIPO: TStringField
      FieldName = 'TIPO'
      Size = 100
    end
    object QBuscarProdPROVEEDOR: TStringField
      FieldName = 'PROVEEDOR'
      Size = 100
    end
    object QBuscarProdPRESENTACION: TStringField
      FieldName = 'PRESENTACION'
      Size = 100
    end
    object QBuscarProdLABORATORIO: TStringField
      FieldName = 'LABORATORIO'
      Size = 100
    end
    object QBuscarProdLOTE: TStringField
      FieldName = 'LOTE'
      Size = 100
    end
    object QBuscarProdFECHA_DE_VENCIMIENTO: TDateField
      FieldName = 'FECHA_DE_VENCIMIENTO'
    end
    object QBuscarProdPRECIO_VENTA_POR_UNIDAD: TIntegerField
      FieldName = 'PRECIO_VENTA_POR_UNIDAD'
    end
    object QBuscarProdPRECIO_COSTO_POR_UNIDAD: TIntegerField
      FieldName = 'PRECIO_COSTO_POR_UNIDAD'
    end
  end
  object DSBuscarProd: TUniDataSource
    DataSet = QBuscarProd
    Left = 384
    Top = 285
  end
  object QEliminarRegistroF: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'DELETE   '
      'FROM    `productos_vencimiento_CONSULTA` '
      'WHERE   `productos_vencimiento_CONSULTA`.`CODIGO` = :CODIGO ;')
    Left = 480
    Top = 296
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODIGO'
        Value = nil
      end>
  end
  object QRecetaMedicamentos: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'SELECT `pacientes_recetas_medicamentos`.* '
      'FROM   `pacientes_recetas_medicamentos`'
      
        'WHERE  `pacientes_recetas_medicamentos`.`CODIGO_RECETA` = :CODIG' +
        'O_RECETA;')
    Left = 784
    Top = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODIGO_RECETA'
        Value = nil
      end>
    object QRecetaMedicamentosCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object QRecetaMedicamentosCODIGO_RECETA: TIntegerField
      FieldName = 'CODIGO_RECETA'
    end
    object QRecetaMedicamentosMEDICAMENTO: TStringField
      FieldName = 'MEDICAMENTO'
      Size = 100
    end
    object QRecetaMedicamentosPRESENTACION: TStringField
      FieldName = 'PRESENTACION'
      Size = 100
    end
    object QRecetaMedicamentosDOSIS: TStringField
      FieldName = 'DOSIS'
      Size = 100
    end
  end
  object DSRecetaMedicamentos: TUniDataSource
    DataSet = QRecetaMedicamentos
    Left = 784
    Top = 112
  end
  object QMedTemp: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'SELECT `pacientes_recetas_medicamentos_temp`.* '
      'FROM   `pacientes_recetas_medicamentos_temp`;')
    Left = 904
    Top = 48
    object QMedTempCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object QMedTempCODIGO_RECETA: TIntegerField
      FieldName = 'CODIGO_RECETA'
    end
    object QMedTempMEDICAMENTO: TStringField
      FieldName = 'MEDICAMENTO'
      Size = 100
    end
    object QMedTempPRESENTACION: TStringField
      FieldName = 'PRESENTACION'
      Size = 100
    end
    object QMedTempDOSIS: TStringField
      FieldName = 'DOSIS'
      Size = 100
    end
  end
  object DSMedTemp: TUniDataSource
    DataSet = QMedTemp
    Left = 904
    Top = 104
  end
  object QLast: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'SELECT CODIGO FROM pacientes_recetas'
      'ORDER BY CODIGO DESC'
      'LIMIT 1;')
    Left = 904
    Top = 224
    object QLastCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
  end
  object QInsertatTemp: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'INSERT INTO `pacientes_recetas_medicamentos_temp`'
      '('
      '`pacientes_recetas_medicamentos_temp`.`MEDICAMENTO`,'
      '`pacientes_recetas_medicamentos_temp`.`PRESENTACION`,'
      '`pacientes_recetas_medicamentos_temp`.`DOSIS`'
      ')'
      'VALUES '
      '('
      ':MEDICAMENTO,'
      ':PRESENTACION,'
      ':DOSIS'
      ')'
      '')
    Left = 904
    Top = 168
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'MEDICAMENTO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PRESENTACION'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DOSIS'
        Value = nil
      end>
    object IntegerField1: TIntegerField
      FieldName = 'CODIGO'
    end
    object IntegerField2: TIntegerField
      FieldName = 'CODIGO_RECETA'
    end
    object StringField1: TStringField
      FieldName = 'MEDICAMENTO'
      Size = 100
    end
    object StringField2: TStringField
      FieldName = 'PRESENTACION'
      Size = 100
    end
    object StringField3: TStringField
      FieldName = 'DOSIS'
      Size = 100
    end
  end
  object QInsertarMedicamentosReceta: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'INSERT INTO `pacientes_recetas_medicamentos`'
      '('
      '`pacientes_recetas_medicamentos`.`CODIGO_RECETA`,'
      '`pacientes_recetas_medicamentos`.`MEDICAMENTO`,'
      '`pacientes_recetas_medicamentos`.`PRESENTACION`,'
      '`pacientes_recetas_medicamentos`.`DOSIS`'
      ')'
      'VALUES '
      '('
      ':CODIGO_RECETA,'
      ':MEDICAMENTO,'
      ':PRESENTACION,'
      ':DOSIS'
      ')'
      '')
    Left = 904
    Top = 280
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODIGO_RECETA'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'MEDICAMENTO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PRESENTACION'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DOSIS'
        Value = nil
      end>
    object IntegerField3: TIntegerField
      FieldName = 'CODIGO'
    end
    object IntegerField4: TIntegerField
      FieldName = 'CODIGO_RECETA'
    end
    object StringField4: TStringField
      FieldName = 'MEDICAMENTO'
      Size = 100
    end
    object StringField5: TStringField
      FieldName = 'PRESENTACION'
      Size = 100
    end
    object StringField6: TStringField
      FieldName = 'DOSIS'
      Size = 100
    end
  end
  object QEliminarTemp: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'DELETE '
      'FROM  `pacientes_recetas_medicamentos_temp`;')
    Left = 904
    Top = 336
    object IntegerField5: TIntegerField
      FieldName = 'CODIGO'
    end
    object IntegerField6: TIntegerField
      FieldName = 'CODIGO_RECETA'
    end
    object StringField7: TStringField
      FieldName = 'MEDICAMENTO'
      Size = 100
    end
    object StringField8: TStringField
      FieldName = 'PRESENTACION'
      Size = 100
    end
    object StringField9: TStringField
      FieldName = 'DOSIS'
      Size = 100
    end
  end
  object QLabResult: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      ''
      'UPDATE `pacientes_laboratorios`'
      'SET '
      ''
      '`pacientes_laboratorios`.`RESULTADO`= :RESULTADO'
      ''
      'WHERE  `pacientes_laboratorios`.`CODIGO` = :CODIGO;'
      '')
    Left = 904
    Top = 392
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'RESULTADO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CODIGO'
        Value = nil
      end>
  end
  object QEliminarConsulta: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'DELETE   '
      'FROM    `pacientes_consultas` '
      'WHERE   `pacientes_consultas`.`CODIGO` = :CODIGO ;')
    Left = 280
    Top = 416
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODIGO'
        Value = nil
      end>
  end
  object QEliminarPaciente: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'DELETE   '
      'FROM    `pacientes` '
      'WHERE   `pacientes`.`CODIGO` = :CODIGO ;')
    Left = 376
    Top = 416
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODIGO'
        Value = nil
      end>
  end
  object QEliminarReceta: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'DELETE   '
      'FROM    `pacientes_recetas` '
      'WHERE   `pacientes_recetas`.`CODIGO` = :CODIGO ;'
      ''
      'DELETE   '
      'FROM    `pacientes_recetas_medicamentos` '
      
        'WHERE   `pacientes_recetas_medicamentos`.`CODIGO_RECETA` = :CODI' +
        'GO ;')
    Left = 464
    Top = 416
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODIGO'
        Value = nil
      end>
  end
  object QEliminarLab: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'DELETE   '
      'FROM    `pacientes_laboratorios` '
      'WHERE   `pacientes_laboratorios`.`CODIGO` = :CODIGO ;')
    Left = 560
    Top = 416
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODIGO'
        Value = nil
      end>
  end
  object QModPaciente: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'UPDATE `PACIENTES`'
      ''
      'SET    `PACIENTES`.`NOMBRE`= :NOMBRE,'
      '       `PACIENTES`.`PRIMER_APELLIDO`= :PRIMER_APELLIDO,'
      '       `PACIENTES`.`SEGUNDO_APELLIDO`= :SEGUNDO_APELLIDO,'
      '       `PACIENTES`.`TELEFONOS`= :TELEFONOS,'
      '       `PACIENTES`.`CORREO`= :CORREO,'
      '       `PACIENTES`.`DIRECCION`= :DIRECCION,'
      '       `PACIENTES`.`SEXO`= :SEXO,'
      '       `PACIENTES`.`ESCOLARIDAD`= :ESCOLARIDAD,'
      '       `PACIENTES`.`ESTADO_CIVIL`= :ESTADO_CIVIL,'
      '       `PACIENTES`.`OCUPACION`= :OCUPACION,'
      '       `PACIENTES`.`COMENTARIOS`= :COMENTARIOS  '
      ''
      ''
      'WHERE  `PACIENTES`.`CODIGO` = :CODIGO;')
    Left = 304
    Top = 120
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NOMBRE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PRIMER_APELLIDO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'SEGUNDO_APELLIDO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TELEFONOS'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CORREO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DIRECCION'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'SEXO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ESCOLARIDAD'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ESTADO_CIVIL'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'OCUPACION'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'COMENTARIOS'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CODIGO'
        Value = nil
      end>
  end
  object QEliminarTemp1: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'DELETE '
      'FROM  `pacientes_recetas_medicamentos_temp`'
      'WHERE `pacientes_recetas_medicamentos_temp`.`CODIGO` = :CODIGO;')
    Left = 904
    Top = 456
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODIGO'
        Value = nil
      end>
  end
  object QInsertarVentaEstadistica: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'INSERT INTO venta_estadisticas'
      
        '(NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,PRECIO,IMPUESTO_CLINICA' +
        ',FECHA,MEDICO)'
      'VALUES'
      
        '(:NOMBRE,:PRIMER_APELLIDO,:SEGUNDO_APELLIDO,:PRECIO,:IMPUESTO_CL' +
        'INICA,:FECHA,:MEDICO)')
    Left = 80
    Top = 544
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NOMBRE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PRIMER_APELLIDO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'SEGUNDO_APELLIDO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PRECIO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'IMPUESTO_CLINICA'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FECHA'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'MEDICO'
        Value = nil
      end>
  end
end
