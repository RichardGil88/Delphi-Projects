object FDMCitas: TFDMCitas
  OldCreateOrder = False
  Height = 591
  Width = 890
  object QCitasTodas: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'SELECT * FROM CITAS '
      'WHERE `CITAS`.`FECHA_CITA` >= :FECHA;')
    Left = 40
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'FECHA'
        Value = nil
      end>
    object QCitasTodasCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object QCitasTodasNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 100
    end
    object QCitasTodasTELEFONO: TStringField
      FieldName = 'TELEFONO'
      Size = 50
    end
    object QCitasTodasMOTIVO: TStringField
      FieldName = 'MOTIVO'
      Size = 255
    end
    object QCitasTodasESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 100
    end
    object QCitasTodasFECHA_CITA: TDateField
      FieldName = 'FECHA_CITA'
    end
    object QCitasTodasFECHA_CONFIRMACION: TDateField
      FieldName = 'FECHA_CONFIRMACION'
    end
    object QCitasTodasHORA_INICIO: TStringField
      FieldName = 'HORA_INICIO'
    end
    object QCitasTodasHORA_FIN: TStringField
      FieldName = 'HORA_FIN'
    end
    object QCitasTodasMEDICO_ASIGNADO: TStringField
      FieldName = 'MEDICO_ASIGNADO'
      Size = 100
    end
    object QCitasTodasRECEPCIONISTA: TStringField
      FieldName = 'RECEPCIONISTA'
      Size = 100
    end
  end
  object DSCitasTodas: TUniDataSource
    DataSet = QCitasTodas
    Left = 40
    Top = 80
  end
  object QInsertarCita: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'INSERT INTO `CITAS`'
      '('
      '`CITAS`.`NOMBRE`,'
      '`CITAS`.`TELEFONO`,'
      '`CITAS`.`MOTIVO`,'
      '`CITAS`.`ESTADO`,'
      '`CITAS`.`FECHA_CITA`,'
      '`CITAS`.`FECHA_CONFIRMACION`,'
      '`CITAS`.`HORA_INICIO`,'
      '`CITAS`.`HORA_FIN`,'
      '`CITAS`.`MEDICO_ASIGNADO`,'
      '`CITAS`.`RECEPCIONISTA`'
      ')'
      'VALUES'
      '('
      ':NOMBRE,'
      ':TELEFONO,'
      ':MOTIVO,'
      ':ESTADO,'
      ':FECHA_CITA,'
      ':FECHA_CONFIRMACION,'
      ':HORA_INICIO,'
      ':HORA_FIN,'
      ':MEDICO_ASIGNADO,'
      ':RECEPCIONISTA'
      ');')
    Left = 224
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NOMBRE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TELEFONO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'MOTIVO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ESTADO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FECHA_CITA'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FECHA_CONFIRMACION'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'HORA_INICIO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'HORA_FIN'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'MEDICO_ASIGNADO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'RECEPCIONISTA'
        Value = nil
      end>
  end
  object QUpdateCita: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      ''
      'UPDATE `CITAS`'
      'SET '
      ''
      '`CITAS`.`NOMBRE` = :NOMBRE,'
      '`CITAS`.`TELEFONO` = :TELEFONO,'
      '`CITAS`.`MOTIVO`= :MOTIVO,'
      '`CITAS`.`ESTADO`= :ESTADO,'
      '`CITAS`.`FECHA_CITA`= :FECHA_CITA,'
      '`CITAS`.`FECHA_CONFIRMACION` = :FECHA_CONFIRMACION,'
      '`CITAS`.`HORA_INICIO`= :HORA_INICIO,'
      '`CITAS`.`HORA_FIN`= :HORA_FIN,'
      '`CITAS`.`MEDICO_ASIGNADO`= :DOCTOR'
      ''
      ''
      ''
      'WHERE  `CITAS`.`CODIGO` = :CODIGO;'
      '')
    Left = 224
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NOMBRE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TELEFONO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'MOTIVO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ESTADO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FECHA_CITA'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FECHA_CONFIRMACION'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'HORA_INICIO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'HORA_FIN'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DOCTOR'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CODIGO'
        Value = nil
      end>
  end
  object QEliminarCita: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'DELETE   '
      'FROM    `CITAS` '
      'WHERE   `CITAS`.`CODIGO` = :CODIGO ;')
    Left = 304
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODIGO'
        Value = nil
      end>
  end
  object QHoraInicio: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'SELECT * FROM `horarios`;'
      '')
    Left = 400
    Top = 32
    object QHoraInicioCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object QHoraInicioHORA_INICIO: TStringField
      FieldName = 'HORA_INICIO'
      Size = 100
    end
    object QHoraInicioHORA_FIN: TStringField
      FieldName = 'HORA_FIN'
      Size = 100
    end
  end
  object DSHoraInicio: TUniDataSource
    DataSet = QHoraInicio
    Left = 400
    Top = 88
  end
  object QHoraFin: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'SELECT `horarios`.`HORA_FIN` FROM `horarios`'
      'where `horarios`.`hora_inicio` = :phora;'
      '')
    Left = 496
    Top = 32
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'phora'
        Value = nil
      end>
    object QHoraFinHORA_FIN: TStringField
      FieldName = 'HORA_FIN'
      Size = 100
    end
  end
  object DSHoraFin: TUniDataSource
    DataSet = QHoraFin
    Left = 496
    Top = 88
  end
  object QCitasBuscar: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'SELECT  *'
      ' FROM `CITAS` '
      'WHERE `CITAS`.`FECHA_CITA` >= :FECHADESDE AND'
      '      `CITAS`.`FECHA_CITA` <= :FECHAHASTA ;')
    Left = 72
    Top = 160
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
    object QCitasBuscarCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object QCitasBuscarNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 100
    end
    object QCitasBuscarTELEFONO: TStringField
      FieldName = 'TELEFONO'
      Size = 50
    end
    object QCitasBuscarMOTIVO: TStringField
      FieldName = 'MOTIVO'
      Size = 255
    end
    object QCitasBuscarESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 100
    end
    object QCitasBuscarFECHA_CITA: TDateField
      FieldName = 'FECHA_CITA'
    end
    object QCitasBuscarFECHA_CONFIRMACION: TDateField
      FieldName = 'FECHA_CONFIRMACION'
    end
    object QCitasBuscarHORA_INICIO: TStringField
      FieldName = 'HORA_INICIO'
    end
    object QCitasBuscarHORA_FIN: TStringField
      FieldName = 'HORA_FIN'
    end
    object QCitasBuscarMEDICO_ASIGNADO: TStringField
      FieldName = 'MEDICO_ASIGNADO'
      Size = 100
    end
    object QCitasBuscarRECEPCIONISTA: TStringField
      FieldName = 'RECEPCIONISTA'
      Size = 100
    end
  end
  object DSCitasBuscar: TUniDataSource
    DataSet = QCitasBuscar
    Left = 72
    Top = 208
  end
  object QCitasDoctor: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'SELECT * FROM CITAS '
      'WHERE `CITAS`.`FECHA_CITA` >= :FECHA AND'
      '      `CITAS`.`MEDICO_ASIGNADO` = :DOCTOR;')
    Left = 120
    Top = 24
    ParamData = <
      item
        DataType = ftDate
        Name = 'FECHA'
        Value = nil
      end
      item
        DataType = ftString
        Name = 'DOCTOR'
        Value = ''
      end>
    object QCitasDoctorCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object QCitasDoctorNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 100
    end
    object QCitasDoctorTELEFONO: TStringField
      FieldName = 'TELEFONO'
      Size = 50
    end
    object QCitasDoctorMOTIVO: TStringField
      FieldName = 'MOTIVO'
      Size = 255
    end
    object QCitasDoctorESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 100
    end
    object QCitasDoctorFECHA_CITA: TDateField
      FieldName = 'FECHA_CITA'
    end
    object QCitasDoctorFECHA_CONFIRMACION: TDateField
      FieldName = 'FECHA_CONFIRMACION'
    end
    object QCitasDoctorHORA_INICIO: TStringField
      FieldName = 'HORA_INICIO'
    end
    object QCitasDoctorHORA_FIN: TStringField
      FieldName = 'HORA_FIN'
    end
    object QCitasDoctorMEDICO_ASIGNADO: TStringField
      FieldName = 'MEDICO_ASIGNADO'
      Size = 100
    end
    object QCitasDoctorRECEPCIONISTA: TStringField
      FieldName = 'RECEPCIONISTA'
      Size = 100
    end
  end
  object DSCitasDoctor: TUniDataSource
    DataSet = QCitasDoctor
    Left = 120
    Top = 80
  end
  object QCitasOld: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'SELECT * FROM CITAS '
      'WHERE `CITAS`.`FECHA_CITA` < :FECHA;')
    Left = 384
    Top = 208
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'FECHA'
        Value = nil
      end>
    object QCitasOldCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object QCitasOldNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 100
    end
    object QCitasOldTELEFONO: TStringField
      FieldName = 'TELEFONO'
      Size = 50
    end
    object QCitasOldMOTIVO: TStringField
      FieldName = 'MOTIVO'
      Size = 255
    end
    object QCitasOldESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 100
    end
    object QCitasOldFECHA_CITA: TDateField
      FieldName = 'FECHA_CITA'
    end
    object QCitasOldFECHA_CONFIRMACION: TDateField
      FieldName = 'FECHA_CONFIRMACION'
    end
    object QCitasOldHORA_INICIO: TStringField
      FieldName = 'HORA_INICIO'
    end
    object QCitasOldHORA_FIN: TStringField
      FieldName = 'HORA_FIN'
    end
    object QCitasOldMEDICO_ASIGNADO: TStringField
      FieldName = 'MEDICO_ASIGNADO'
      Size = 100
    end
    object QCitasOldRECEPCIONISTA: TStringField
      FieldName = 'RECEPCIONISTA'
      Size = 100
    end
  end
  object QInsertarCitaHist: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'INSERT INTO `CITAS_HISTORIAL`'
      '('
      '`CITAS_HISTORIAL`.`NOMBRE`,'
      '`CITAS_HISTORIAL`.`TELEFONO`,'
      '`CITAS_HISTORIAL`.`MOTIVO`,'
      '`CITAS_HISTORIAL`.`ESTADO`,'
      '`CITAS_HISTORIAL`.`FECHA_CITA`,'
      '`CITAS_HISTORIAL`.`FECHA_CONFIRMACION`,'
      '`CITAS_HISTORIAL`.`HORA_INICIO`,'
      '`CITAS_HISTORIAL`.`HORA_FIN`,'
      '`CITAS_HISTORIAL`.`MEDICO_ASIGNADO`,'
      '`CITAS_HISTORIAL`.`RECEPCIONISTA`'
      ')'
      'VALUES'
      '('
      ':NOMBRE,'
      ':TELEFONO,'
      ':MOTIVO,'
      ':ESTADO,'
      ':FECHA_CITA,'
      ':FECHA_CONFIRMACION,'
      ':HORA_INICIO,'
      ':HORA_FIN,'
      ':MEDICO_ASIGNADO,'
      ':RECEPCIONISTA'
      ');')
    Left = 384
    Top = 160
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NOMBRE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TELEFONO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'MOTIVO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ESTADO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FECHA_CITA'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FECHA_CONFIRMACION'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'HORA_INICIO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'HORA_FIN'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'MEDICO_ASIGNADO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'RECEPCIONISTA'
        Value = nil
      end>
  end
  object QCitasBuscarDoctor: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'SELECT  *'
      ' FROM `CITAS` '
      'WHERE `CITAS`.`FECHA_CITA` >= :FECHADESDE AND'
      '      `CITAS`.`FECHA_CITA` <= :FECHAHASTA AND'
      '      `CITAS`.`MEDICO_ASIGNADO` = :DOCTOR;'
      '')
    Left = 64
    Top = 272
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'FECHADESDE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FECHAHASTA'
        Value = nil
      end
      item
        DataType = ftString
        Name = 'DOCTOR'
        Value = ''
      end>
    object QCitasBuscarDoctorCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object QCitasBuscarDoctorNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 100
    end
    object QCitasBuscarDoctorTELEFONO: TStringField
      FieldName = 'TELEFONO'
      Size = 50
    end
    object QCitasBuscarDoctorMOTIVO: TStringField
      FieldName = 'MOTIVO'
      Size = 255
    end
    object QCitasBuscarDoctorESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 100
    end
    object QCitasBuscarDoctorFECHA_CITA: TDateField
      FieldName = 'FECHA_CITA'
    end
    object QCitasBuscarDoctorFECHA_CONFIRMACION: TDateField
      FieldName = 'FECHA_CONFIRMACION'
    end
    object QCitasBuscarDoctorHORA_INICIO: TStringField
      FieldName = 'HORA_INICIO'
    end
    object QCitasBuscarDoctorHORA_FIN: TStringField
      FieldName = 'HORA_FIN'
    end
    object QCitasBuscarDoctorMEDICO_ASIGNADO: TStringField
      FieldName = 'MEDICO_ASIGNADO'
      Size = 100
    end
    object QCitasBuscarDoctorRECEPCIONISTA: TStringField
      FieldName = 'RECEPCIONISTA'
      Size = 100
    end
  end
  object DSCitasBuscarDoctor: TUniDataSource
    DataSet = QCitasBuscarDoctor
    Left = 64
    Top = 320
  end
  object QCitasBuscarHist: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'SELECT  *'
      ' FROM  `CITAS_HISTORIAL` '
      'WHERE  `CITAS_HISTORIAL`.`FECHA_CITA` >= :FECHADESDE AND'
      '       `CITAS_HISTORIAL`.`FECHA_CITA` <= :FECHAHASTA ;')
    Left = 248
    Top = 160
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
    object QCitasBuscarHistCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object QCitasBuscarHistNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 100
    end
    object QCitasBuscarHistTELEFONO: TIntegerField
      FieldName = 'TELEFONO'
    end
    object QCitasBuscarHistMOTIVO: TStringField
      FieldName = 'MOTIVO'
      Size = 255
    end
    object QCitasBuscarHistESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 100
    end
    object QCitasBuscarHistFECHA_CITA: TDateField
      FieldName = 'FECHA_CITA'
    end
    object QCitasBuscarHistFECHA_CONFIRMACION: TDateField
      FieldName = 'FECHA_CONFIRMACION'
    end
    object QCitasBuscarHistHORA_INICIO: TStringField
      FieldName = 'HORA_INICIO'
    end
    object QCitasBuscarHistHORA_FIN: TStringField
      FieldName = 'HORA_FIN'
    end
    object QCitasBuscarHistMEDICO_ASIGNADO: TStringField
      FieldName = 'MEDICO_ASIGNADO'
      Size = 100
    end
    object QCitasBuscarHistRECEPCIONISTA: TStringField
      FieldName = 'RECEPCIONISTA'
      Size = 100
    end
  end
  object DSCitasBuscarHist: TUniDataSource
    DataSet = QCitasBuscarHist
    Left = 248
    Top = 208
  end
  object QCitasBuscarDoctorHist: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'SELECT  *'
      ' FROM `CITAS_HISTORIAL` '
      'WHERE `CITAS_HISTORIAL`.`FECHA_CITA` >= :FECHADESDE AND'
      '      `CITAS_HISTORIAL`.`FECHA_CITA` <= :FECHAHASTA AND'
      '      `CITAS_HISTORIAL`.`MEDICO_ASIGNADO` = :DOCTOR;'
      '')
    Left = 248
    Top = 272
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'FECHADESDE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FECHAHASTA'
        Value = nil
      end
      item
        DataType = ftString
        Name = 'DOCTOR'
        Value = ''
      end>
    object QCitasBuscarDoctorHistCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object QCitasBuscarDoctorHistNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 100
    end
    object QCitasBuscarDoctorHistTELEFONO: TIntegerField
      FieldName = 'TELEFONO'
    end
    object QCitasBuscarDoctorHistMOTIVO: TStringField
      FieldName = 'MOTIVO'
      Size = 255
    end
    object QCitasBuscarDoctorHistESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 100
    end
    object QCitasBuscarDoctorHistFECHA_CITA: TDateField
      FieldName = 'FECHA_CITA'
    end
    object QCitasBuscarDoctorHistFECHA_CONFIRMACION: TDateField
      FieldName = 'FECHA_CONFIRMACION'
    end
    object QCitasBuscarDoctorHistHORA_INICIO: TStringField
      FieldName = 'HORA_INICIO'
    end
    object QCitasBuscarDoctorHistHORA_FIN: TStringField
      FieldName = 'HORA_FIN'
    end
    object QCitasBuscarDoctorHistMEDICO_ASIGNADO: TStringField
      FieldName = 'MEDICO_ASIGNADO'
      Size = 100
    end
    object QCitasBuscarDoctorHistRECEPCIONISTA: TStringField
      FieldName = 'RECEPCIONISTA'
      Size = 100
    end
  end
  object DSCitasBuscarDoctorHist: TUniDataSource
    DataSet = QCitasBuscarDoctorHist
    Left = 248
    Top = 320
  end
  object QConfirmarCita: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      ''
      'UPDATE `CITAS`'
      'SET '
      ''
      '`CITAS`.`ESTADO`= :ESTADO,'
      '`CITAS`.`FECHA_CONFIRMACION`= :FECHA'
      ''
      'WHERE  `CITAS`.`CODIGO` = :CODIGO;'
      '')
    Left = 384
    Top = 280
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ESTADO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FECHA'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CODIGO'
        Value = nil
      end>
  end
  object QVentas: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'SELECT'
      'venta_de_productos.NOMBRE_PACIENTE,'
      'venta_de_productos.PRIMER_APELLIDO,'
      'venta_de_productos.SEGUNDO_APELLIDO,'
      'venta_de_productos.VENDEDOR,'
      'venta_de_productos.FECHA_DE_VENTA,'
      'venta_de_productos.PRECIO_TOTAL,'
      'venta_de_productos.CANTIDAD_VENDIDO,'
      'venta_de_productos.PRECIO_VENTA_POR_UNIDAD,'
      'venta_de_productos.NOMBRE'
      'FROM'
      'venta_de_productos'
      'WHERE  venta_de_productos.FECHA_DE_VENTA >= :PFECHA;   ')
    Left = 512
    Top = 152
    ParamData = <
      item
        DataType = ftDate
        Name = 'PFECHA'
        Value = nil
      end>
    object QVentasNOMBRE_PACIENTE: TStringField
      FieldName = 'NOMBRE_PACIENTE'
      Size = 100
    end
    object QVentasPRIMER_APELLIDO: TStringField
      FieldName = 'PRIMER_APELLIDO'
      Size = 100
    end
    object QVentasSEGUNDO_APELLIDO: TStringField
      FieldName = 'SEGUNDO_APELLIDO'
      Size = 100
    end
    object QVentasVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Size = 100
    end
    object QVentasFECHA_DE_VENTA: TDateField
      FieldName = 'FECHA_DE_VENTA'
    end
    object QVentasPRECIO_TOTAL: TIntegerField
      FieldName = 'PRECIO_TOTAL'
    end
    object QVentasCANTIDAD_VENDIDO: TIntegerField
      FieldName = 'CANTIDAD_VENDIDO'
    end
    object QVentasPRECIO_VENTA_POR_UNIDAD: TIntegerField
      FieldName = 'PRECIO_VENTA_POR_UNIDAD'
    end
    object QVentasNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 100
    end
  end
  object DSVentas: TUniDataSource
    DataSet = QVentas
    Left = 512
    Top = 200
  end
end
