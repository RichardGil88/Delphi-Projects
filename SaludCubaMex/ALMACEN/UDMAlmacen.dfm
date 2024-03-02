object FDMAlmacen: TFDMAlmacen
  OldCreateOrder = False
  Height = 541
  Width = 940
  object QAgregarProdAlmacen: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'Insert Into `productos_en_almacen` '
      '('
      '`productos_en_almacen`.`Nombre`,'
      '`productos_en_almacen`.`CODIGO_PRODUCTO`,'
      '`productos_en_almacen`.`TIPO`,'
      '`productos_en_almacen`.`Entrada`,'
      '`productos_en_almacen`.`Fecha_de_vencimiento`,'
      '`productos_en_almacen`.`Precio_costo_por_unidad`,'
      '`productos_en_almacen`.`Precio_venta_por_unidad`,'
      '`productos_en_almacen`.`Fecha_de_entrada`,'
      '`productos_en_almacen`.`SALIDA`,'
      '`productos_en_almacen`.`FECHA_DE_SALIDA`,'
      '`productos_en_almacen`.`Existencia`,'
      '`productos_en_almacen`.`LOTE`,'
      '`productos_en_almacen`.`PRESENTACION`,'
      '`productos_en_almacen`.`LABORATORIO`,'
      '`productos_en_almacen`.`PROVEEDOR`,'
      '`productos_en_almacen`.`FECHA_DE_LA_OPERACION`,'
      '`productos_en_almacen`.`OPERACION`'
      ') '
      
        'Values (:Pnombre,:Pcodigo_producto,:Ptipo,:PEntrada,:PFechaVenci' +
        'miento,'
      '        :PPrecioCostoPorUnidad,:PPrecioVentaPorUnidad,'
      '        :PFechadeentrada,:PSALIDA,:PFECHADESALIDA,'
      '        :PExistencia,:PLote,:PPresentacion,:PLaboratorio,'
      '        :PProveedor,:PFECHA_DE_LA_OPERACION,:OPERACION);'
      '')
    Left = 207
    Top = 31
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Pnombre'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'Pcodigo_producto'
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
        Name = 'PExistencia'
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
  object QProduct_venc_Almac: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'SELECT * '
      'FROM  `productos_vencimiento_almacen`'
      
        'WHERE `productos_vencimiento_almacen`.`CODIGO_PRODUCTO`  = :PCOD' +
        'IGO  AND '
      
        '      `productos_vencimiento_almacen`.`FECHA_DE_VENCIMIENTO` = :' +
        'PFECHA AND'
      
        '      `productos_vencimiento_almacen`.`PRESENTACION` = :PPRESENT' +
        'ACION AND'
      
        '      `productos_vencimiento_almacen`.`LABORATORIO` = :PLABORATO' +
        'RIO AND'
      
        '      `productos_vencimiento_almacen`.`PROVEEDOR` = :PPROVEEDOR ' +
        'AND'
      
        '      `productos_vencimiento_almacen`.`PRECIO_VENTA_POR_UNIDAD` ' +
        '= :PPRECIOVENTA AND'
      
        '      `productos_vencimiento_almacen`.`PRECIO_COSTO_POR_UNIDAD` ' +
        '= :PPRECIOCOSTO AND'
      '      `productos_vencimiento_almacen`.`TIPO` = :PTIPO AND'
      '      `productos_vencimiento_almacen`.`LOTE` = :PLOTE;'
      '      '
      '')
    Left = 331
    Top = 32
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
    object QProduct_venc_AlmacCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object QProduct_venc_AlmacCODIGO_PRODUCTO: TIntegerField
      FieldName = 'CODIGO_PRODUCTO'
    end
    object QProduct_venc_AlmacNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 100
    end
    object QProduct_venc_AlmacLOTE: TStringField
      FieldName = 'LOTE'
      Size = 100
    end
    object QProduct_venc_AlmacEXISTENCIA: TIntegerField
      FieldName = 'EXISTENCIA'
    end
    object QProduct_venc_AlmacFECHA_DE_VENCIMIENTO: TDateField
      FieldName = 'FECHA_DE_VENCIMIENTO'
    end
    object QProduct_venc_AlmacCODIGO_ALMACEN: TIntegerField
      FieldName = 'CODIGO_ALMACEN'
    end
    object QProduct_venc_AlmacTIPO: TStringField
      FieldName = 'TIPO'
      Size = 100
    end
    object QProduct_venc_AlmacPROVEEDOR: TStringField
      FieldName = 'PROVEEDOR'
      Size = 100
    end
    object QProduct_venc_AlmacPRESENTACION: TStringField
      FieldName = 'PRESENTACION'
      Size = 100
    end
    object QProduct_venc_AlmacLABORATORIO: TStringField
      FieldName = 'LABORATORIO'
      Size = 100
    end
    object QProduct_venc_AlmacPRECIO_VENTA_POR_UNIDAD: TIntegerField
      FieldName = 'PRECIO_VENTA_POR_UNIDAD'
    end
    object QProduct_venc_AlmacPRECIO_COSTO_POR_UNIDAD: TIntegerField
      FieldName = 'PRECIO_COSTO_POR_UNIDAD'
    end
  end
  object QInsertarProducVencAlmac: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'INSERT INTO `productos_vencimiento_almacen` '
      '( `productos_vencimiento_almacen`.`CODIGO_PRODUCTO`,'
      '  `productos_vencimiento_almacen`.`NOMBRE`,'
      '  `productos_vencimiento_almacen`.`LOTE`,'
      '  `productos_vencimiento_almacen`.`EXISTENCIA`,'
      '  `productos_vencimiento_almacen`.`FECHA_DE_VENCIMIENTO`,'
      '  `productos_vencimiento_almacen`.`PRESENTACION`,'
      '  `productos_vencimiento_almacen`.`LABORATORIO`,'
      '  `productos_vencimiento_almacen`.`PROVEEDOR`,'
      '  `productos_vencimiento_almacen`.`PRECIO_VENTA_POR_UNIDAD`,'
      '  `productos_vencimiento_almacen`.`PRECIO_COSTO_POR_UNIDAD`,'
      '  `productos_vencimiento_almacen`.`TIPO` '
      ')'
      'VALUES'
      '(:PCODIGO,:PNOMBRE,:PLOTE,:PEXISTENCIA,:PFECHA_VENCIMIENTO,'
      
        ':PPRESENTACION,:PLABORATORIO,:PPROVEEDOR,:PPRECIOVENTA,:PPRECIOC' +
        'OSTO,:PTIPO);'
      ''
      '')
    Left = 328
    Top = 136
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
  object QUpdateProducVencAlmac: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'UPDATE `productos_vencimiento_almacen` '
      
        'SET    `productos_vencimiento_almacen`.`existencia`= :PEXISTENCI' +
        'A'
      ''
      
        'WHERE `productos_vencimiento_almacen`.`CODIGO_PRODUCTO`  = :PCOD' +
        'IGO  AND '
      
        '      `productos_vencimiento_almacen`.`FECHA_DE_VENCIMIENTO` = :' +
        'PFECHA AND'
      
        '      `productos_vencimiento_almacen`.`PRESENTACION` = :PPRESENT' +
        'ACION AND'
      
        '      `productos_vencimiento_almacen`.`LABORATORIO` = :PLABORATO' +
        'RIO AND'
      
        '      `productos_vencimiento_almacen`.`PROVEEDOR` = :PPROVEEDOR ' +
        'AND'
      
        '      `productos_vencimiento_almacen`.`PRECIO_VENTA_POR_UNIDAD` ' +
        '= :PPRECIOVENTA AND'
      
        '      `productos_vencimiento_almacen`.`PRECIO_COSTO_POR_UNIDAD` ' +
        '= :PPRECIOCOSTO AND'
      '      `productos_vencimiento_almacen`.`TIPO` = :PTIPO AND'
      '      `productos_vencimiento_almacen`.`LOTE` = :PLOTE ;')
    Left = 328
    Top = 85
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
  object QProducFecha: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'SELECT * FROM  `productos_vencimiento_almacen` ;')
    Left = 440
    Top = 32
    object QProducFechaCODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
    end
    object QProducFechaCODIGO_PRODUCTO: TIntegerField
      FieldName = 'CODIGO_PRODUCTO'
    end
    object QProducFechaNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 100
    end
    object QProducFechaLOTE: TStringField
      FieldName = 'LOTE'
      Size = 100
    end
    object QProducFechaPRESENTACION: TStringField
      FieldName = 'PRESENTACION'
      Size = 100
    end
    object QProducFechaLABORATORIO: TStringField
      FieldName = 'LABORATORIO'
      Size = 100
    end
    object QProducFechaPROVEEDOR: TStringField
      FieldName = 'PROVEEDOR'
      Size = 100
    end
    object QProducFechaEXISTENCIA: TIntegerField
      FieldName = 'EXISTENCIA'
    end
    object QProducFechaFECHA_DE_VENCIMIENTO: TDateField
      FieldName = 'FECHA_DE_VENCIMIENTO'
    end
  end
  object DSQProducFecha: TUniDataSource
    DataSet = QProducFecha
    Left = 440
    Top = 85
  end
  object QBuscarProd: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'select `productos_vencimiento_almacen`.*  '
      'from   `productos_vencimiento_almacen` ;')
    Left = 656
    Top = 16
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
    object QBuscarProdTIPO: TStringField
      FieldName = 'TIPO'
      Size = 100
    end
  end
  object DSBuscarProd: TUniDataSource
    DataSet = QBuscarProd
    Left = 656
    Top = 69
  end
  object DS1: TUniDataSource
    DataSet = Q1
    Left = 729
    Top = 69
  end
  object Q1: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'SELECT DISTINCT `productos_vencimiento_almacen`.`NOMBRE`'
      'FROM  `productos_vencimiento_almacen`;')
    Left = 729
    Top = 16
    object Q1NOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 100
    end
  end
  object DS2: TUniDataSource
    DataSet = Q2
    Left = 769
    Top = 69
  end
  object Q2: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'SELECT DISTINCT `productos_vencimiento_almacen`.`presentacion`'
      'FROM  `productos_vencimiento_almacen`;')
    Left = 769
    Top = 16
    object StringField15: TStringField
      FieldName = 'PRESENTACION'
      Size = 100
    end
  end
  object DS3: TUniDataSource
    DataSet = Q3
    Left = 814
    Top = 69
  end
  object Q3: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'SELECT DISTINCT `productos_vencimiento_almacen`.`proveedor`'
      'FROM  `productos_vencimiento_almacen`;')
    Left = 806
    Top = 16
    object Q3proveedor: TStringField
      FieldName = 'proveedor'
      Size = 100
    end
  end
  object DS4: TUniDataSource
    DataSet = Q4
    Left = 854
    Top = 69
  end
  object Q4: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'SELECT DISTINCT `productos_vencimiento_almacen`.`lote`'
      'FROM  `productos_vencimiento_almacen`;')
    Left = 854
    Top = 16
    object Q4lote: TStringField
      FieldName = 'lote'
      Size = 100
    end
  end
  object DSProd_Venc_Todos: TUniDataSource
    DataSet = QProd_Venc_Todos
    Left = 656
    Top = 173
  end
  object QProd_Venc_Todos: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'SELECT * FROM  `productos_vencimiento_almacen`;')
    Left = 656
    Top = 120
    object QProd_Venc_TodosCODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
    end
    object QProd_Venc_TodosCODIGO_PRODUCTO: TIntegerField
      FieldName = 'CODIGO_PRODUCTO'
    end
    object StringField3: TStringField
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
  object DSUltimoA: TUniDataSource
    DataSet = QUltimoA
    Left = 32
    Top = 80
  end
  object QUltimoA: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'SELECT  *'
      ' FROM  `productos_en_Almacen`  '
      ' WHERE `productos_en_Almacen`.`Ultimo_reg`=1 and '
      '       `productos_en_Almacen`.`Nombre`=:Pnombre ;')
    Left = 32
    Top = 32
    ParamData = <
      item
        DataType = ftString
        Name = 'Pnombre'
        Value = ''
      end>
    object QUltimoACODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object QUltimoACODIGO_PRODUCTO: TIntegerField
      FieldName = 'CODIGO_PRODUCTO'
    end
    object QUltimoANOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 100
    end
    object QUltimoATIPO: TStringField
      FieldName = 'TIPO'
      Size = 100
    end
    object QUltimoAENTRADA: TIntegerField
      FieldName = 'ENTRADA'
    end
    object QUltimoAFECHA_DE_ENTRADA: TDateField
      FieldName = 'FECHA_DE_ENTRADA'
    end
    object QUltimoASALIDA: TIntegerField
      FieldName = 'SALIDA'
    end
    object QUltimoAFECHA_DE_SALIDA: TDateField
      FieldName = 'FECHA_DE_SALIDA'
    end
    object QUltimoAEXISTENCIA: TIntegerField
      FieldName = 'EXISTENCIA'
    end
    object QUltimoAPRECIO_COSTO_POR_UNIDAD: TIntegerField
      FieldName = 'PRECIO_COSTO_POR_UNIDAD'
    end
    object QUltimoAPRECIO_VENTA_POR_UNIDAD: TIntegerField
      FieldName = 'PRECIO_VENTA_POR_UNIDAD'
    end
    object QUltimoAULTIMO_REG: TIntegerField
      FieldName = 'ULTIMO_REG'
    end
  end
  object QUpdateAlmacen: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'UPDATE `productos_en_almacen` '
      'SET productos_en_almacen.`Ultimo_reg`= 0'
      'WHERE `productos_en_almacen`.`CODIGO` = :PCODIGO;')
    Left = 102
    Top = 32
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PCODIGO'
        Value = nil
      end>
  end
  object QCODIGO_MED: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'SELECT `MEDICAMENTOS`.`CODIGO`'
      'FROM `MEDICAMENTOS`'
      'WHERE `MEDICAMENTOS`.`NOMBRE`=:PNOMBRE;')
    Left = 536
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PNOMBRE'
        Value = nil
      end>
  end
  object QCODIGO_INSU: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'SELECT `INSUMOS`.`CODIGO`'
      'FROM `INSUMOS`'
      'WHERE `INSUMOS`.`NOMBRE`=:PNOMBRE;')
    Left = 536
    Top = 72
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PNOMBRE'
        Value = nil
      end>
  end
  object QTIPO: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'SELECT `producto_tipo`.`TIPO`'
      'FROM   `producto_tipo`'
      'WHERE  `producto_tipo`.`PRODUCTO`=:PNOMBRE;'
      '')
    Left = 531
    Top = 128
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PNOMBRE'
        Value = nil
      end>
  end
  object DSUltimoF: TUniDataSource
    DataSet = QUltimoF
    Left = 32
    Top = 344
  end
  object QUltimoF: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'SELECT  *'
      ' FROM  `productos_en_Farmacia`  '
      ' WHERE `productos_en_Farmacia`.`Ultimo_reg`=1 and '
      '       `productos_en_Farmacia`.`Nombre`=:Pnombre ;')
    Left = 32
    Top = 296
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
  object QUpdateAlmacenF: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'UPDATE `productos_en_farmacia` '
      'SET    `productos_en_farmacia`.`Ultimo_reg`= 0'
      'WHERE  `productos_en_farmacia`.`CODIGO` = :PCODIGO;')
    Left = 112
    Top = 328
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
      '`productos_en_farmacia`.`Nombre`,'
      '`productos_en_farmacia`.`CODIGO_MEDICAMENTO`,'
      '`productos_en_farmacia`.`TIPO`,'
      '`productos_en_farmacia`.`Entrada`,'
      '`productos_en_farmacia`.`Salida`,'
      '`productos_en_farmacia`.`Fecha_de_vencimiento`,'
      '`productos_en_farmacia`.`Precio_venta_por_unidad`,'
      '`productos_en_farmacia`.`Precio_costo_por_unidad`,'
      '`productos_en_farmacia`.`Ultimo_reg`,'
      '`productos_en_farmacia`.`Fecha_de_entrada`,'
      '`productos_en_farmacia`.`Existencia`,'
      '`productos_en_farmacia`.`LOTE`,'
      '`productos_en_farmacia`.`PRESENTACION`,'
      '`productos_en_farmacia`.`LABORATORIO`,'
      '`productos_en_farmacia`.`PROVEEDOR`,'
      '`productos_en_farmacia`.`FECHA_DE_LA_OPERACION`,'
      '`productos_en_farmacia`.`OPERACION`'
      ''
      ') '
      
        'Values (:Pnombre,:Pcodigo_medicamento,:Ptipo,:PEntrada,:PSalida,' +
        ':PFechaVencimiento,'
      '        :PPrecioVentaPorUnidad,:PPrecioCostoPorUnidad,:PUltimo,'
      '        :PFechadeentrada,:PExistencia,:PLote,:PPresentacion,'
      
        '        :PLaboratorio,:PProveedor,:PFECHA_DE_LA_OPERACION,:OPERA' +
        'CION);'
      '')
    Left = 215
    Top = 295
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Pnombre'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'Pcodigo_medicamento'
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
        Name = 'PSalida'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PFechaVencimiento'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PPrecioVentaPorUnidad'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PPrecioCostoPorUnidad'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'Pultimo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'Pfechadeentrada'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PExistencia'
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
    Left = 363
    Top = 303
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
    Left = 360
    Top = 357
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
    Left = 360
    Top = 408
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
  object DSQAlmacenTodosUltimo: TUniDataSource
    DataSet = QAlmacenTodosUltimo
    Left = 48
    Top = 208
  end
  object QAlmacenTodosUltimo: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'SELECT  *'
      ' FROM `productos_en_Almacen` '
      
        'WHERE `productos_en_Almacen`.`FECHA_DE_LA_OPERACION` >= :FECHADE' +
        'SDE AND'
      
        '      `productos_en_Almacen`.`FECHA_DE_LA_OPERACION` <= :FECHAHA' +
        'STA ;'
      '')
    Left = 48
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
    object IntegerField1: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
    end
    object IntegerField2: TIntegerField
      FieldName = 'CODIGO_PRODUCTO'
    end
    object StringField1: TStringField
      FieldName = 'NOMBRE'
      Size = 100
    end
    object StringField2: TStringField
      FieldName = 'TIPO'
      Size = 100
    end
    object IntegerField3: TIntegerField
      FieldName = 'ENTRADA'
    end
    object DateField1: TDateField
      FieldName = 'FECHA_DE_ENTRADA'
    end
    object IntegerField4: TIntegerField
      FieldName = 'SALIDA'
    end
    object DateField2: TDateField
      FieldName = 'FECHA_DE_SALIDA'
    end
    object IntegerField5: TIntegerField
      FieldName = 'EXISTENCIA'
    end
    object IntegerField6: TIntegerField
      FieldName = 'PRECIO_COSTO_POR_UNIDAD'
    end
    object IntegerField7: TIntegerField
      FieldName = 'PRECIO_VENTA_POR_UNIDAD'
    end
    object IntegerField8: TIntegerField
      FieldName = 'ULTIMO_REG'
    end
    object QAlmacenTodosUltimoPROVEEDOR: TStringField
      FieldName = 'PROVEEDOR'
      Size = 100
    end
    object QAlmacenTodosUltimoPRESENTACION: TStringField
      FieldName = 'PRESENTACION'
      Size = 100
    end
    object QAlmacenTodosUltimoLABORATORIO: TStringField
      FieldName = 'LABORATORIO'
      Size = 100
    end
    object QAlmacenTodosUltimoLOTE: TStringField
      FieldName = 'LOTE'
      Size = 100
    end
    object QAlmacenTodosUltimoFECHA_DE_VENCIMIENTO: TDateField
      FieldName = 'FECHA_DE_VENCIMIENTO'
    end
    object QAlmacenTodosUltimoOPERACION: TStringField
      FieldName = 'OPERACION'
      Size = 30
    end
    object QAlmacenTodosUltimoFECHA_DE_LA_OPERACION: TDateField
      FieldName = 'FECHA_DE_LA_OPERACION'
    end
  end
  object QUpdateProducVencAlmacResta: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'UPDATE `productos_vencimiento_almacen` '
      
        'SET    `productos_vencimiento_almacen`.`existencia`= :PEXISTENCI' +
        'A'
      ''
      
        'WHERE `productos_vencimiento_almacen`.`CODIGO_PRODUCTO`  = :PCOD' +
        'IGO  AND '
      
        '      `productos_vencimiento_almacen`.`FECHA_DE_VENCIMIENTO` = :' +
        'PFECHA AND'
      
        '      `productos_vencimiento_almacen`.`PRESENTACION` = :PPRESENT' +
        'ACION AND'
      
        '      `productos_vencimiento_almacen`.`LABORATORIO` = :PLABORATO' +
        'RIO AND'
      
        '      `productos_vencimiento_almacen`.`PROVEEDOR` = :PPROVEEDOR ' +
        'AND'
      
        '      `productos_vencimiento_almacen`.`PRECIO_VENTA_POR_UNIDAD` ' +
        '= :PPRECIOVENTA AND'
      
        '      `productos_vencimiento_almacen`.`PRECIO_COSTO_POR_UNIDAD` ' +
        '= :PPRECIOCOSTO AND'
      '      `productos_vencimiento_almacen`.`TIPO` = :PTIPO AND'
      '      `productos_vencimiento_almacen`.`LOTE` = :PLOTE ;')
    Left = 704
    Top = 245
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
  object QUpdateAlmacenResta: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'UPDATE `productos_en_almacen` '
      'SET    `productos_en_almacen`.`EXISTENCIA` = :PEXISTENCIA'
      '       '
      'WHERE  `productos_en_almacen`.`Ultimo_reg`= 1  AND'
      '       `productos_en_almacen`.`CODIGO` = :PCODIGO;')
    Left = 358
    Top = 248
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
      end>
  end
  object QAlmacen6Meses: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'SELECT  *'
      ' FROM `productos_en_Almacen` '
      'WHERE `productos_en_Almacen`.`FECHA_DE_LA_OPERACION` <= :FECHA ;')
    Left = 864
    Top = 317
    ParamData = <
      item
        DataType = ftDate
        Name = 'FECHA'
        Value = nil
      end>
    object QAlmacen6MesesCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object QAlmacen6MesesCODIGO_PRODUCTO: TIntegerField
      FieldName = 'CODIGO_PRODUCTO'
    end
    object QAlmacen6MesesNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 100
    end
    object QAlmacen6MesesTIPO: TStringField
      FieldName = 'TIPO'
      Size = 100
    end
    object QAlmacen6MesesPROVEEDOR: TStringField
      FieldName = 'PROVEEDOR'
      Size = 100
    end
    object QAlmacen6MesesPRESENTACION: TStringField
      FieldName = 'PRESENTACION'
      Size = 100
    end
    object QAlmacen6MesesLABORATORIO: TStringField
      FieldName = 'LABORATORIO'
      Size = 100
    end
    object QAlmacen6MesesLOTE: TStringField
      FieldName = 'LOTE'
      Size = 100
    end
    object QAlmacen6MesesENTRADA: TIntegerField
      FieldName = 'ENTRADA'
    end
    object QAlmacen6MesesFECHA_DE_ENTRADA: TDateField
      FieldName = 'FECHA_DE_ENTRADA'
    end
    object QAlmacen6MesesSALIDA: TIntegerField
      FieldName = 'SALIDA'
    end
    object QAlmacen6MesesFECHA_DE_SALIDA: TDateField
      FieldName = 'FECHA_DE_SALIDA'
    end
    object QAlmacen6MesesPRECIO_COSTO_POR_UNIDAD: TIntegerField
      FieldName = 'PRECIO_COSTO_POR_UNIDAD'
    end
    object QAlmacen6MesesPRECIO_VENTA_POR_UNIDAD: TIntegerField
      FieldName = 'PRECIO_VENTA_POR_UNIDAD'
    end
    object QAlmacen6MesesFECHA_DE_VENCIMIENTO: TDateField
      FieldName = 'FECHA_DE_VENCIMIENTO'
    end
    object QAlmacen6MesesFECHA_DE_LA_OPERACION: TDateField
      FieldName = 'FECHA_DE_LA_OPERACION'
    end
    object QAlmacen6MesesOPERACION: TStringField
      FieldName = 'OPERACION'
      Size = 30
    end
  end
  object QAgregarProdAlmacenHistorial: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'Insert Into `productos_en_almacen_historial` '
      '('
      '`productos_en_almacen_historial`.`Nombre`,'
      '`productos_en_almacen_historial`.`CODIGO_PRODUCTO`,'
      '`productos_en_almacen_historial`.`TIPO`,'
      '`productos_en_almacen_historial`.`Entrada`,'
      '`productos_en_almacen_historial`.`Fecha_de_vencimiento`,'
      '`productos_en_almacen_historial`.`Precio_costo_por_unidad`,'
      '`productos_en_almacen_historial`.`Precio_venta_por_unidad`,'
      '`productos_en_almacen_historial`.`Fecha_de_entrada`,'
      '`productos_en_almacen_historial`.`SALIDA`,'
      '`productos_en_almacen_historial`.`FECHA_DE_SALIDA`,'
      '`productos_en_almacen_historial`.`LOTE`,'
      '`productos_en_almacen_historial`.`PRESENTACION`,'
      '`productos_en_almacen_historial`.`LABORATORIO`,'
      '`productos_en_almacen_historial`.`PROVEEDOR`,'
      '`productos_en_almacen_historial`.`FECHA_DE_LA_OPERACION`,'
      '`productos_en_almacen_historial`.`OPERACION`'
      ') '
      
        'Values (:Pnombre,:Pcodigo_producto,:Ptipo,:PEntrada,:PFechaVenci' +
        'miento,'
      '        :PPrecioCostoPorUnidad,:PPrecioVentaPorUnidad,'
      '        :PFechadeentrada,:PSALIDA,:PFECHADESALIDA,'
      '        :PLote,:PPresentacion,:PLaboratorio,'
      '        :PProveedor,:PFECHA_DE_LA_OPERACION,:OPERACION);'
      '')
    Left = 151
    Top = 119
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Pnombre'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'Pcodigo_producto'
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
      'FROM    `productos_en_almacen` '
      'WHERE   `productos_en_almacen`.`CODIGO` = :CODIGO ;')
    Left = 112
    Top = 376
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
      'FROM    `productos_vencimiento_almacen` '
      'WHERE   `productos_vencimiento_almacen`.`CODIGO` = :CODIGO ;')
    Left = 112
    Top = 440
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODIGO'
        Value = nil
      end>
  end
  object QBuscarExistencia: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'SELECT  `productos_en_almacen`.`ENTRADA`,'
      '        `productos_en_almacen`.`SALIDA`'
      'FROM    `productos_en_almacen`'
      'WHERE '
      '        `productos_en_almacen`.`NOMBRE` = :NOMBRE  AND'
      
        '        `productos_en_almacen`.`PRESENTACION` = :PRESENTACION AN' +
        'D'
      '        `productos_en_almacen`.`LABORATORIO` = :LABORATORIO  AND'
      '        `productos_en_almacen`.`LOTE` = :LOTE  AND'
      '        `productos_en_almacen`.`PROVEEDOR` = :PROVEEDOR  AND'
      
        '        `productos_en_almacen`.`FECHA_DE_VENCIMIENTO` = :FECHA_D' +
        'E_VENCIMIENTO ;'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      '')
    Left = 171
    Top = 190
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
  object DSAlmacenHistoricos: TUniDataSource
    DataSet = QAlmacenHistoricos
    Left = 672
    Top = 376
  end
  object QAlmacenHistoricos: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'SELECT  *'
      ' FROM `productos_en_almacen_historial` '
      
        'WHERE `productos_en_almacen_historial`.`FECHA_DE_LA_OPERACION` >' +
        '= :FECHADESDE AND'
      
        '      `productos_en_almacen_historial`.`FECHA_DE_LA_OPERACION` <' +
        '= :FECHAHASTA ;'
      '')
    Left = 672
    Top = 328
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
    object QAlmacenHistoricosCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object QAlmacenHistoricosCODIGO_PRODUCTO: TIntegerField
      FieldName = 'CODIGO_PRODUCTO'
    end
    object QAlmacenHistoricosNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 100
    end
    object QAlmacenHistoricosTIPO: TStringField
      FieldName = 'TIPO'
      Size = 100
    end
    object QAlmacenHistoricosPROVEEDOR: TStringField
      FieldName = 'PROVEEDOR'
      Size = 100
    end
    object QAlmacenHistoricosPRESENTACION: TStringField
      FieldName = 'PRESENTACION'
      Size = 100
    end
    object QAlmacenHistoricosLABORATORIO: TStringField
      FieldName = 'LABORATORIO'
      Size = 100
    end
    object QAlmacenHistoricosLOTE: TStringField
      FieldName = 'LOTE'
      Size = 100
    end
    object QAlmacenHistoricosENTRADA: TIntegerField
      FieldName = 'ENTRADA'
    end
    object QAlmacenHistoricosFECHA_DE_ENTRADA: TDateField
      FieldName = 'FECHA_DE_ENTRADA'
    end
    object QAlmacenHistoricosSALIDA: TIntegerField
      FieldName = 'SALIDA'
    end
    object QAlmacenHistoricosFECHA_DE_SALIDA: TDateField
      FieldName = 'FECHA_DE_SALIDA'
    end
    object QAlmacenHistoricosPRECIO_COSTO_POR_UNIDAD: TIntegerField
      FieldName = 'PRECIO_COSTO_POR_UNIDAD'
    end
    object QAlmacenHistoricosPRECIO_VENTA_POR_UNIDAD: TIntegerField
      FieldName = 'PRECIO_VENTA_POR_UNIDAD'
    end
    object QAlmacenHistoricosFECHA_DE_VENCIMIENTO: TDateField
      FieldName = 'FECHA_DE_VENCIMIENTO'
    end
    object QAlmacenHistoricosOPERACION: TStringField
      FieldName = 'OPERACION'
      Size = 30
    end
    object QAlmacenHistoricosFECHA_DE_LA_OPERACION: TDateField
      FieldName = 'FECHA_DE_LA_OPERACION'
    end
  end
  object QAgregarProdConsulta: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'Insert '
      'Into `productos_en_consulta` '
      '('
      '`productos_en_consulta`.`CODIGO_PRODUCTO`,'
      '`productos_en_consulta`.`NOMBRE`,'
      '`productos_en_consulta`.`TIPO`,'
      '`productos_en_consulta`.`PROVEEDOR`,'
      ''
      '`productos_en_consulta`.`LOTE`,'
      '`productos_en_consulta`.`PRESENTACION`,'
      '`productos_en_consulta`.`LABORATORIO`,'
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
      ':NOMBRE,'
      ':TIPO,'
      ':PROVEEDOR,'
      ':LOTE,'
      ':PRESENTACION,'
      ':LABORATORIO,'
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
    Left = 215
    Top = 351
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
      '      `productos_vencimiento_consulta`.`LOTE` = :LOTE AND'
      
        '      `productos_vencimiento_consulta`.`LABORATORIO` = :LABORATO' +
        'RIO AND'
      
        '      `productos_vencimiento_consulta`.`FECHA_DE_VENCIMIENTO` = ' +
        ':FECHA_DE_VENCIMIENTO AND'
      
        '      `productos_vencimiento_consulta`.`PRECIO_VENTA_POR_UNIDAD`' +
        ' = :PPRECIOVENTA AND'
      
        '      `productos_vencimiento_consulta`.`PRECIO_COSTO_POR_UNIDAD`' +
        ' = :PPRECIOCOSTO AND'
      '      `productos_vencimiento_consulta`.`TIPO` = :PTIPO ;'
      '      '
      ''
      ''
      ''
      '')
    Left = 507
    Top = 303
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
        Name = 'LOTE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'LABORATORIO'
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
  object QInsertarProducVencCons: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'INSERT INTO `productos_vencimiento_consulta` '
      ''
      '( '
      '  `productos_vencimiento_consulta`.`CODIGO_PRODUCTO`,'
      '  `productos_vencimiento_consulta`.`NOMBRE`,'
      '  `productos_vencimiento_consulta`.`PROVEEDOR`,'
      '  `productos_vencimiento_consulta`.`PRESENTACION`,'
      '  `productos_vencimiento_consulta`.`LOTE`,'
      '  `productos_vencimiento_consulta`.`LABORATORIO`,'
      '  `productos_vencimiento_consulta`.`FECHA_DE_VENCIMIENTO`,'
      '  `productos_vencimiento_consulta`.`PRECIO_VENTA_POR_UNIDAD`,'
      '  `productos_vencimiento_consulta`.`PRECIO_COSTO_POR_UNIDAD`,'
      '  `productos_vencimiento_consulta`.`TIPO` '
      ')'
      ''
      'VALUES'
      ''
      '('
      ':PCODIGO,'
      ':PNOMBRE,'
      ':PPROVEEDOR,'
      ':PRESENTACION,'
      ':LOTE,'
      ':LABORATORIO,'
      ':FECHA_DE_VENCIMIENTO,'
      ':PPRECIOVENTA,'
      ':PPRECIOCOSTO,'
      ':PTIPO'
      ');')
    Left = 512
    Top = 408
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
        Name = 'LOTE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'LABORATORIO'
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
  end
end
