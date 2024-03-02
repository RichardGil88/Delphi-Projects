object FActualizarDatosAntecedentes: TFActualizarDatosAntecedentes
  Left = 0
  Top = 0
  Caption = 'Actualizar datos antecedentes'
  ClientHeight = 694
  ClientWidth = 749
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 433
    Align = alClient
    Caption = 'Datos Antecedentes'
    TabOrder = 0
    Height = 261
    Width = 749
    object cxGrid1: TcxGrid
      Left = 2
      Top = 18
      Width = 745
      Height = 241
      Align = alClient
      TabOrder = 0
      object cxGrid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        NavigatorButtons.Insert.Visible = False
        NavigatorButtons.Append.Visible = False
        NavigatorButtons.Edit.Visible = False
        NavigatorButtons.Cancel.Visible = False
        NavigatorButtons.SaveBookmark.Visible = False
        NavigatorButtons.GotoBookmark.Visible = False
        FilterBox.Position = fpTop
        OnCellClick = cxGrid1DBTableView1CellClick
        DataController.DataModeController.GridMode = True
        DataController.DataSource = FActualizarDatosGenerales.DSobjant
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            FieldName = 'idSolicitud'
          end>
        DataController.Summary.SummaryGroups = <>
        FilterRow.Visible = True
        FilterRow.ApplyChanges = fracImmediately
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.NavigatorHints = True
        OptionsData.CancelOnExit = False
        OptionsData.Editing = False
        OptionsView.Navigator = True
        object cxGrid1DBTableView1IdObjetivo: TcxGridDBColumn
          DataBinding.FieldName = 'IdObjetivo'
          Width = 92
        end
        object cxGrid1DBTableView1fechaAlta: TcxGridDBColumn
          DataBinding.FieldName = 'fechaAlta'
          Width = 94
        end
        object cxGrid1DBTableView1fechaBaja: TcxGridDBColumn
          DataBinding.FieldName = 'fechaBaja'
          Width = 117
        end
        object cxGrid1DBTableView1chequeo: TcxGridDBColumn
          DataBinding.FieldName = 'chequeo'
          Width = 110
        end
        object cxGrid1DBTableView1caso: TcxGridDBColumn
          DataBinding.FieldName = 'caso'
          Width = 124
        end
        object cxGrid1DBTableView1dptoSeccion: TcxGridDBColumn
          DataBinding.FieldName = 'dptoSeccion'
          Width = 72
        end
        object cxGrid1DBTableView1oficial: TcxGridDBColumn
          DataBinding.FieldName = 'oficial'
        end
        object cxGrid1DBTableView1fase: TcxGridDBColumn
          DataBinding.FieldName = 'fase'
        end
        object cxGrid1DBTableView1niveldeAprobacion: TcxGridDBColumn
          DataBinding.FieldName = 'niveldeAprobacion'
          Width = 93
        end
        object cxGrid1DBTableView1niveldeCompartimentacion: TcxGridDBColumn
          DataBinding.FieldName = 'niveldeCompartimentacion'
          Width = 144
        end
        object cxGrid1DBTableView1categoriaOperativa: TcxGridDBColumn
          DataBinding.FieldName = 'categoriaOperativa'
          Width = 119
        end
        object cxGrid1DBTableView1ExpedienteOperativo: TcxGridDBColumn
          DataBinding.FieldName = 'ExpedienteOperativo'
          Width = 136
        end
        object cxGrid1DBTableView1sitio: TcxGridDBColumn
          DataBinding.FieldName = 'sitio'
        end
        object cxGrid1DBTableView1registro: TcxGridDBColumn
          DataBinding.FieldName = 'registro'
        end
        object cxGrid1DBTableView1finalidadOperativa: TcxGridDBColumn
          DataBinding.FieldName = 'finalidadOperativa'
          Width = 160
        end
        object cxGrid1DBTableView1cumplimientoFinalidad: TcxGridDBColumn
          DataBinding.FieldName = 'cumplimientoFinalidad'
          Width = 143
        end
        object cxGrid1DBTableView1motivoNoCumplimiento: TcxGridDBColumn
          DataBinding.FieldName = 'motivoNoCumplimiento'
          Width = 128
        end
        object cxGrid1DBTableView1interes: TcxGridDBColumn
          DataBinding.FieldName = 'interes'
          PropertiesClassName = 'TcxMemoProperties'
        end
        object cxGrid1DBTableView1tipodeTecnica: TcxGridDBColumn
          DataBinding.FieldName = 'tipodeTecnica'
          Width = 85
        end
        object cxGrid1DBTableView1estado: TcxGridDBColumn
          DataBinding.FieldName = 'estado'
        end
        object cxGrid1DBTableView1ktAlta: TcxGridDBColumn
          DataBinding.FieldName = 'ktAlta'
        end
        object cxGrid1DBTableView1ktBaja: TcxGridDBColumn
          DataBinding.FieldName = 'ktBaja'
        end
        object cxGrid1DBTableView1idSolicitud: TcxGridDBColumn
          DataBinding.FieldName = 'idSolicitud'
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object cxGroupBox2: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    Caption = 'Modificar Datos'
    TabOrder = 1
    Height = 433
    Width = 749
    object lbl1: TLabel
      Left = 24
      Top = 24
      Width = 51
      Height = 13
      Caption = 'Fecha Alta'
      Transparent = True
    end
    object lbl2: TLabel
      Left = 24
      Top = 64
      Width = 53
      Height = 13
      Caption = 'Fecha Baja'
      Transparent = True
    end
    object lbl3: TLabel
      Left = 24
      Top = 104
      Width = 43
      Height = 13
      Caption = 'Chequeo'
      Transparent = True
    end
    object lbl4: TLabel
      Left = 24
      Top = 144
      Width = 24
      Height = 13
      Caption = 'Caso'
      Transparent = True
    end
    object lbl5: TLabel
      Left = 24
      Top = 184
      Width = 62
      Height = 13
      Caption = 'Dpto Seccion'
      Transparent = True
    end
    object lbl6: TLabel
      Left = 192
      Top = 24
      Width = 29
      Height = 13
      Caption = 'Oficial'
      Transparent = True
    end
    object lbl7: TLabel
      Left = 24
      Top = 232
      Width = 23
      Height = 13
      Caption = 'Fase'
      Transparent = True
    end
    object lbl8: TLabel
      Left = 192
      Top = 64
      Width = 95
      Height = 13
      Caption = 'Nivel de Aprobaci'#243'n'
      Transparent = True
    end
    object lbl9: TLabel
      Left = 192
      Top = 104
      Width = 133
      Height = 13
      Caption = 'Nivel de Compartimentaci'#243'n'
      Transparent = True
    end
    object lbl10: TLabel
      Left = 480
      Top = 232
      Width = 98
      Height = 13
      Caption = 'Categoria Operativa'
      Transparent = True
    end
    object lbl11: TLabel
      Left = 370
      Top = 24
      Width = 105
      Height = 13
      Caption = 'Expediente Operativo'
      Transparent = True
    end
    object lbl12: TLabel
      Left = 370
      Top = 144
      Width = 20
      Height = 13
      Caption = 'Sitio'
      Transparent = True
    end
    object lbl13: TLabel
      Left = 370
      Top = 184
      Width = 40
      Height = 13
      Caption = 'Registro'
      Transparent = True
    end
    object lbl14: TLabel
      Left = 259
      Top = 232
      Width = 93
      Height = 13
      Caption = 'Finalidad Operativa'
      Transparent = True
    end
    object lbl15: TLabel
      Left = 192
      Top = 144
      Width = 108
      Height = 13
      Caption = 'Cumplimiento Finalidad'
      Transparent = True
    end
    object lbl16: TLabel
      Left = 192
      Top = 184
      Width = 114
      Height = 13
      Caption = 'Motivo No Cumplimiento'
      Transparent = True
    end
    object lbl17: TLabel
      Left = 24
      Top = 275
      Width = 35
      Height = 13
      Caption = 'Interes'
      Transparent = True
    end
    object lbl18: TLabel
      Left = 370
      Top = 64
      Width = 74
      Height = 13
      Caption = 'Tipo de T'#233'cnica'
      Transparent = True
    end
    object lbl19: TLabel
      Left = 370
      Top = 104
      Width = 33
      Height = 13
      Caption = 'Estado'
      Transparent = True
    end
    object lbl20: TLabel
      Left = 546
      Top = 24
      Width = 34
      Height = 13
      Caption = 'KT Alta'
      Transparent = True
    end
    object lbl21: TLabel
      Left = 544
      Top = 64
      Width = 36
      Height = 13
      Caption = 'KT Baja'
      Transparent = True
    end
    object cxButton1: TcxButton
      Left = 24
      Top = 392
      Width = 75
      Height = 25
      Caption = 'Actualizar'
      TabOrder = 0
      OnClick = cxButton1Click
    end
    object cxButton2: TcxButton
      Left = 118
      Top = 392
      Width = 95
      Height = 25
      Caption = 'Duplicar Registro'
      TabOrder = 1
      OnClick = cxButton2Click
    end
    object cxMemo1: TcxMemo
      Left = 24
      Top = 304
      TabOrder = 2
      Height = 57
      Width = 641
    end
    object cxTextEdit1: TcxTextEdit
      Left = 24
      Top = 120
      TabOrder = 3
      Width = 121
    end
    object cxTextEdit2: TcxTextEdit
      Left = 24
      Top = 160
      TabOrder = 4
      Width = 121
    end
    object cxTextEdit3: TcxTextEdit
      Left = 192
      Top = 37
      TabOrder = 5
      Width = 121
    end
    object cxTextEdit4: TcxTextEdit
      Left = 370
      Top = 200
      TabOrder = 6
      Width = 121
    end
    object cxTextEdit5: TcxTextEdit
      Left = 370
      Top = 120
      TabOrder = 7
      Width = 121
    end
    object cxTextEdit7: TcxTextEdit
      Left = 544
      Top = 40
      TabOrder = 8
      Width = 121
    end
    object cxTextEdit8: TcxTextEdit
      Left = 192
      Top = 160
      TabOrder = 9
      Width = 121
    end
    object cxTextEdit9: TcxTextEdit
      Left = 544
      Top = 80
      TabOrder = 10
      Width = 121
    end
    object cxDateEdit1: TcxDateEdit
      Left = 24
      Top = 37
      TabOrder = 11
      Width = 121
    end
    object cxDateEdit2: TcxDateEdit
      Left = 24
      Top = 80
      TabOrder = 12
      Width = 121
    end
    object cxButton3: TcxButton
      Left = 230
      Top = 392
      Width = 95
      Height = 25
      Caption = 'Nuevo Registro'
      TabOrder = 13
      OnClick = cxButton3Click
    end
    object cxLookupComboBox1: TcxLookupComboBox
      Left = 24
      Top = 200
      Properties.KeyFieldNames = 'dptoseccion'
      Properties.ListColumns = <
        item
          FieldName = 'dptoseccion'
        end>
      Properties.ListSource = DM.DSdptosysecc
      TabOrder = 14
      Width = 121
    end
    object cxLookupComboBox2: TcxLookupComboBox
      Left = 24
      Top = 248
      Properties.KeyFieldNames = 'fase'
      Properties.ListColumns = <
        item
          FieldName = 'fase'
        end>
      Properties.ListSource = DM.DSfase
      TabOrder = 15
      Width = 229
    end
    object cxLookupComboBox3: TcxLookupComboBox
      Left = 259
      Top = 248
      Properties.KeyFieldNames = 'Finalidad'
      Properties.ListColumns = <
        item
          FieldName = 'Finalidad'
        end>
      TabOrder = 16
      Width = 215
    end
    object cxLookupComboBox4: TcxLookupComboBox
      Left = 192
      Top = 120
      Properties.KeyFieldNames = 'niveldecompartimentacion'
      Properties.ListColumns = <
        item
          FieldName = 'niveldecompartimentacion'
        end>
      TabOrder = 17
      Width = 121
    end
    object cxLookupComboBox6: TcxLookupComboBox
      Left = 370
      Top = 37
      Properties.KeyFieldNames = 'ExpedienteOperativo'
      Properties.ListColumns = <
        item
          FieldName = 'ExpedienteOperativo'
        end>
      TabOrder = 18
      Width = 121
    end
    object cxLookupComboBox7: TcxLookupComboBox
      Left = 370
      Top = 80
      Properties.KeyFieldNames = 'Tipodetecnica'
      Properties.ListColumns = <
        item
          FieldName = 'Tipodetecnica'
        end>
      TabOrder = 19
      Width = 121
    end
    object cxLookupComboBox8: TcxLookupComboBox
      Left = 480
      Top = 248
      Properties.KeyFieldNames = 'categoria operativa'
      Properties.ListColumns = <
        item
          FieldName = 'categoria operativa'
        end>
      TabOrder = 20
      Width = 185
    end
    object cxLookupComboBox9: TcxLookupComboBox
      Left = 370
      Top = 160
      Properties.KeyFieldNames = 'Sitio'
      Properties.ListColumns = <
        item
          FieldName = 'Sitio'
        end>
      TabOrder = 21
      Width = 121
    end
    object cxLookupComboBox10: TcxLookupComboBox
      Left = 192
      Top = 200
      Properties.KeyFieldNames = 'motivoNoCumplimiento'
      Properties.ListColumns = <
        item
          FieldName = 'motivoNoCumplimiento'
        end>
      Properties.ListSource = DM.DSmotcump
      TabOrder = 22
      Width = 121
    end
    object cxTextEdit6: TcxTextEdit
      Left = 544
      Top = 120
      TabOrder = 23
      Width = 121
    end
    object cxLabel1: TcxLabel
      Left = 544
      Top = 102
      Caption = 'IdObjetivo'
      Transparent = True
    end
    object cxLookupComboBox5: TcxLookupComboBox
      Left = 192
      Top = 80
      Properties.KeyFieldNames = 'niveldeAprobacion'
      Properties.ListColumns = <
        item
          FieldName = 'niveldeAprobacion'
        end>
      Properties.ListSource = DM.DSnivelaprobacion
      TabOrder = 25
      Width = 121
    end
  end
  object UniSQL1: TUniSQL
    Connection = DM.conserv
    SQL.Strings = (
      'UPDATE `objetivos antecedentes`'
      'SET '
      '  fechaAlta=:Pfechaalta,'
      '  fechaBaja=:Pfechabaja,'
      '  chequeo=:Pchequeo,'
      '  caso=:Pcaso,'
      '  dptoSeccion=:Pdpto,'
      '  oficial=:Poficial,'
      '  fase=:Pfase,'
      '  niveldeAprobacion=:Pniveldeaprobacion,'
      '  niveldeCompartimentacion=:Pniveldecompartimentacion,'
      '  categoriaOperativa=:Pcategoria,'
      '  ExpedienteOperativo=:Pexpediente,'
      '  sitio=:Psitio,'
      '  registro=:Pregistro,'
      '  finalidadOperativa=:Pfinalidad,'
      '  cumplimientoFinalidad=:Pcumplimiento,'
      '  motivoNoCumplimiento=:Pmotivo,'
      '  interes=:Pinteres,'
      '  tipodeTecnica=:Ptipodetecnica,'
      '  estado=:Pestado,'
      '  ktAlta=:Pktalta,'
      '  ktBaja=:Pktbaja,'
      '  IdObjetivo=:Pidobjetivo'
      'WHERE `objetivos antecedentes`.IdSolicitud = :Pid;')
    Left = 696
    Top = 40
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Pfechaalta'
      end
      item
        DataType = ftUnknown
        Name = 'Pfechabaja'
      end
      item
        DataType = ftUnknown
        Name = 'Pchequeo'
      end
      item
        DataType = ftUnknown
        Name = 'Pcaso'
      end
      item
        DataType = ftUnknown
        Name = 'Pdpto'
      end
      item
        DataType = ftUnknown
        Name = 'Poficial'
      end
      item
        DataType = ftUnknown
        Name = 'Pfase'
      end
      item
        DataType = ftUnknown
        Name = 'Pniveldeaprobacion'
      end
      item
        DataType = ftUnknown
        Name = 'Pniveldecompartimentacion'
      end
      item
        DataType = ftUnknown
        Name = 'Pcategoria'
      end
      item
        DataType = ftUnknown
        Name = 'Pexpediente'
      end
      item
        DataType = ftUnknown
        Name = 'Psitio'
      end
      item
        DataType = ftUnknown
        Name = 'Pregistro'
      end
      item
        DataType = ftUnknown
        Name = 'Pfinalidad'
      end
      item
        DataType = ftUnknown
        Name = 'Pcumplimiento'
      end
      item
        DataType = ftUnknown
        Name = 'Pmotivo'
      end
      item
        DataType = ftUnknown
        Name = 'Pinteres'
      end
      item
        DataType = ftUnknown
        Name = 'Ptipodetecnica'
      end
      item
        DataType = ftUnknown
        Name = 'Pestado'
      end
      item
        DataType = ftUnknown
        Name = 'Pktalta'
      end
      item
        DataType = ftUnknown
        Name = 'Pktbaja'
      end
      item
        DataType = ftUnknown
        Name = 'Pidobjetivo'
      end
      item
        DataType = ftUnknown
        Name = 'Pid'
      end>
  end
  object UniSQL2: TUniSQL
    Connection = DM.conserv
    SQL.Strings = (
      'insert into `objetivos antecedentes`'
      '( fechaAlta,'
      '  fechaBaja,'
      '  chequeo,'
      '  caso,'
      '  dptoSeccion,'
      '  oficial,'
      '  fase,'
      '  niveldeAprobacion,'
      '  niveldeCompartimentacion,'
      '  categoriaOperativa,'
      '  ExpedienteOperativo,'
      '  sitio,'
      '  registro,'
      '  finalidadOperativa,'
      '  cumplimientoFinalidad,'
      '  motivoNoCumplimiento,'
      '  interes,'
      '  tipodeTecnica,'
      '  estado,'
      '  ktAlta,'
      '  ktBaja,'
      '  IdObjetivo)'
      'values'
      '(:Pfechaalta,'
      ':Pfechabaja,'
      ':Pchequeo,'
      ':Pcaso,'
      ':Pdpto,'
      ':Poficial,'
      ':Pfase,'
      ':Pniveldeaprobacion,'
      ':Pniveldecompartimentacion,'
      ':Pcategoria,'
      ':Pexpediente,'
      ':Psitio,'
      ':Pregistro,'
      ':Pfinalidad,'
      ':Pcumplimiento,'
      ':Pmotivo,'
      ':Pinteres,'
      ':Ptipodetecnica,'
      ':Pestado,'
      ':Pktalta,'
      ':Pktbaja,'
      ':Pidobjetivo);')
    Left = 696
    Top = 96
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Pfechaalta'
      end
      item
        DataType = ftUnknown
        Name = 'Pfechabaja'
      end
      item
        DataType = ftUnknown
        Name = 'Pchequeo'
      end
      item
        DataType = ftUnknown
        Name = 'Pcaso'
      end
      item
        DataType = ftUnknown
        Name = 'Pdpto'
      end
      item
        DataType = ftUnknown
        Name = 'Poficial'
      end
      item
        DataType = ftUnknown
        Name = 'Pfase'
      end
      item
        DataType = ftUnknown
        Name = 'Pniveldeaprobacion'
      end
      item
        DataType = ftUnknown
        Name = 'Pniveldecompartimentacion'
      end
      item
        DataType = ftUnknown
        Name = 'Pcategoria'
      end
      item
        DataType = ftUnknown
        Name = 'Pexpediente'
      end
      item
        DataType = ftUnknown
        Name = 'Psitio'
      end
      item
        DataType = ftUnknown
        Name = 'Pregistro'
      end
      item
        DataType = ftUnknown
        Name = 'Pfinalidad'
      end
      item
        DataType = ftUnknown
        Name = 'Pcumplimiento'
      end
      item
        DataType = ftUnknown
        Name = 'Pmotivo'
      end
      item
        DataType = ftUnknown
        Name = 'Pinteres'
      end
      item
        DataType = ftUnknown
        Name = 'Ptipodetecnica'
      end
      item
        DataType = ftUnknown
        Name = 'Pestado'
      end
      item
        DataType = ftUnknown
        Name = 'Pktalta'
      end
      item
        DataType = ftUnknown
        Name = 'Pktbaja'
      end
      item
        DataType = ftUnknown
        Name = 'Pidobjetivo'
      end>
  end
  object UniSQL3: TUniSQL
    Connection = DM.conserv
    SQL.Strings = (
      
        'insert into `objetivos antecedentes` (IdObjetivo) values (:Pidob' +
        'jetivo);')
    Left = 696
    Top = 152
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Pidobjetivo'
      end>
  end
end
