object DM: TDM
  OldCreateOrder = False
  Height = 934
  Width = 1185
  object conserv: TUniConnection
    ProviderName = 'MySQL'
    LoginPrompt = True
    Left = 24
    Top = 126
  end
  object MySQLUniProvider1: TMySQLUniProvider
    Left = 96
    Top = 6
  end
  object DSserv: TUniDataSource
    DataSet = TABLEobjanteced
    Left = 24
    Top = 190
  end
  object concod: TUniConnection
    ProviderName = 'MySQL'
    LoginPrompt = True
    Left = 24
    Top = 70
  end
  object DSbancovocesamb: TUniDataSource
    DataSet = TABLEbancovocesamb
    Left = 367
    Top = 14
  end
  object DSestadosanimicos: TUniDataSource
    DataSet = TABLEestadosanimicos
    Left = 448
    Top = 14
  end
  object DSestadossalud: TUniDataSource
    DataSet = TABLEestadossalud
    Left = 606
    Top = 14
  end
  object DSprocedencias: TUniDataSource
    DataSet = TABLEprocedencias
    Left = 704
    Top = 14
  end
  object DSdptosysecc: TUniDataSource
    DataSet = TABLEdptosysecc
    Left = 784
    Top = 14
  end
  object DSexpedientesoperativos: TUniDataSource
    DataSet = TABLEexpedientesoperativos
    Left = 367
    Top = 126
  end
  object DSfaci: TUniDataSource
    DataSet = TABLEfaci
    Left = 526
    Top = 14
  end
  object DSfase: TUniDataSource
    DataSet = TABLEfase
    Left = 608
    Top = 126
  end
  object DSnivelaprobacion: TUniDataSource
    DataSet = TABLEnivelaprobacion
    Left = 704
    Top = 126
  end
  object DSnivelcompartimentacion: TUniDataSource
    DataSet = TABLEnivelcompartimentacion
    Left = 784
    Top = 126
  end
  object DSoperaciones: TUniDataSource
    DataSet = TABLEoperaciones
    Left = 448
    Top = 126
  end
  object DSaplicadopor: TUniDataSource
    DataSet = TABLEaplicadopor
    Left = 23
    Top = 246
  end
  object ProcOAbynombre: TUniStoredProc
    StoredProcName = 'ob ant nom'
    Connection = conserv
    Left = 184
    Top = 70
    ParamData = <
      item
        DataType = ftString
        Name = 'nombre'
        ParamType = ptInput
        Size = 20
        Value = nil
      end>
    CommandStoredProcName = 'ob ant nom'
  end
  object DSOAbynombre: TUniDataSource
    DataSet = ProcOAbynombre
    Left = 271
    Top = 70
  end
  object ProcOAbytel: TUniStoredProc
    StoredProcName = 'ob ant tel'
    Connection = conserv
    Left = 183
    Top = 14
    ParamData = <
      item
        DataType = ftString
        Name = 'telefono'
        ParamType = ptInput
        Size = 80
        Value = nil
      end>
    CommandStoredProcName = 'ob ant tel'
  end
  object DSOAbytel: TUniDataSource
    DataSet = ProcOAbytel
    Left = 271
    Top = 14
  end
  object ProcOAbycorreo: TUniStoredProc
    StoredProcName = 'ob ant correo'
    Connection = conserv
    Left = 184
    Top = 126
    ParamData = <
      item
        DataType = ftString
        Name = 'correo'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'ob ant correo'
  end
  object DSOAbycorreo: TUniDataSource
    DataSet = ProcOAbycorreo
    Left = 271
    Top = 126
  end
  object DSestados: TUniDataSource
    DataSet = TABLEestados
    Left = 88
    Top = 246
  end
  object DSfinalidad: TUniDataSource
    DataSet = TABLEfinalidad
    Left = 182
    Top = 190
  end
  object DSlugmon: TUniDataSource
    DataSet = TABLElugmon
    Left = 272
    Top = 182
  end
  object DSclavobser: TUniDataSource
    DataSet = TABLEclavobser
    Left = 528
    Top = 126
  end
  object DSmotcump: TUniDataSource
    DataSet = TABLEmotcump
    Left = 365
    Top = 238
  end
  object DSmotrev: TUniDataSource
    DataSet = TABLEmotrev
    Left = 448
    Top = 238
  end
  object DSprorrogas: TUniDataSource
    DataSet = TABLEprorrogas
    Left = 608
    Top = 238
  end
  object DSresult: TUniDataSource
    DataSet = TABLEresult
    Left = 705
    Top = 238
  end
  object DSsitios: TUniDataSource
    DataSet = TABLEsitios
    Left = 25
    Top = 350
  end
  object DStipotec: TUniDataSource
    DataSet = TABLEtipotec
    Left = 89
    Top = 350
  end
  object DScomest: TUniDataSource
    DataSet = TABLEcomest
    Left = 182
    Top = 294
  end
  object DScomtem: TUniDataSource
    DataSet = TABLEcomtem
    Left = 273
    Top = 294
  end
  object DScomtipos: TUniDataSource
    DataSet = TABLEcomtipos
    Left = 366
    Top = 342
  end
  object DSdescest: TUniDataSource
    DataSet = TABLEdescest
    Left = 449
    Top = 342
  end
  object DSdescdptos: TUniDataSource
    DataSet = TABLEdescdptos
    Left = 529
    Top = 238
  end
  object DSdescfase: TUniDataSource
    DataSet = TABLEdescfase
    Left = 608
    Top = 340
  end
  object DSdescfuentes: TUniDataSource
    DataSet = TABLEdescfuentes
    Left = 705
    Top = 342
  end
  object DSdesclug: TUniDataSource
    DataSet = TABLEdesclug
    Left = 25
    Top = 454
  end
  object DSdescmiget: TUniDataSource
    DataSet = TABLEdescmiget
    Left = 89
    Top = 454
  end
  object DSdescmiginv: TUniDataSource
    DataSet = TABLEdescmiginv
    Left = 182
    Top = 398
  end
  object DSdescmigtipos: TUniDataSource
    DataSet = TABLEdescmigtipos
    Left = 273
    Top = 398
  end
  object DSdescorigen: TUniDataSource
    DataSet = TABLEdescorigen
    Left = 366
    Top = 446
  end
  object DSdesctipos: TUniDataSource
    DataSet = TABLEdesctipos
    Left = 449
    Top = 446
  end
  object DSdoccat: TUniDataSource
    DataSet = TABLEdoccat
    Left = 529
    Top = 340
  end
  object DSdoctip: TUniDataSource
    DataSet = TABLEdoctip
    Left = 610
    Top = 446
  end
  object DSevnivpart: TUniDataSource
    DataSet = TABLEevnivpart
    Left = 705
    Top = 446
  end
  object DSevafiliacionesp: TUniDataSource
    DataSet = TABLEevafiliacionesp
    Left = 785
    Top = 341
  end
  object DSevorigen: TUniDataSource
    DataSet = TABLEevorigen
    Left = 25
    Top = 677
  end
  object DSevtipos: TUniDataSource
    DataSet = TABLEevtipos
    Left = 87
    Top = 677
  end
  object DSidiomas: TUniDataSource
    DataSet = TABLEidiomas
    Left = 181
    Top = 623
  end
  object DSinforg: TUniDataSource
    DataSet = TABLEinforg
    Left = 270
    Top = 624
  end
  object DSinftipos: TUniDataSource
    DataSet = TABLEinftipos
    Left = 366
    Top = 678
  end
  object DSevafiliacion: TUniDataSource
    DataSet = TABLEevafiliacion
    Left = 785
    Top = 234
  end
  object DSevest: TUniDataSource
    DataSet = TABLEevest
    Left = 610
    Top = 561
  end
  object DSmunic: TUniDataSource
    DataSet = TABLEmunic
    Left = 449
    Top = 677
  end
  object DSnomdestentreg: TUniDataSource
    DataSet = TABLEnomdestentreg
    Left = 529
    Top = 562
  end
  object DSnomformentreg: TUniDataSource
    DataSet = TABLEnomformentreg
    Left = 611
    Top = 678
  end
  object DSopcatpers: TUniDataSource
    DataSet = TABLEopcatpers
    Left = 705
    Top = 679
  end
  object DSopcatpersviejo: TUniDataSource
    DataSet = TABLEopcatpersviejo
    Left = 704
    Top = 562
  end
  object DSopest: TUniDataSource
    DataSet = TABLEopest
    Left = 24
    Top = 800
  end
  object DSopestemo: TUniDataSource
    DataSet = TABLEopestemo
    Left = 86
    Top = 800
  end
  object DSopfuent: TUniDataSource
    DataSet = TABLEopfuent
    Left = 180
    Top = 740
  end
  object DSophist: TUniDataSource
    DataSet = TABLEophist
    Left = 269
    Top = 740
  end
  object DSopsexo: TUniDataSource
    DataSet = TABLEopsexo
    Left = 365
    Top = 800
  end
  object DSoptematicas: TUniDataSource
    DataSet = TABLEoptematicas
    Left = 448
    Top = 799
  end
  object DSoptipos: TUniDataSource
    DataSet = TABLEoptipos
    Left = 530
    Top = 677
  end
  object DSorganismos: TUniDataSource
    DataSet = TABLEorganismos
    Left = 528
    Top = 799
  end
  object DSsectsocop: TUniDataSource
    DataSet = TABLEsectsocop
    Left = 528
    Top = 445
  end
  object DScategorias: TUniDataSource
    DataSet = TABLEcategorias
    Left = 613
    Top = 799
  end
  object DStipotrans: TUniDataSource
    DataSet = TABLEtipotrans
    Left = 24
    Top = 563
  end
  object DSusercarg: TUniDataSource
    DataSet = TABLEusercarg
    Left = 88
    Top = 563
  end
  object DSuserest: TUniDataSource
    DataSet = TABLEuserest
    Left = 182
    Top = 515
  end
  object DSversest: TUniDataSource
    DataSet = TABLEversest
    Left = 271
    Top = 516
  end
  object DSverstemas: TUniDataSource
    DataSet = TABLEverstemas
    Left = 365
    Top = 562
  end
  object DSverstipos: TUniDataSource
    DataSet = TABLEverstipos
    Left = 448
    Top = 562
  end
  object DSobjetivospaises: TUniDataSource
    DataSet = Tobjetivospaises
    Left = 872
    Top = 500
  end
  object DSmunicipios: TUniDataSource
    DataSet = Tmunicipios
    Left = 872
    Top = 234
  end
  object DSprovincias: TUniDataSource
    DataSet = Tprovincias
    Left = 872
    Top = 341
  end
  object InsertarDatosGenerales: TUniSQL
    Connection = conserv
    Left = 951
    Top = 72
  end
  object lastid: TUniQuery
    Connection = conserv
    SQL.Strings = (
      'select `objetivos datos generales`.`idObjetivo` '
      
        'from `objetivos datos generales` ORDER BY `idObjetivo` DESC LIMI' +
        'T 1;')
    Left = 872
    Top = 72
  end
  object DSlastid: TUniDataSource
    DataSet = lastid
    Left = 872
    Top = 16
  end
  object UniSQL1: TUniSQL
    Connection = conserv
    Left = 951
    Top = 16
  end
  object DSTserviciosagregados: TUniDataSource
    DataSet = Tserviciosagregados
    Left = 784
    Top = 562
  end
  object DStipodeservicio: TUniDataSource
    DataSet = Ttipodeservicio
    Left = 704
    Top = 799
  end
  object DSniveldelAprobacion: TUniDataSource
    DataSet = Tniveldeaprobacion
    Left = 784
    Top = 679
  end
  object InsertarDatosAntecedentes: TUniSQL
    Connection = conserv
    Left = 951
    Top = 234
  end
  object DScatOp: TUniDataSource
    DataSet = TcatOp
    Left = 872
    Top = 126
  end
  object DShistoricos: TUniDataSource
    DataSet = Thistoricos
    Left = 96
    Top = 128
  end
  object DSQlistunidadadm: TUniDataSource
    DataSet = Qlistunidadadm
    Left = 1112
    Top = 445
  end
  object Qlistunidadadm: TUniQuery
    Connection = conserv
    SQL.Strings = (
      'SELECT unidades.unidad '
      'FROM unidades')
    Left = 1112
    Top = 72
  end
  object DSlistcargoadm: TUniDataSource
    DataSet = Qlistcargoadm
    Left = 1112
    Top = 16
  end
  object Quser1: TUniQuery
    Connection = conserv
    SQL.Strings = (
      'SELECT usuarios.usuario '
      'FROM usuarios')
    Left = 1040
    Top = 72
  end
  object DSuser1: TUniDataSource
    DataSet = Quser1
    Left = 1040
    Top = 16
  end
  object DSeliminaruser: TUniDataSource
    DataSet = Qeliminaruser
    Left = 1040
    Top = 344
  end
  object DSusuarios: TUniDataSource
    DataSet = Tusuarios
    Left = 1112
    Top = 344
  end
  object Qinsertarusuario: TUniQuery
    Connection = conserv
    SQL.Strings = (
      'INSERT into `usuarios`(usuario,contrase'#241'a,cargo,unidad) '
      'values (:Puser,SHA(:Ppass),:Pcargo,:Punidad)')
    Left = 1112
    Top = 616
    ParamData = <
      item
        DataType = ftString
        Name = 'Puser'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'Ppass'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'Pcargo'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'Punidad'
        ParamType = ptInput
        Value = nil
      end>
  end
  object DSinsertarusuario: TUniDataSource
    DataSet = Qinsertarusuario
    Left = 1112
    Top = 560
  end
  object Qlistcargoadm: TUniQuery
    Connection = conserv
    SQL.Strings = (
      'SELECT cargos.cargos  '
      'FROM cargos')
    Left = 1112
    Top = 496
  end
  object Qeliminaruser: TUniQuery
    Connection = conserv
    SQL.Strings = (
      
        'DELETE QUICK FROM `usuarios` WHERE `usuarios`.`usuario` = :Puser' +
        ';')
    Left = 1040
    Top = 392
    ParamData = <
      item
        DataType = ftString
        Name = 'Puser'
        ParamType = ptInput
        Value = nil
      end>
  end
  object DSorganos: TUniDataSource
    DataSet = Torganos
    Left = 1040
    Top = 128
  end
  object DScontrolant: TUniDataSource
    DataSet = Tcontrolant
    Left = 1040
    Top = 445
  end
  object Qmodpass: TUniQuery
    Connection = conserv
    SQL.Strings = (
      
        'update `usuarios` set `usuarios`.`contrase'#241'a` = sha(:pnewpass) w' +
        'here `usuarios`.`usuario` = :puser')
    Left = 1040
    Top = 736
    ParamData = <
      item
        DataType = ftString
        Name = 'pnewpass'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'puser'
        ParamType = ptInput
        Value = nil
      end>
  end
  object DSmospass: TUniDataSource
    DataSet = Qmodpass
    Left = 1040
    Top = 672
  end
  object Qagregarcontrol: TUniQuery
    Connection = conserv
    SQL.Strings = (
      
        'insert into `control antecedentes`(fecha_entrada,fecha_salida,or' +
        'gano_solicitante,oficial,nivel_aprobacion,motivo,negativos,posit' +
        'ivos,ktejecutordelservicio) '
      
        'values(:Fentrada,:Fsalida,:Organo,:oficial,:Naprobacion,:motivo,' +
        ':negativos,:positivos,:ktejecutordelservicio);')
    Left = 784
    Top = 503
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'Fentrada'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftDateTime
        Name = 'Fsalida'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'Organo'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'oficial'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'Naprobacion'
        Value = nil
      end
      item
        DataType = ftString
        Name = 'motivo'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'negativos'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'positivos'
        Value = nil
      end
      item
        DataType = ftString
        Name = 'ktejecutordelservicio'
        ParamType = ptInput
        Value = nil
      end>
  end
  object DSagregarcontrol: TUniDataSource
    DataSet = Qagregarcontrol
    Left = 784
    Top = 445
  end
  object concheq: TUniConnection
    ProviderName = 'MySQL'
    LoginPrompt = True
    Left = 24
    Top = 8
  end
  object DSactreu: TUniDataSource
    DataSet = Tactreu
    Left = 872
    Top = 616
  end
  object DSdispositivos: TUniDataSource
    DataSet = Tdispositivos
    Left = 784
    Top = 799
  end
  object DSnivelaprov: TUniDataSource
    DataSet = Tnivelaprov
    Left = 1112
    Top = 128
  end
  object DSlevtelef: TUniDataSource
    DataSet = Tlevtelef
    Left = 872
    Top = 736
  end
  object TsalidaSIA: TUniTable
    TableName = 'control salida ficheros de llamadas por la sia'
    Connection = conserv
    Left = 268
    Top = 857
    object TsalidaSIAFECHA: TDateTimeField
      FieldName = 'FECHA'
    end
    object TsalidaSIAAPROBADOPOR: TStringField
      FieldName = 'APROBADOPOR'
      Size = 255
    end
    object TsalidaSIACANTLLAMADAS: TIntegerField
      FieldName = 'CANTLLAMADAS'
    end
    object TsalidaSIAEXPTECASO: TStringField
      FieldName = 'EXPTECASO'
      Size = 255
    end
    object TsalidaSIAORGANO: TStringField
      FieldName = 'ORGANO'
      Size = 40
    end
    object TsalidaSIAUNIDAD: TStringField
      FieldName = 'UNIDAD'
      Size = 255
    end
    object TsalidaSIAENTREGADOA: TStringField
      FieldName = 'ENTREGADOA'
      Size = 255
    end
    object TsalidaSIAREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Size = 255
    end
    object TsalidaSIAUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 255
    end
  end
  object DSsalidaSIA: TUniDataSource
    DataSet = TsalidaSIA
    Left = 182
    Top = 856
  end
  object Quser: TUniQuery
    Connection = conserv
    SQL.Strings = (
      'SELECT usuarios.usuario,usuarios.contrase'#241'a '
      'FROM usuarios '
      'where usuarios.usuario=:Puser AND '
      'usuarios.contrase'#241'a= SHA(:Ppass);')
    Left = 1040
    Top = 288
    ParamData = <
      item
        DataType = ftString
        Name = 'Puser'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'Ppass'
        ParamType = ptInput
        Value = nil
      end>
  end
  object DSuser: TUniDataSource
    DataSet = Quser
    Left = 1040
    Top = 234
  end
  object Qcargoyunidad: TUniQuery
    Connection = conserv
    SQL.Strings = (
      'SELECT usuarios.cargo,usuarios.unidad '
      'FROM usuarios '
      'where usuarios.usuario=:Puser;')
    Left = 1112
    Top = 288
    ParamData = <
      item
        DataType = ftString
        Name = 'Puser'
        ParamType = ptInput
        Value = ''
      end>
  end
  object DScargoyunidad: TUniDataSource
    DataSet = Qcargoyunidad
    Left = 1112
    Top = 234
  end
  object Quser2: TUniQuery
    Connection = conserv
    SQL.Strings = (
      'SELECT usuarios.usuario '
      'FROM usuarios'
      'where usuarios.usuario = :Puser')
    Left = 1040
    Top = 616
    ParamData = <
      item
        DataType = ftString
        Name = 'Puser'
        ParamType = ptInput
        Value = nil
      end>
  end
  object DSuser2: TUniDataSource
    DataSet = Quser2
    Left = 1040
    Top = 561
  end
  object InsertarDatosLaborales: TUniSQL
    Connection = conserv
    Left = 951
    Top = 128
  end
  object InsertarDatosResidenciales: TUniSQL
    Connection = conserv
    Left = 951
    Top = 184
  end
  object DSTestadosdeOpinion: TUniDataSource
    DataSet = TestadosdeOpinion
    Left = 952
    Top = 288
  end
  object Thistoricos: TUniQuery
    Connection = concheq
    SQL.Strings = (
      'SELECT * FROM `claves historicas`')
    Left = 96
    Top = 72
  end
  object TABLEobjanteced: TUniQuery
    Connection = conserv
    SQL.Strings = (
      'SELECT * FROM `obj ant view 2`')
    Left = 88
    Top = 192
  end
  object TABLEestados: TUniQuery
    Connection = concod
    SQL.Strings = (
      'SELECT * FROM `claves estados`')
    Left = 88
    Top = 296
  end
  object TABLEaplicadopor: TUniQuery
    Connection = concod
    SQL.Strings = (
      'SELECT * FROM `claves aplicadopor`')
    Left = 24
    Top = 296
  end
  object TABLEtipotec: TUniQuery
    Connection = concod
    SQL.Strings = (
      'SELECT * FROM `claves tipodetecnica`')
    Left = 88
    Top = 400
  end
  object TABLEsitios: TUniQuery
    Connection = concod
    SQL.Strings = (
      'SELECT * FROM `claves sitios`')
    Left = 24
    Top = 400
  end
  object TABLEdescmiget: TUniQuery
    Connection = concod
    SQL.Strings = (
      'SELECT * FROM `descubrimientos migracion etapas`')
    Left = 88
    Top = 512
  end
  object TABLEdesclug: TUniQuery
    Connection = concod
    SQL.Strings = (
      'SELECT * FROM `descubrimientos lugares`')
    Left = 24
    Top = 512
  end
  object TABLEusercarg: TUniQuery
    Connection = concod
    SQL.Strings = (
      'SELECT * FROM `usuarios cargo`')
    Left = 88
    Top = 620
  end
  object TABLEtipotrans: TUniQuery
    Connection = concod
    SQL.Strings = (
      'SELECT * FROM `tabla de tipos de transmision`')
    Left = 24
    Top = 619
  end
  object TABLEevtipos: TUniQuery
    Connection = concod
    SQL.Strings = (
      'SELECT * FROM `eventos tipos`')
    Left = 88
    Top = 740
  end
  object TABLEevorigen: TUniQuery
    Connection = concod
    SQL.Strings = (
      'SELECT * FROM `eventos origen`')
    Left = 24
    Top = 740
  end
  object TABLEopestemo: TUniQuery
    Connection = concod
    SQL.Strings = (
      'SELECT * FROM `opiniones estadosemocionales`')
    Left = 85
    Top = 855
  end
  object TABLEopest: TUniQuery
    Connection = concod
    SQL.Strings = (
      'SELECT * FROM `opiniones estados`')
    Left = 24
    Top = 855
  end
  object TABLEfinalidad: TUniQuery
    Connection = concod
    SQL.Strings = (
      'SELECT * FROM `claves finalidad`')
    Left = 183
    Top = 240
  end
  object TABLElugmon: TUniQuery
    Connection = concod
    SQL.Strings = (
      'SELECT * FROM `claves lugar monitoreo`')
    Left = 272
    Top = 240
  end
  object TABLEmotcump: TUniQuery
    Connection = concod
    SQL.Strings = (
      'SELECT * FROM `claves motivonocumplimiento`')
    Left = 365
    Top = 288
  end
  object TABLEcomest: TUniQuery
    Connection = concod
    SQL.Strings = (
      'SELECT * FROM `comentarios estados`')
    Left = 182
    Top = 344
  end
  object TABLEcomtem: TUniQuery
    Connection = concod
    SQL.Strings = (
      'SELECT * FROM `comentarios tematicas`')
    Left = 272
    Top = 344
  end
  object TABLEcomtipos: TUniQuery
    Connection = concod
    Left = 365
    Top = 392
  end
  object TABLEdescmiginv: TUniQuery
    Connection = concod
    SQL.Strings = (
      'SELECT * FROM `descubrimientos migracion involucrados`')
    Left = 182
    Top = 456
  end
  object TABLEdescmigtipos: TUniQuery
    Connection = concod
    SQL.Strings = (
      'SELECT * FROM `descubrimientos migracion tipos`')
    Left = 272
    Top = 456
  end
  object TABLEdescorigen: TUniQuery
    Connection = concod
    SQL.Strings = (
      'SELECT * FROM `descubrimientos origen`')
    Left = 365
    Top = 504
  end
  object TABLEuserest: TUniQuery
    Connection = concod
    SQL.Strings = (
      'SELECT * FROM `usuarios estado`')
    Left = 181
    Top = 573
  end
  object TABLEidiomas: TUniQuery
    Connection = concod
    SQL.Strings = (
      'SELECT * FROM idiomas')
    Left = 181
    Top = 677
  end
  object TABLEopfuent: TUniQuery
    Connection = concod
    SQL.Strings = (
      'SELECT * FROM `opiniones fuentes`')
    Left = 181
    Top = 800
  end
  object TABLEophist: TUniQuery
    Connection = concod
    SQL.Strings = (
      'SELECT * FROM `opiniones historicos`')
    Left = 268
    Top = 800
  end
  object TABLEinforg: TUniQuery
    Connection = concod
    SQL.Strings = (
      'SELECT * FROM `informes origen`')
    Left = 272
    Top = 677
  end
  object TABLEversest: TUniQuery
    Connection = concod
    SQL.Strings = (
      'SELECT * FROM `versiones estados`')
    Left = 272
    Top = 573
  end
  object TABLEverstemas: TUniQuery
    Connection = concod
    SQL.Strings = (
      'SELECT * FROM `versiones temas`')
    Left = 366
    Top = 621
  end
  object TABLEinftipos: TUniQuery
    Connection = concod
    SQL.Strings = (
      'SELECT * FROM `informes tipos`')
    Left = 366
    Top = 738
  end
  object TABLEopsexo: TUniQuery
    Connection = concod
    SQL.Strings = (
      'SELECT * FROM `opiniones sexo`')
    Left = 365
    Top = 858
  end
  object TABLEexpedientesoperativos: TUniQuery
    Connection = concod
    SQL.Strings = (
      'SELECT * FROM `casos expedientes operativos`')
    Left = 368
    Top = 184
  end
  object TABLEbancovocesamb: TUniQuery
    Connection = concod
    SQL.Strings = (
      'SELECT * FROM `bancovoces ambientes`')
    CachedUpdates = True
    Left = 368
    Top = 72
  end
  object TABLEestadosanimicos: TUniQuery
    Connection = concod
    SQL.Strings = (
      'SELECT * FROM `bancovoces estados animicos`')
    Left = 448
    Top = 72
  end
  object TABLEoperaciones: TUniQuery
    Connection = concod
    SQL.Strings = (
      'SELECT * FROM `casos operaciones`')
    Left = 448
    Top = 184
  end
  object TABLEmotrev: TUniQuery
    Connection = concod
    SQL.Strings = (
      'SELECT * FROM `claves motivorevision`')
    Left = 448
    Top = 288
  end
  object TABLEdescest: TUniQuery
    Connection = concod
    SQL.Strings = (
      'SELECT * FROM `descubrimientos estados`')
    Left = 448
    Top = 392
  end
  object TABLEdesctipos: TUniQuery
    Connection = concod
    SQL.Strings = (
      'SELECT * FROM `descubrimientos tipos`')
    Left = 448
    Top = 504
  end
  object TABLEverstipos: TUniQuery
    Connection = concod
    SQL.Strings = (
      'SELECT * FROM `versiones tipos`')
    Left = 448
    Top = 620
  end
  object TABLEmunic: TUniQuery
    Connection = concod
    SQL.Strings = (
      'SELECT * FROM municipios')
    Left = 448
    Top = 737
  end
  object TABLEoptematicas: TUniQuery
    Connection = concod
    SQL.Strings = (
      'SELECT * FROM `opiniones tematicas`')
    Left = 448
    Top = 858
  end
  object TABLEfaci: TUniQuery
    Connection = concod
    SQL.Strings = (
      'SELECT * FROM `casos faci`')
    Left = 528
    Top = 72
  end
  object TABLEclavobser: TUniQuery
    Connection = concod
    SQL.Strings = (
      'SELECT * FROM `claves observaciones`')
    Left = 528
    Top = 184
  end
  object TABLEdescdptos: TUniQuery
    Connection = concod
    SQL.Strings = (
      'SELECT * FROM `descubrimientos dptos`')
    Left = 528
    Top = 288
  end
  object TABLEdoccat: TUniQuery
    Connection = concod
    SQL.Strings = (
      'SELECT * FROM `doc categorias`')
    Left = 528
    Top = 392
  end
  object TABLEsectsocop: TUniQuery
    Connection = concod
    SQL.Strings = (
      'SELECT * FROM `sector social de los opinantes`')
    Left = 528
    Top = 504
  end
  object TABLEnomdestentreg: TUniQuery
    Connection = concod
    SQL.Strings = (
      'SELECT * FROM `nom destinos de entregas`')
    Left = 529
    Top = 620
  end
  object TABLEoptipos: TUniQuery
    Connection = concod
    SQL.Strings = (
      'SELECT * FROM `opiniones tipos`')
    Left = 531
    Top = 737
  end
  object TABLEestadossalud: TUniQuery
    Connection = concod
    SQL.Strings = (
      'SELECT * FROM `bancovoces estados salud`')
    Left = 608
    Top = 72
  end
  object TABLEfase: TUniQuery
    Connection = concod
    SQL.Strings = (
      'SELECT * FROM `casos fase`')
    Left = 608
    Top = 184
  end
  object TABLEprorrogas: TUniQuery
    Connection = concod
    SQL.Strings = (
      'SELECT * FROM `claves prorrogas`')
    Left = 608
    Top = 288
  end
  object TABLEdescfase: TUniQuery
    Connection = concod
    SQL.Strings = (
      'SELECT * FROM `descubrimientos fase`')
    Left = 608
    Top = 392
  end
  object TABLEdoctip: TUniQuery
    Connection = concod
    SQL.Strings = (
      'SELECT * FROM `doc tipos`')
    Left = 609
    Top = 504
  end
  object TABLEevest: TUniQuery
    Connection = concod
    SQL.Strings = (
      'SELECT * FROM `eventos estados`')
    Left = 611
    Top = 620
  end
  object TABLEnomformentreg: TUniQuery
    Connection = concod
    SQL.Strings = (
      'SELECT * FROM `nom formas de entregas`')
    Left = 608
    Top = 737
  end
  object TABLEorganismos: TUniQuery
    Connection = concod
    SQL.Strings = (
      'SELECT * FROM organismos')
    Left = 528
    Top = 858
  end
  object TABLEcategorias: TUniQuery
    Connection = concod
    SQL.Strings = (
      'SELECT * FROM `tabla de categorias`')
    Left = 613
    Top = 858
  end
  object TABLEprocedencias: TUniQuery
    Connection = concod
    SQL.Strings = (
      'SELECT * FROM `bancovoces procedencias`')
    CachedUpdates = True
    Left = 704
    Top = 72
  end
  object TABLEnivelaprobacion: TUniQuery
    Connection = concod
    SQL.Strings = (
      'SELECT * FROM `casos nivel de aprobacion`')
    Left = 704
    Top = 184
  end
  object TABLEresult: TUniQuery
    Connection = concod
    SQL.Strings = (
      'SELECT * FROM `claves resultados`')
    Left = 704
    Top = 288
  end
  object TABLEdescfuentes: TUniQuery
    Connection = concod
    SQL.Strings = (
      'SELECT * FROM `descubrimientos fuentes`')
    Left = 704
    Top = 392
  end
  object TABLEevnivpart: TUniQuery
    Connection = concod
    SQL.Strings = (
      'SELECT * FROM `eventos nivel de participacion`')
    Left = 704
    Top = 504
  end
  object TABLEopcatpersviejo: TUniQuery
    Connection = concod
    SQL.Strings = (
      'SELECT * FROM `opiniones catpersonaviejo`')
    Left = 704
    Top = 619
  end
  object TABLEopcatpers: TUniQuery
    Connection = concod
    SQL.Strings = (
      'SELECT * FROM `opiniones catpersona`')
    Left = 704
    Top = 736
  end
  object Ttipodeservicio: TUniQuery
    Connection = conserv
    SQL.Strings = (
      'SELECT * FROM `tipo de servicio`')
    Left = 704
    Top = 858
  end
  object TABLEdptosysecc: TUniQuery
    Connection = concod
    SQL.Strings = (
      'SELECT * FROM `casos departamentos y secciones`')
    Left = 784
    Top = 72
  end
  object TABLEnivelcompartimentacion: TUniQuery
    Connection = concod
    SQL.Strings = (
      'SELECT * FROM `casos nivel de compartimentacion`')
    Left = 784
    Top = 184
  end
  object TABLEevafiliacion: TUniQuery
    Connection = concod
    SQL.Strings = (
      'SELECT * FROM `eventos afiliacion`')
    Left = 784
    Top = 288
  end
  object TABLEevafiliacionesp: TUniQuery
    Connection = concod
    SQL.Strings = (
      'SELECT * FROM `eventos afiliacionespecifica`')
    Left = 784
    Top = 392
  end
  object Tserviciosagregados: TUniQuery
    Connection = conserv
    SQL.Strings = (
      'SELECT * FROM `servicios agregados`')
    Left = 784
    Top = 618
  end
  object Tniveldeaprobacion: TUniQuery
    Connection = conserv
    SQL.Strings = (
      'SELECT * FROM `niveles de aprobaci'#243'n`')
    Left = 784
    Top = 736
  end
  object TcatOp: TUniQuery
    Connection = conserv
    SQL.Strings = (
      'SELECT * FROM `objetivos categ operativa`')
    Left = 872
    Top = 184
  end
  object Tmunicipios: TUniQuery
    Connection = conserv
    SQL.Strings = (
      'SELECT * FROM `objetivos municipios`')
    Left = 872
    Top = 288
  end
  object Tprovincias: TUniQuery
    Connection = conserv
    SQL.Strings = (
      'SELECT * FROM `objetivos provincias`')
    Left = 872
    Top = 392
  end
  object Torganismos: TUniQuery
    Connection = conserv
    SQL.Strings = (
      'SELECT * FROM `objetivos organismos`')
    Left = 872
    Top = 444
  end
  object Tobjetivospaises: TUniQuery
    Connection = conserv
    SQL.Strings = (
      'SELECT * FROM `objetivos paises`')
    Left = 872
    Top = 562
  end
  object Tactreu: TUniQuery
    Connection = conserv
    SQL.Strings = (
      'SELECT * FROM `actualizaci'#243'n bd reu en los organos 2009`')
    Left = 872
    Top = 672
  end
  object Tdispositivos: TUniQuery
    Connection = conserv
    SQL.Strings = (
      'SELECT * FROM dispositivos')
    Left = 784
    Top = 856
  end
  object Tlevtelef: TUniQuery
    Connection = conserv
    SQL.Strings = (
      'SELECT * FROM `control de levantamientos telefonicos`')
    Left = 872
    Top = 800
  end
  object TestadosdeOpinion: TUniQuery
    Connection = concheq
    SQL.Strings = (
      'SELECT * FROM opiniones')
    Left = 952
    Top = 344
  end
  object Tnivelaprov: TUniQuery
    Connection = concod
    SQL.Strings = (
      'SELECT * FROM `casos nivel de aprobacion`')
    Left = 1112
    Top = 184
  end
  object Torganos: TUniQuery
    Connection = concheq
    SQL.Strings = (
      'SELECT * FROM `casos departamentos y secciones`')
    AutoCalcFields = False
    Left = 1040
    Top = 184
  end
  object Tusuarios: TUniQuery
    Connection = conserv
    SQL.Strings = (
      'SELECT * FROM usuarios')
    Left = 1112
    Top = 392
  end
  object Tcontrolant: TUniQuery
    Connection = conserv
    SQL.Strings = (
      'SELECT * FROM `control antecedentes`')
    Left = 1040
    Top = 496
  end
end
