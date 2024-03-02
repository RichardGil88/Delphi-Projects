object FDMFarmacia: TFDMFarmacia
  OldCreateOrder = False
  Height = 618
  Width = 875
  object DSContFarm: TUniDataSource
    DataSet = QTContFarm
    Left = 32
    Top = 232
  end
  object QInsertarVentaProv: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'Insert Into `Venta_provicional_medicamentos`'
      '('
      '`Venta_provicional_medicamentos`.`CODIGO_FARMACIA`,'
      '`Venta_provicional_medicamentos`.`CODIGO_MEDICAMENTO`,'
      '`Venta_provicional_medicamentos`.`NOMBRE`,'
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
      ':CODIGO_FARMACIA,'
      ':CODIGO_MEDICAMENTO,'
      ':NOMBRE,'
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
    Left = 48
    Top = 416
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODIGO_FARMACIA'
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
  object QEliminarlista: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'DELETE   '
      'from    `venta_provicional_medicamentos` '
      'WHERE   `venta_provicional_medicamentos`.`CODIGO` = :Pid ;')
    Left = 488
    Top = 40
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Pid'
        Value = nil
      end>
  end
  object QCancelar: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      
        'DELETE  `VENTA_PROVICIONAL_MEDICAMENTOS`.* FROM `VENTA_PROVICION' +
        'AL_MEDICAMENTOS`;')
    Left = 488
    Top = 104
  end
  object DSProducAlmacen: TUniDataSource
    DataSet = QProducAlmacen
    Left = 112
    Top = 232
  end
  object QProducAlmacen: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'SELECT  `productos_en_Almacen`.*'
      ' FROM `productos_en_Almacen`  '
      ' WHERE `productos_en_Almacen`.`Ultimo_reg`=1;')
    Left = 112
    Top = 184
    object QProducAlmacenCODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
    end
    object QProducAlmacenCODIGO_PRODUCTO: TIntegerField
      FieldName = 'CODIGO_PRODUCTO'
    end
    object QProducAlmacenNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 100
    end
    object QProducAlmacenEXISTENCIA: TIntegerField
      FieldName = 'EXISTENCIA'
    end
    object QProducAlmacenTIPO: TStringField
      FieldName = 'TIPO'
      Size = 100
    end
    object QProducAlmacenLOTE: TStringField
      FieldName = 'LOTE'
      Size = 100
    end
    object QProducAlmacenPROVEEDOR: TStringField
      FieldName = 'PROVEEDOR'
      Size = 100
    end
    object QProducAlmacenPRESENTACION: TStringField
      FieldName = 'PRESENTACION'
      Size = 100
    end
    object QProducAlmacenLABORATORIO: TStringField
      FieldName = 'LABORATORIO'
      Size = 100
    end
    object QProducAlmacenENTRADA: TIntegerField
      FieldName = 'ENTRADA'
    end
    object QProducAlmacenFECHA_DE_ENTRADA: TDateField
      FieldName = 'FECHA_DE_ENTRADA'
    end
    object QProducAlmacenSALIDA: TIntegerField
      FieldName = 'SALIDA'
    end
    object QProducAlmacenFECHA_DE_SALIDA: TDateField
      FieldName = 'FECHA_DE_SALIDA'
    end
    object QProducAlmacenPRECIO_COSTO_POR_UNIDAD: TIntegerField
      FieldName = 'PRECIO_COSTO_POR_UNIDAD'
    end
    object QProducAlmacenPRECIO_VENTA_POR_UNIDAD: TIntegerField
      FieldName = 'PRECIO_VENTA_POR_UNIDAD'
    end
    object QProducAlmacenFECHA_DE_VENCIMIENTO: TDateField
      FieldName = 'FECHA_DE_VENCIMIENTO'
    end
    object QProducAlmacenULTIMO_REG: TIntegerField
      FieldName = 'ULTIMO_REG'
    end
  end
  object QUpdate_Farmacia: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'UPDATE `productos_en_farmacia` '
      '    SET productos_en_farmacia.`ULTIMO_REG`= 0'
      
        ' WHERE `productos_en_farmacia`.`CODIGO_MEDICAMENTO` = :CODIGO_ME' +
        'DICAMENTO '
      ' AND    `productos_en_farmacia`.`ULTIMO_REG`= 1 ;')
    Left = 275
    Top = 182
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODIGO_MEDICAMENTO'
        Value = nil
      end>
    object StringField1: TStringField
      FieldName = 'usuario'
      Size = 100
    end
  end
  object DSUpdateFarmacia: TUniDataSource
    DataSet = QUpdate_Farmacia
    Left = 276
    Top = 231
  end
  object QTContFarm: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'SELECT  *'
      '  FROM  `productos_en_farmacia`  '
      ' WHERE  `productos_en_farmacia`.`ultimo_reg`= 1 ;')
    Left = 32
    Top = 184
    object QTContFarmCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object QTContFarmCODIGO_MEDICAMENTO: TIntegerField
      FieldName = 'CODIGO_MEDICAMENTO'
    end
    object QTContFarmNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 100
    end
    object QTContFarmPROVEEDOR: TStringField
      FieldName = 'PROVEEDOR'
      Size = 100
    end
    object QTContFarmPRESENTACION: TStringField
      FieldName = 'PRESENTACION'
      Size = 100
    end
    object QTContFarmLOTE: TStringField
      FieldName = 'LOTE'
      Size = 100
    end
    object QTContFarmENTRADA: TIntegerField
      FieldName = 'ENTRADA'
    end
    object QTContFarmFECHA_DE_ENTRADA: TDateField
      FieldName = 'FECHA_DE_ENTRADA'
    end
    object QTContFarmSALIDA: TIntegerField
      FieldName = 'SALIDA'
    end
    object QTContFarmFECHA_DE_SALIDA: TDateField
      FieldName = 'FECHA_DE_SALIDA'
    end
    object QTContFarmEXISTENCIA: TIntegerField
      FieldName = 'EXISTENCIA'
    end
    object QTContFarmPRECIO_VENTA_POR_UNIDAD: TIntegerField
      FieldName = 'PRECIO_VENTA_POR_UNIDAD'
    end
    object QTContFarmFECHA_DE_VENCIMIENTO: TDateField
      FieldName = 'FECHA_DE_VENCIMIENTO'
    end
    object QTContFarmULTIMO_REG: TIntegerField
      FieldName = 'ULTIMO_REG'
    end
  end
  object QInsertar_Farmacia: TUniQuery
    SQL.Strings = (
      'Insert Into `productos_en_farmacia`'
      '(`productos_en_farmacia`.`NOMBRE`,'
      ' `productos_en_farmacia`.`CODIGO_MEDICAMENTO`,'
      ' `productos_en_farmacia`.`ENTRADA`,'
      ' `productos_en_farmacia`.`FECHA_DE_ENTRADA`,'
      ' `productos_en_farmacia`.`SALIDA`,'
      ' `productos_en_farmacia`.`FECHA_DE_SALIDA`,'
      ' `productos_en_farmacia`.`EXISTENCIA`,'
      ' `productos_en_farmacia`.`PRECIO_VENTA_POR_UNIDAD`,'
      ' `productos_en_farmacia`.`ULTIMO_REG`)'
      ' Values ('
      ' :NOMBRE,'
      ' :CODIGO_MEDICAMENTO,'
      ' :ENTRADA,'
      ' :FECHA_DE_ENTRADA,'
      ' :SALIDA,'
      ' :FECHA_DE_SALIDA,'
      ' :EXISTENCIA,'
      ' :PRECIO_VENTA_POR_UNIDAD,'
      ' 1);'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      '')
    Left = 602
    Top = 47
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NOMBRE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CODIGO_MEDICAMENTO'
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
        Name = 'EXISTENCIA'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PRECIO_VENTA_POR_UNIDAD'
        Value = nil
      end>
    object StringField2: TStringField
      FieldName = 'usuario'
      Size = 100
    end
  end
  object DSQInsertar_Farmacia: TUniDataSource
    DataSet = QInsertar_Farmacia
    Left = 607
    Top = 97
  end
  object QExistencia: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'SELECT  `productos_en_farmacia`.`EXISTENCIA`'
      'FROM    `productos_en_farmacia`'
      'WHERE '
      
        '        `productos_en_farmacia`.`CODIGO_MEDICAMENTO` = :CODIGO_M' +
        'EDICAMENTO AND'
      '        `productos_en_farmacia`.`ULTIMO_REG` =1;'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      '')
    Left = 195
    Top = 182
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODIGO_MEDICAMENTO'
        Value = nil
      end>
  end
  object DSExistencia: TUniDataSource
    DataSet = QExistencia
    Left = 195
    Top = 231
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
      '`venta_de_productos`.`VENDEDOR`'
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
      ':VENDEDOR'
      ''
      ');'
      '')
    Left = 400
    Top = 40
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
      end>
  end
  object QFarmaciaTodosUltimo: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'SELECT  *'
      ' FROM `productos_vencimiento_farmacia`  ;'
      '')
    Left = 48
    Top = 46
    object QFarmaciaTodosUltimoCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object QFarmaciaTodosUltimoCODIGO_PRODUCTO: TIntegerField
      FieldName = 'CODIGO_PRODUCTO'
    end
    object QFarmaciaTodosUltimoNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 100
    end
    object QFarmaciaTodosUltimoTIPO: TStringField
      FieldName = 'TIPO'
      Size = 100
    end
    object QFarmaciaTodosUltimoLOTE: TStringField
      FieldName = 'LOTE'
      Size = 100
    end
    object QFarmaciaTodosUltimoPRESENTACION: TStringField
      FieldName = 'PRESENTACION'
      Size = 100
    end
    object QFarmaciaTodosUltimoLABORATORIO: TStringField
      FieldName = 'LABORATORIO'
      Size = 100
    end
    object QFarmaciaTodosUltimoPROVEEDOR: TStringField
      FieldName = 'PROVEEDOR'
      Size = 100
    end
    object QFarmaciaTodosUltimoEXISTENCIA: TIntegerField
      FieldName = 'EXISTENCIA'
    end
    object QFarmaciaTodosUltimoFECHA_DE_VENCIMIENTO: TDateField
      FieldName = 'FECHA_DE_VENCIMIENTO'
    end
    object QFarmaciaTodosUltimoPRECIO_VENTA_POR_UNIDAD: TIntegerField
      FieldName = 'PRECIO_VENTA_POR_UNIDAD'
    end
    object QFarmaciaTodosUltimoPRECIO_COSTO_POR_UNIDAD: TIntegerField
      FieldName = 'PRECIO_COSTO_POR_UNIDAD'
    end
  end
  object DSFarmaciaTodosUltimo: TUniDataSource
    DataSet = QFarmaciaTodosUltimo
    Left = 48
    Top = 94
  end
  object QVentaProvicionalTodos: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'SELECT * FROM `Venta_provicional_medicamentos` ;')
    Left = 168
    Top = 416
    object QVentaProvicionalTodosCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object QVentaProvicionalTodosCODIGO_FARMACIA: TIntegerField
      FieldName = 'CODIGO_FARMACIA'
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
  end
  object DSVentaProvicionalTodos: TUniDataSource
    DataSet = QVentaProvicionalTodos
    Left = 168
    Top = 464
  end
  object DSUltimoF: TUniDataSource
    DataSet = QUltimoF
    Left = 552
    Top = 216
  end
  object QUltimoF: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'SELECT  *'
      ' FROM  `productos_en_Farmacia`  '
      ' WHERE `productos_en_Farmacia`.`Ultimo_reg`=1       and '
      '       `productos_en_Farmacia`.`Nombre`=:Pnombre ;')
    Left = 552
    Top = 168
    ParamData = <
      item
        DataType = ftString
        Name = 'Pnombre'
        Value = ''
      end>
    object QUltimoFCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object QUltimoFCODIGO_MEDICAMENTO: TIntegerField
      FieldName = 'CODIGO_MEDICAMENTO'
    end
    object QUltimoFNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 100
    end
    object QUltimoFLOTE: TStringField
      FieldName = 'LOTE'
      Size = 100
    end
    object QUltimoFPRESENTACION: TStringField
      FieldName = 'PRESENTACION'
      Size = 100
    end
    object QUltimoFLABORATORIO: TStringField
      FieldName = 'LABORATORIO'
      Size = 100
    end
    object QUltimoFPROVEEDOR: TStringField
      FieldName = 'PROVEEDOR'
      Size = 100
    end
    object QUltimoFENTRADA: TIntegerField
      FieldName = 'ENTRADA'
    end
    object QUltimoFFECHA_DE_ENTRADA: TDateField
      FieldName = 'FECHA_DE_ENTRADA'
    end
    object QUltimoFSALIDA: TIntegerField
      FieldName = 'SALIDA'
    end
    object QUltimoFFECHA_DE_SALIDA: TDateField
      FieldName = 'FECHA_DE_SALIDA'
    end
    object QUltimoFEXISTENCIA: TIntegerField
      FieldName = 'EXISTENCIA'
    end
    object QUltimoFPRECIO_VENTA_POR_UNIDAD: TIntegerField
      FieldName = 'PRECIO_VENTA_POR_UNIDAD'
    end
    object QUltimoFFECHA_DE_VENCIMIENTO: TDateField
      FieldName = 'FECHA_DE_VENCIMIENTO'
    end
    object QUltimoFULTIMO_REG: TIntegerField
      FieldName = 'ULTIMO_REG'
    end
  end
  object QUpdateProducF: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'UPDATE `productos_en_farmacia` '
      'SET    `productos_en_farmacia`.`Ultimo_reg`= 0'
      'WHERE  `productos_en_farmacia`.`CODIGO` = :PCODIGO;')
    Left = 728
    Top = 48
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PCODIGO'
        Value = nil
      end>
  end
  object QAgregarProdFarmacia: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'Insert Into `productos_en_farmacia` '
      '('
      '`productos_en_farmacia`.`NOMBRE`,'
      '`productos_en_farmacia`.`CODIGO_MEDICAMENTO`,'
      '`productos_en_farmacia`.`TIPO`,'
      '`productos_en_farmacia`.`ENTRADA`,'
      '`productos_en_farmacia`.`SALIDA`,'
      '`productos_en_farmacia`.`FECHA_DE_SALIDA`,'
      '`productos_en_farmacia`.`FECHA_DE_VENCIMIENTO`,'
      '`productos_en_farmacia`.`PRECIO_VENTA_POR_UNIDAD`,'
      '`productos_en_farmacia`.`PRECIO_COSTO_POR_UNIDAD`,'
      '`productos_en_farmacia`.`FECHA_DE_ENTRADA`,'
      '`productos_en_farmacia`.`EXISTENCIA`,'
      '`productos_en_farmacia`.`LOTE`,'
      '`productos_en_farmacia`.`PRESENTACION`,'
      '`productos_en_farmacia`.`LABORATORIO`,'
      '`productos_en_farmacia`.`PROVEEDOR`,'
      '`productos_en_farmacia`.`VENDEDOR`,'
      '`productos_en_farmacia`.`OPERACION`,'
      '`productos_en_farmacia`.`FECHA_DE_LA_OPERACION`'
      ''
      ') '
      'Values '
      '('
      ':NOMBRE,'
      ':CODIGO_MEDICAMENTO,'
      ':TIPO,'
      ':ENTRADA,'
      ':SALIDA,'
      ':FECHA_DE_SALIDA,'
      ':FECHA_DE_VENCIMIENTO,'
      ':PRECIO_VENTA_POR_UNIDAD,'
      ':PRECIO_COSTO_POR_UNIDAD,'
      ':FECHA_DE_ENTRADA,'
      ':EXISTENCIA,'
      ':LOTE,'
      ':PRESENTACION,'
      ':LABORATORIO,'
      ':PROVEEDOR,'
      ':VENDEDOR,'
      ':OPERACION,'
      ':FECHA_DE_LA_OPERACION'
      ');')
    Left = 727
    Top = 95
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NOMBRE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CODIGO_MEDICAMENTO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TIPO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ENTRADA'
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
        Name = 'FECHA_DE_VENCIMIENTO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PRECIO_VENTA_POR_UNIDAD'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PRECIO_COSTO_POR_UNIDAD'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FECHA_DE_ENTRADA'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'EXISTENCIA'
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
        Name = 'VENDEDOR'
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
  object QProduc_Venc_Farm: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'SELECT * '
      'FROM  `productos_vencimiento_farmacia`'
      
        'WHERE `productos_vencimiento_farmacia`.`CODIGO_PRODUCTO`  = :PCO' +
        'DIGO  AND '
      
        '      `productos_vencimiento_farmacia`.`FECHA_DE_VENCIMIENTO` = ' +
        ':PFECHA AND'
      
        '      `productos_vencimiento_farmacia`.`PRESENTACION` = :PPRESEN' +
        'TACION AND'
      
        '      `productos_vencimiento_farmacia`.`LABORATORIO` = :PLABORAT' +
        'ORIO AND'
      
        '      `productos_vencimiento_farmacia`.`PROVEEDOR` = :PPROVEEDOR' +
        ' AND'
      
        '      `productos_vencimiento_farmacia`.`PRECIO_VENTA_POR_UNIDAD`' +
        ' = :PPRECIOVENTA AND'
      
        '      `productos_vencimiento_farmacia`.`PRECIO_COSTO_POR_UNIDAD`' +
        ' = :PPRECIOCOSTO AND'
      '      `productos_vencimiento_farmacia`.`TIPO` = :PTIPO AND'
      '      `productos_vencimiento_farmacia`.`LOTE` = :PLOTE;'
      '      '
      '')
    Left = 771
    Top = 175
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PCODIGO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PFECHA'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PPRESENTACION'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PLABORATORIO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PPROVEEDOR'
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
      end
      item
        DataType = ftUnknown
        Name = 'PLOTE'
        Value = nil
      end>
    object IntegerField9: TIntegerField
      FieldName = 'CODIGO'
    end
    object IntegerField10: TIntegerField
      FieldName = 'CODIGO_PRODUCTO'
    end
    object StringField4: TStringField
      FieldName = 'NOMBRE'
      Size = 100
    end
    object StringField5: TStringField
      FieldName = 'LOTE'
      Size = 100
    end
    object IntegerField11: TIntegerField
      FieldName = 'EXISTENCIA'
    end
    object DateField3: TDateField
      FieldName = 'FECHA_DE_VENCIMIENTO'
    end
  end
  object QUpdateProducVencFarm: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'UPDATE `productos_vencimiento_farmacia` '
      
        'SET    `productos_vencimiento_farmacia`.`existencia`= :PEXISTENC' +
        'IA'
      ''
      
        'WHERE `productos_vencimiento_farmacia`.`CODIGO_PRODUCTO`  = :PCO' +
        'DIGO  AND '
      
        '      `productos_vencimiento_farmacia`.`FECHA_DE_VENCIMIENTO` = ' +
        ':PFECHA AND'
      
        '      `productos_vencimiento_farmacia`.`PRESENTACION` = :PPRESEN' +
        'TACION AND'
      
        '      `productos_vencimiento_farmacia`.`LABORATORIO` = :PLABORAT' +
        'ORIO AND'
      
        '      `productos_vencimiento_farmacia`.`PROVEEDOR` = :PPROVEEDOR' +
        ' AND'
      
        '      `productos_vencimiento_farmacia`.`PRECIO_VENTA_POR_UNIDAD`' +
        ' = :PPRECIOVENTA AND'
      
        '      `productos_vencimiento_farmacia`.`PRECIO_COSTO_POR_UNIDAD`' +
        ' = :PPRECIOCOSTO AND'
      '      `productos_vencimiento_farmacia`.`TIPO` = :PTIPO AND'
      '      `productos_vencimiento_farmacia`.`LOTE` = :PLOTE ;')
    Left = 776
    Top = 221
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PEXISTENCIA'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PCODIGO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PFECHA'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PPRESENTACION'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PLABORATORIO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PPROVEEDOR'
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
      end
      item
        DataType = ftUnknown
        Name = 'PLOTE'
        Value = nil
      end>
  end
  object QInsertarProducVencFarm: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'INSERT INTO `productos_vencimiento_farmacia` '
      '( `productos_vencimiento_farmacia`.`CODIGO_PRODUCTO`,'
      '  `productos_vencimiento_farmacia`.`NOMBRE`,'
      '  `productos_vencimiento_farmacia`.`LOTE`,'
      '  `productos_vencimiento_farmacia`.`EXISTENCIA`,'
      '  `productos_vencimiento_farmacia`.`FECHA_DE_VENCIMIENTO`,'
      '  `productos_vencimiento_farmacia`.`PRESENTACION`,'
      '  `productos_vencimiento_farmacia`.`LABORATORIO`,'
      '  `productos_vencimiento_farmacia`.`PROVEEDOR`,'
      '  `productos_vencimiento_farmacia`.`PRECIO_VENTA_POR_UNIDAD`,'
      '  `productos_vencimiento_farmacia`.`PRECIO_COSTO_POR_UNIDAD`,'
      '  `productos_vencimiento_farmacia`.`TIPO` '
      ')'
      'VALUES'
      '(:PCODIGO,:PNOMBRE,:PLOTE,:PEXISTENCIA,:PFECHA_VENCIMIENTO,'
      
        ' :PPRESENTACION,:PLABORATORIO,:PPROVEEDOR,:PPRECIOVENTA,:PPRECIO' +
        'COSTO,:PTIPO);'
      ''
      '')
    Left = 776
    Top = 278
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PCODIGO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PNOMBRE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PLOTE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PEXISTENCIA'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PFECHA_VENCIMIENTO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PPRESENTACION'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PLABORATORIO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PPROVEEDOR'
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
  end
  object QBuscarProd: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'select `productos_vencimiento_farmacia`.*  '
      'from   `productos_vencimiento_farmacia`;')
    Left = 360
    Top = 312
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
    object QBuscarProdLOTE: TStringField
      FieldName = 'LOTE'
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
    object QBuscarProdPROVEEDOR: TStringField
      FieldName = 'PROVEEDOR'
      Size = 100
    end
    object QBuscarProdEXISTENCIA: TIntegerField
      FieldName = 'EXISTENCIA'
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
    Left = 360
    Top = 365
  end
  object DS1: TUniDataSource
    DataSet = Q1
    Left = 433
    Top = 365
  end
  object Q1: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'SELECT DISTINCT `productos_vencimiento_farmacia`.`NOMBRE`'
      'FROM  `productos_vencimiento_farmacia`;')
    Left = 433
    Top = 312
    object Q1NOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 100
    end
  end
  object DS2: TUniDataSource
    DataSet = Q2
    Left = 473
    Top = 365
  end
  object Q2: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'SELECT DISTINCT `productos_vencimiento_farmacia`.`presentacion`'
      'FROM  `productos_vencimiento_farmacia`;')
    Left = 473
    Top = 312
    object StringField15: TStringField
      FieldName = 'PRESENTACION'
      Size = 100
    end
  end
  object DS3: TUniDataSource
    DataSet = Q3
    Left = 518
    Top = 365
  end
  object Q3: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'SELECT DISTINCT `productos_vencimiento_farmacia`.`proveedor`'
      'FROM  `productos_vencimiento_farmacia`;')
    Left = 510
    Top = 312
    object Q3proveedor: TStringField
      FieldName = 'proveedor'
      Size = 100
    end
  end
  object DS4: TUniDataSource
    DataSet = Q4
    Left = 566
    Top = 365
  end
  object Q4: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'SELECT DISTINCT `productos_vencimiento_farmacia`.`lote`'
      'FROM  `productos_vencimiento_farmacia`;')
    Left = 558
    Top = 312
    object Q4lote: TStringField
      FieldName = 'lote'
      Size = 100
    end
  end
  object DSProd_Venc_Todos: TUniDataSource
    DataSet = QProd_Venc_Todos
    Left = 640
    Top = 365
  end
  object QProd_Venc_Todos: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'SELECT * FROM  `productos_vencimiento_farmacia`;')
    Left = 640
    Top = 312
    object QProd_Venc_TodosCODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
    end
    object QProd_Venc_TodosCODIGO_PRODUCTO: TIntegerField
      FieldName = 'CODIGO_PRODUCTO'
    end
    object QProd_Venc_TodosNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 100
    end
    object QProd_Venc_TodosTIPO: TStringField
      FieldName = 'TIPO'
      Size = 100
    end
    object QProd_Venc_TodosLOTE: TStringField
      FieldName = 'LOTE'
      Size = 100
    end
    object QProd_Venc_TodosPRESENTACION: TStringField
      FieldName = 'PRESENTACION'
      Size = 100
    end
    object QProd_Venc_TodosLABORATORIO: TStringField
      FieldName = 'LABORATORIO'
      Size = 100
    end
    object QProd_Venc_TodosPROVEEDOR: TStringField
      FieldName = 'PROVEEDOR'
      Size = 100
    end
    object QProd_Venc_TodosEXISTENCIA: TIntegerField
      FieldName = 'EXISTENCIA'
    end
    object QProd_Venc_TodosFECHA_DE_VENCIMIENTO: TDateField
      FieldName = 'FECHA_DE_VENCIMIENTO'
    end
    object QProd_Venc_TodosPRECIO_VENTA_POR_UNIDAD: TIntegerField
      FieldName = 'PRECIO_VENTA_POR_UNIDAD'
    end
    object QProd_Venc_TodosPRECIO_COSTO_POR_UNIDAD: TIntegerField
      FieldName = 'PRECIO_COSTO_POR_UNIDAD'
    end
  end
  object QUltimoTemp: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'SELECT  *'
      ' FROM  `venta_provicional_medicamentos`  '
      ' WHERE `venta_provicional_medicamentos`.`Ultimo_reg`=1 and '
      '       `venta_provicional_medicamentos`.`NOMBRE`=:NOMBRE ;')
    Left = 48
    Top = 352
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
    Left = 120
    Top = 352
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PCODIGO'
        Value = nil
      end>
  end
  object QProd_Farm_Fecha: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'SELECT `PRODUCTOS_EN_FARMACIA`.* '
      'FROM   `PRODUCTOS_EN_FARMACIA` '
      
        'WHERE  `PRODUCTOS_EN_FARMACIA`.`FECHA_DE_SALIDA` = :PFECHA_SALID' +
        'A;')
    Left = 304
    Top = 432
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PFECHA_SALIDA'
        Value = nil
      end>
    object QProd_Farm_FechaCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object QProd_Farm_FechaCODIGO_MEDICAMENTO: TIntegerField
      FieldName = 'CODIGO_MEDICAMENTO'
    end
    object QProd_Farm_FechaNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 100
    end
    object QProd_Farm_FechaTIPO: TStringField
      FieldName = 'TIPO'
      Size = 100
    end
    object QProd_Farm_FechaLOTE: TStringField
      FieldName = 'LOTE'
      Size = 100
    end
    object QProd_Farm_FechaPRESENTACION: TStringField
      FieldName = 'PRESENTACION'
      Size = 100
    end
    object QProd_Farm_FechaLABORATORIO: TStringField
      FieldName = 'LABORATORIO'
      Size = 100
    end
    object QProd_Farm_FechaPROVEEDOR: TStringField
      FieldName = 'PROVEEDOR'
      Size = 100
    end
    object QProd_Farm_FechaEXISTENCIA: TIntegerField
      FieldName = 'EXISTENCIA'
    end
    object QProd_Farm_FechaFECHA_DE_VENCIMIENTO: TDateField
      FieldName = 'FECHA_DE_VENCIMIENTO'
    end
    object QProd_Farm_FechaPRECIO_COSTO_POR_UNIDAD: TIntegerField
      FieldName = 'PRECIO_COSTO_POR_UNIDAD'
    end
    object QProd_Farm_FechaPRECIO_VENTA_POR_UNIDAD: TIntegerField
      FieldName = 'PRECIO_VENTA_POR_UNIDAD'
    end
    object QProd_Farm_FechaENTRADA: TIntegerField
      FieldName = 'ENTRADA'
    end
    object QProd_Farm_FechaFECHA_DE_ENTRADA: TDateField
      FieldName = 'FECHA_DE_ENTRADA'
    end
    object QProd_Farm_FechaSALIDA: TIntegerField
      FieldName = 'SALIDA'
    end
    object QProd_Farm_FechaFECHA_DE_SALIDA: TDateField
      FieldName = 'FECHA_DE_SALIDA'
    end
    object QProd_Farm_FechaVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Size = 100
    end
    object QProd_Farm_FechaULTIMO_REG: TIntegerField
      FieldName = 'ULTIMO_REG'
    end
  end
  object DSProd_Farm_Fecha: TUniDataSource
    DataSet = QProd_Farm_Fecha
    Left = 304
    Top = 480
  end
  object QEliminarUltimoFarmacia: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'DELETE   '
      'from    `productos_en_farmacia` '
      'WHERE   `productos_en_farmacia`.`CODIGO` = :CODIGO ;')
    Left = 432
    Top = 432
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODIGO'
        Value = nil
      end>
  end
  object QBuscarPorNombreFarmacia: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'select `productos_en_farmacia`.`codigo`'
      'from   `productos_en_farmacia`'
      'where  `productos_en_farmacia`.`nombre` =:NOMBRE;')
    Left = 432
    Top = 480
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NOMBRE'
        Value = nil
      end>
  end
  object QUpdateUltimoError: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'UPDATE `PRODUCTOS_EN_FARMACIA`'
      'SET    `PRODUCTOS_EN_FARMACIA`.`ULTIMO_REG`= 1'
      'WHERE  `PRODUCTOS_EN_FARMACIA`.`CODIGO` = :PCODIGO;')
    Left = 552
    Top = 432
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PCODIGO'
        Value = nil
      end>
  end
  object UniQuery1: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'SELECT  *'
      ' FROM  `productos_en_ALMACEN`;')
    Left = 768
    Top = 464
    object UniQuery1CODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
    end
    object UniQuery1CODIGO_PRODUCTO: TIntegerField
      FieldName = 'CODIGO_PRODUCTO'
    end
    object UniQuery1NOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 100
    end
    object UniQuery1TIPO: TStringField
      FieldName = 'TIPO'
      Size = 100
    end
    object UniQuery1PROVEEDOR: TStringField
      FieldName = 'PROVEEDOR'
      Size = 100
    end
    object UniQuery1PRESENTACION: TStringField
      FieldName = 'PRESENTACION'
      Size = 100
    end
    object UniQuery1LABORATORIO: TStringField
      FieldName = 'LABORATORIO'
      Size = 100
    end
    object UniQuery1LOTE: TStringField
      FieldName = 'LOTE'
      Size = 100
    end
    object UniQuery1ENTRADA: TIntegerField
      FieldName = 'ENTRADA'
    end
    object UniQuery1FECHA_DE_ENTRADA: TDateField
      FieldName = 'FECHA_DE_ENTRADA'
    end
    object UniQuery1SALIDA: TIntegerField
      FieldName = 'SALIDA'
    end
    object UniQuery1FECHA_DE_SALIDA: TDateField
      FieldName = 'FECHA_DE_SALIDA'
    end
    object UniQuery1EXISTENCIA: TIntegerField
      FieldName = 'EXISTENCIA'
    end
    object UniQuery1PRECIO_COSTO_POR_UNIDAD: TIntegerField
      FieldName = 'PRECIO_COSTO_POR_UNIDAD'
    end
    object UniQuery1PRECIO_VENTA_POR_UNIDAD: TIntegerField
      FieldName = 'PRECIO_VENTA_POR_UNIDAD'
    end
    object UniQuery1FECHA_DE_VENCIMIENTO: TDateField
      FieldName = 'FECHA_DE_VENCIMIENTO'
    end
    object UniQuery1FECHA_DE_LA_OPERACION: TDateField
      FieldName = 'FECHA_DE_LA_OPERACION'
    end
    object UniQuery1ULTIMO_REG: TIntegerField
      FieldName = 'ULTIMO_REG'
    end
  end
  object UniDataSource1: TUniDataSource
    DataSet = UniQuery1
    Left = 768
    Top = 509
  end
  object QBuscarExistencia: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'SELECT  `productos_en_farmacia`.`ENTRADA`,'
      '        `productos_en_farmacia`.`SALIDA`'
      'FROM    `productos_en_farmacia`'
      'WHERE '
      '        `productos_en_farmacia`.`NOMBRE` = :NOMBRE  AND'
      
        '        `productos_en_farmacia`.`PRESENTACION` = :PRESENTACION A' +
        'ND'
      
        '        `productos_en_farmacia`.`LABORATORIO` = :LABORATORIO  AN' +
        'D'
      '        `productos_en_farmacia`.`LOTE` = :LOTE  AND'
      '        `productos_en_farmacia`.`PROVEEDOR` = :PROVEEDOR  AND'
      
        '        `productos_en_farmacia`.`FECHA_DE_VENCIMIENTO` = :FECHA_' +
        'DE_VENCIMIENTO ;'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      '')
    Left = 211
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
  object DSFarmaciaFecha: TUniDataSource
    DataSet = QFarmaciaFecha
    Left = 160
    Top = 96
  end
  object QFarmaciaFecha: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'SELECT  *'
      ' FROM `productos_en_farmacia` '
      
        'WHERE `productos_en_farmacia`.`FECHA_DE_LA_OPERACION` >= :FECHAD' +
        'ESDE AND'
      
        '      `productos_en_farmacia`.`FECHA_DE_LA_OPERACION` <= :FECHAH' +
        'ASTA ;'
      ''
      '')
    Left = 160
    Top = 40
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
    object QFarmaciaFechaCODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
    end
    object QFarmaciaFechaCODIGO_MEDICAMENTO: TIntegerField
      FieldName = 'CODIGO_MEDICAMENTO'
    end
    object QFarmaciaFechaNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 100
    end
    object QFarmaciaFechaTIPO: TStringField
      FieldName = 'TIPO'
      Size = 100
    end
    object QFarmaciaFechaLOTE: TStringField
      FieldName = 'LOTE'
      Size = 100
    end
    object QFarmaciaFechaPRESENTACION: TStringField
      FieldName = 'PRESENTACION'
      Size = 100
    end
    object QFarmaciaFechaLABORATORIO: TStringField
      FieldName = 'LABORATORIO'
      Size = 100
    end
    object QFarmaciaFechaPROVEEDOR: TStringField
      FieldName = 'PROVEEDOR'
      Size = 100
    end
    object QFarmaciaFechaFECHA_DE_VENCIMIENTO: TDateField
      FieldName = 'FECHA_DE_VENCIMIENTO'
    end
    object QFarmaciaFechaPRECIO_COSTO_POR_UNIDAD: TIntegerField
      FieldName = 'PRECIO_COSTO_POR_UNIDAD'
    end
    object QFarmaciaFechaPRECIO_VENTA_POR_UNIDAD: TIntegerField
      FieldName = 'PRECIO_VENTA_POR_UNIDAD'
    end
    object QFarmaciaFechaENTRADA: TIntegerField
      FieldName = 'ENTRADA'
    end
    object QFarmaciaFechaFECHA_DE_ENTRADA: TDateField
      FieldName = 'FECHA_DE_ENTRADA'
    end
    object QFarmaciaFechaSALIDA: TIntegerField
      FieldName = 'SALIDA'
    end
    object QFarmaciaFechaFECHA_DE_SALIDA: TDateField
      FieldName = 'FECHA_DE_SALIDA'
    end
    object QFarmaciaFechaVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Size = 100
    end
    object QFarmaciaFechaOPERACION: TStringField
      FieldName = 'OPERACION'
    end
    object QFarmaciaFechaFECHA_DE_LA_OPERACION: TDateField
      FieldName = 'FECHA_DE_LA_OPERACION'
    end
  end
  object QFarmacia6Meses: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'SELECT  *'
      ' FROM `productos_en_Farmacia` '
      
        'WHERE `productos_en_farmacia`.`FECHA_DE_LA_OPERACION` <= :FECHA ' +
        ';')
    Left = 288
    Top = 37
    ParamData = <
      item
        DataType = ftDate
        Name = 'FECHA'
        Value = nil
      end>
    object QFarmacia6MesesCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object QFarmacia6MesesNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 100
    end
    object QFarmacia6MesesTIPO: TStringField
      FieldName = 'TIPO'
      Size = 100
    end
    object QFarmacia6MesesPROVEEDOR: TStringField
      FieldName = 'PROVEEDOR'
      Size = 100
    end
    object QFarmacia6MesesPRESENTACION: TStringField
      FieldName = 'PRESENTACION'
      Size = 100
    end
    object QFarmacia6MesesLABORATORIO: TStringField
      FieldName = 'LABORATORIO'
      Size = 100
    end
    object QFarmacia6MesesLOTE: TStringField
      FieldName = 'LOTE'
      Size = 100
    end
    object QFarmacia6MesesENTRADA: TIntegerField
      FieldName = 'ENTRADA'
    end
    object QFarmacia6MesesFECHA_DE_ENTRADA: TDateField
      FieldName = 'FECHA_DE_ENTRADA'
    end
    object QFarmacia6MesesSALIDA: TIntegerField
      FieldName = 'SALIDA'
    end
    object QFarmacia6MesesFECHA_DE_SALIDA: TDateField
      FieldName = 'FECHA_DE_SALIDA'
    end
    object QFarmacia6MesesPRECIO_COSTO_POR_UNIDAD: TIntegerField
      FieldName = 'PRECIO_COSTO_POR_UNIDAD'
    end
    object QFarmacia6MesesPRECIO_VENTA_POR_UNIDAD: TIntegerField
      FieldName = 'PRECIO_VENTA_POR_UNIDAD'
    end
    object QFarmacia6MesesFECHA_DE_VENCIMIENTO: TDateField
      FieldName = 'FECHA_DE_VENCIMIENTO'
    end
    object QFarmacia6MesesFECHA_DE_LA_OPERACION: TDateField
      FieldName = 'FECHA_DE_LA_OPERACION'
    end
    object QFarmacia6MesesOPERACION: TStringField
      FieldName = 'OPERACION'
      Size = 30
    end
    object QFarmacia6MesesCODIGO_MEDICAMENTO: TIntegerField
      FieldName = 'CODIGO_MEDICAMENTO'
    end
    object QFarmacia6MesesVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Size = 100
    end
  end
  object QAgregarProdFarmaciaHistorial: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'Insert Into `productos_en_farmacia_historial` '
      '('
      '`productos_en_farmacia_historial` .`Nombre`,'
      '`productos_en_farmacia_historial` .`CODIGO_MEDICAMENTO`,'
      '`productos_en_farmacia_historial` .`TIPO`,'
      '`productos_en_farmacia_historial` .`Entrada`,'
      '`productos_en_farmacia_historial` .`Fecha_de_vencimiento`,'
      '`productos_en_farmacia_historial` .`Precio_costo_por_unidad`,'
      '`productos_en_farmacia_historial` .`Precio_venta_por_unidad`,'
      '`productos_en_farmacia_historial` .`Fecha_de_entrada`,'
      '`productos_en_farmacia_historial` .`SALIDA`,'
      '`productos_en_farmacia_historial` .`FECHA_DE_SALIDA`,'
      '`productos_en_farmacia_historial` .`LOTE`,'
      '`productos_en_farmacia_historial` .`PRESENTACION`,'
      '`productos_en_farmacia_historial` .`LABORATORIO`,'
      '`productos_en_farmacia_historial` .`PROVEEDOR`,'
      '`productos_en_farmacia_historial` .`FECHA_DE_LA_OPERACION`,'
      '`productos_en_farmacia_historial` .`OPERACION`'
      ') '
      
        'Values (:Pnombre,:CODIGO_MEDICAMENTO,:Ptipo,:PEntrada,:PFechaVen' +
        'cimiento,'
      '        :PPrecioCostoPorUnidad,:PPrecioVentaPorUnidad,'
      '        :PFechadeentrada,:PSALIDA,:PFECHADESALIDA,'
      '        :PLote,:PPresentacion,:PLaboratorio,'
      '        :PProveedor,:PFECHA_DE_LA_OPERACION,:OPERACION);'
      '')
    Left = 287
    Top = 89
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Pnombre'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CODIGO_MEDICAMENTO'
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
      'FROM    `productos_en_farmacia` '
      'WHERE   `productos_en_farmacia`.`CODIGO` = :CODIGO ;')
    Left = 400
    Top = 184
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODIGO'
        Value = nil
      end>
  end
  object QEliminarRegistroF: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'DELETE   '
      'FROM    `productos_vencimiento_farmacia` '
      'WHERE   `productos_vencimiento_farmacia`.`CODIGO` = :CODIGO ;')
    Left = 400
    Top = 232
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODIGO'
        Value = nil
      end>
  end
  object QFarmaciaHistoricos: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'SELECT  *'
      ' FROM `productos_en_farmacia_historial` '
      
        'WHERE `productos_en_farmacia_historial`.`FECHA_DE_LA_OPERACION` ' +
        '>= :FECHADESDE AND'
      
        '      `productos_en_farmacia_historial`.`FECHA_DE_LA_OPERACION` ' +
        '<= :FECHAHASTA ;'
      '')
    Left = 592
    Top = 512
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
    object QFarmaciaHistoricosCODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
    end
    object QFarmaciaHistoricosCODIGO_MEDICAMENTO: TIntegerField
      FieldName = 'CODIGO_MEDICAMENTO'
    end
    object QFarmaciaHistoricosNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 100
    end
    object QFarmaciaHistoricosTIPO: TStringField
      FieldName = 'TIPO'
      Size = 100
    end
    object QFarmaciaHistoricosPROVEEDOR: TStringField
      FieldName = 'PROVEEDOR'
      Size = 100
    end
    object QFarmaciaHistoricosPRESENTACION: TStringField
      FieldName = 'PRESENTACION'
      Size = 100
    end
    object QFarmaciaHistoricosLABORATORIO: TStringField
      FieldName = 'LABORATORIO'
      Size = 100
    end
    object QFarmaciaHistoricosLOTE: TStringField
      FieldName = 'LOTE'
      Size = 100
    end
    object QFarmaciaHistoricosENTRADA: TIntegerField
      FieldName = 'ENTRADA'
    end
    object QFarmaciaHistoricosFECHA_DE_ENTRADA: TDateField
      FieldName = 'FECHA_DE_ENTRADA'
    end
    object QFarmaciaHistoricosSALIDA: TIntegerField
      FieldName = 'SALIDA'
    end
    object QFarmaciaHistoricosFECHA_DE_SALIDA: TDateField
      FieldName = 'FECHA_DE_SALIDA'
    end
    object QFarmaciaHistoricosPRECIO_COSTO_POR_UNIDAD: TIntegerField
      FieldName = 'PRECIO_COSTO_POR_UNIDAD'
    end
    object QFarmaciaHistoricosPRECIO_VENTA_POR_UNIDAD: TIntegerField
      FieldName = 'PRECIO_VENTA_POR_UNIDAD'
    end
    object QFarmaciaHistoricosFECHA_DE_VENCIMIENTO: TDateField
      FieldName = 'FECHA_DE_VENCIMIENTO'
    end
    object QFarmaciaHistoricosOPERACION: TStringField
      FieldName = 'OPERACION'
      Size = 30
    end
    object QFarmaciaHistoricosFECHA_DE_LA_OPERACION: TDateField
      FieldName = 'FECHA_DE_LA_OPERACION'
    end
  end
  object DSFarmaciaHistoricos: TUniDataSource
    DataSet = QFarmaciaHistoricos
    Left = 592
    Top = 560
  end
end
