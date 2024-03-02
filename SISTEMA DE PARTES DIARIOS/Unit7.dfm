object Fchequeos: TFchequeos
  Left = 0
  Top = 0
  Caption = 'CHEQUEOS'
  ClientHeight = 691
  ClientWidth = 897
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
    Top = 0
    Align = alTop
    Anchors = [akLeft, akRight, akBottom]
    Caption = 'AGREGAR'
    TabOrder = 0
    Height = 265
    Width = 897
    object cxMaskEdit1: TcxMaskEdit
      Left = 24
      Top = 32
      Properties.BeepOnError = True
      Properties.MaskKind = emkRegExprEx
      Properties.EditMask = '\d+'
      Properties.MaxLength = 0
      TabOrder = 0
      Width = 97
    end
    object cxLabel1: TcxLabel
      Left = 24
      Top = 16
      Caption = 'Clave'
      Transparent = True
    end
    object cxLookupComboBox1: TcxLookupComboBox
      Left = 127
      Top = 32
      ParentShowHint = False
      Properties.KeyFieldNames = 'LUGARES'
      Properties.ListColumns = <
        item
          FieldName = 'LUGARES'
        end>
      Properties.ListSource = DM.DSTlugardemonitoreo
      ShowHint = True
      TabOrder = 2
      Width = 169
    end
    object cxLabel2: TcxLabel
      Left = 127
      Top = 16
      Caption = 'Lugar de Monitoreo'
      Transparent = True
    end
    object cxMaskEdit2: TcxMaskEdit
      Left = 302
      Top = 32
      Properties.MaskKind = emkRegExprEx
      Properties.EditMask = '\d+'
      Properties.MaxLength = 0
      TabOrder = 4
      Width = 89
    end
    object cxLabel3: TcxLabel
      Left = 302
      Top = 16
      Caption = 'Tel'#233'fono'
      Transparent = True
    end
    object cxTextEdit1: TcxTextEdit
      Left = 397
      Top = 32
      TabOrder = 6
      Width = 97
    end
    object cxLabel4: TcxLabel
      Left = 397
      Top = 16
      Caption = 'Caso'
      Transparent = True
    end
    object cxDateEdit1: TcxDateEdit
      Left = 500
      Top = 32
      BeepOnEnter = False
      Properties.Kind = ckDateTime
      TabOrder = 8
      Width = 105
    end
    object cxLabel5: TcxLabel
      Left = 496
      Top = 16
      Caption = 'Fecha Alta'
      Transparent = True
    end
    object cxTextEdit2: TcxTextEdit
      Left = 397
      Top = 76
      TabOrder = 10
      Width = 208
    end
    object cxLabel6: TcxLabel
      Left = 397
      Top = 59
      Caption = 'Objetivo'
      Transparent = True
    end
    object cxLookupComboBox2: TcxLookupComboBox
      Left = 611
      Top = 32
      ParentShowHint = False
      Properties.KeyFieldNames = 'fase'
      Properties.ListColumns = <
        item
          FieldName = 'fase'
        end>
      Properties.ListSource = DM.DSfase
      ShowHint = True
      TabOrder = 12
      Width = 270
    end
    object cxLabel7: TcxLabel
      Left = 611
      Top = 16
      Caption = 'Fase'
      Transparent = True
    end
    object cxLookupComboBox3: TcxLookupComboBox
      Left = 127
      Top = 77
      ParentShowHint = False
      Properties.KeyFieldNames = 'dptoseccion'
      Properties.ListColumns = <
        item
          FieldName = 'dptoseccion'
        end>
      Properties.ListSource = DM.DSdptosysecc
      ShowHint = True
      TabOrder = 14
      Width = 169
    end
    object cxTextEdit4: TcxTextEdit
      Left = 24
      Top = 76
      TabOrder = 15
      Width = 97
    end
    object cxLabel10: TcxLabel
      Left = 24
      Top = 59
      Caption = 'Oficial'
      Transparent = True
    end
    object cxLookupComboBox4: TcxLookupComboBox
      Left = 611
      Top = 76
      ParentShowHint = False
      Properties.KeyFieldNames = 'Nivel Aprobaci'#243'n'
      Properties.ListColumns = <
        item
          FieldName = 'Nivel Aprobaci'#243'n'
        end>
      Properties.ListSource = DM.DSniveldelAprobacion
      ShowHint = True
      TabOrder = 17
      Width = 270
    end
    object cxLabel11: TcxLabel
      Left = 611
      Top = 59
      Caption = 'Nivel de Aprob.'
      Transparent = True
    end
    object cxTextEdit5: TcxTextEdit
      Left = 302
      Top = 76
      TabOrder = 19
      Width = 89
    end
    object cxLabel12: TcxLabel
      Left = 302
      Top = 59
      Caption = 'Especialista'
      Transparent = True
    end
    object cxCheckBox1: TcxCheckBox
      Left = 130
      Top = 172
      Caption = 'Permanente'
      TabOrder = 21
      Transparent = True
      Width = 81
    end
    object button1: TcxButton
      Left = 24
      Top = 216
      Width = 90
      Height = 33
      Caption = 'AGREGAR'
      Glyph.Data = {
        FA090000424DFA09000000000000360000002800000019000000190000000100
        200000000000C409000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000F000D06330000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000015006733A801AB5BEC0034186C000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000040220007135B848DE95FF99F7C8FF2CC579FB003E
        1A7D000000030000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000A042D007B3BC745DC91FF93F4C0FFA8F9CFFFB8FB
        DAFF38CA7FFF00491E8F0000000A000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000012073B03863FD53EDB89FF6CEDA3FF6FEEA6FF8BF4
        BCFFAFFCD7FFB8FADAFF3ECD81FF005621A10000001300000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000001A0A4C048F42E22ED77DFF37E480FF3DE581FF5FEB
        99FF79F0AEFF8BF3BCFF9BF7C9FF9FF5C8FF3ECE7FFF006228B50003001D0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000230D5D049340EE22D272FF15DC68FF03DB5CFF28E1
        73FF48E688FF5EEB99FF6EEDA5FF73EEAAFF74F0AAFF79EEADFF38CD79FF016C
        2AC4000702290000000000000000000000000000000000000000000000000000
        00000000000000000000002B0E6F03973EF713CD66FF0AD45AFF00D350FF00D8
        57FF09DC60FF24E170FF3AE47FFF48E789FF4EE88EFF4CE78CFF43E685FF48E6
        8AFF2CCB70FF02742CD3000E0438000000000000000000000000000000000000
        0000000000000000000400330F80009B3AFD04C658FF02CB4DFF00CA46FF00CF
        4BFF00D352FF04D85AFF15DD65FF2AE173FF31E278FF33E279FF2BE174FF17DE
        68FF02DC5CFF13DE69FF1EC764FF037A2BDF0015064800000000000000000000
        00000000000000000000001E0751009834FF00C04CFF00C13EFF00C13DFF12CB
        52FF30D369FF47DA7AFF58DF87FF4DE484FF39EA7CFF5FE790FF5DE58EFF54E4
        89FF48E281FF30DD73FF11D75DFF09D55BFF0FC257FF027E29EB001C075A0000
        00000000000000000000000000000036116E00BA3EFF00B933FF17C048FF4ED0
        74FF6FDA8DFF79DE95FF80E19CFF65E58FFF18C85AF3019439B535DF74FF77E9
        9EFF79E59EFF78E59BFF78E39BFF71E094FF4FDA7DFF16D05CFF00BC49FF0082
        24F50024066C00000000000000000000000000210A3700A624F436C95AFF88D9
        9AFF8EDCA0FF8ADEA0FF91E1A6FF6AE28FFF12BE4EED003B134C000000010062
        237B33DA6FFF86EAA5FF8DE6A8FF88E4A4FF89E3A4FF8FE2A6FF77DC93FF20CC
        5BFF00B53CFF00811CFC0029047F000000020000000000000000002E074824AB
        40EA85DE99FFA5E1B2FFA4E3B2FF6DE08DFF0BAC40DE002B0C3B000000000000
        000000000000004E19662FCD64F891EAACFFA2E7B5FF9AE5AEFF9AE3AEFFA0E3
        B0FF91DEA3FF37C962FF00AC30FF008213FF003001920000000B000000000000
        000000210137169C37DB87E19BFF6FDD8BFF069831CF001D062B000000000000
        0000000000000000000000000000003B0F5127BE57EF99EBB0FFB7EAC3FFADE6
        BBFFADE5BAFFB2E6BDFFABE1B6FF49C768FF00A421FF008007FF0031008A0000
        0000000000000000000000180128098C29C9048524BD0011021C000000000000
        00000000000000000000000000000000000000000000002C083F20AE49E29DEA
        B1FFCBEED2FFC0EAC9FFC0E9C7FFC4E9CAFFC1E7C6FF5AC871FF04A41EFF005F
        06C9000000000000000000000000000000000008000E0005000A000000000000
        000000000000000000000000000000000000000000000000000000000000001E
        032F159B39D29DE8AEFFDFF3E2FFD3EED7FFD1EDD6FFD6EED9FFE6F3E7FF59CD
        6AFF006906BC0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000012001F0E8728C299E4A8FFF0F9F2FFE7F5E9FFF0F9F1FFA9E5
        B0FF1D9427E30022003D00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000080011077217B090DE9CFFFEFFFEFF9FE0
        A6FF0B8214D30017002E00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000020008015F0F9D50C0
        5BFF077611C2000D001E00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0002002C0053000A001400000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000}
      TabOrder = 22
      OnClick = button1Click
    end
    object button2: TcxButton
      Left = 792
      Top = 216
      Width = 89
      Height = 33
      Caption = 'CANCELAR'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0820171799C61B1B9EC700000728000000000000000000000000000000000000
        000000000000000000020000386B3939C4E104044B8200000000000001080000
        A3D82020E5FF3D3DECFF0000BBE800000E2B0000000000000000000000000000
        000000000000000036750000E0FC6161E6FF0606E7FF00004F8300001A3C0E0E
        E5FF5757FBFF8888FDFF4A4AEAFF0000BEEE00001B4400000000000000000000
        000200005F980707DEFF8080F1FF9292FEFF5050F0FF0101A5CA00001B373939
        FFFF4F4FFFFF5F5FFFFF8787FDFF4040E4FF0000C4EF000018480000000D0000
        60A20707E0FF7E7EEDFF8F8FFFFF7575FFFF6A6AFFFF3636BFCA000003042222
        BBBF4242FFFF5252FFFF6464FFFF7E7EFEFF4A4AE4FF0101C8F7000093D60707
        D5FF7A7AF3FF8383FFFF7373FFFF6565FFFF5959FFFF1818585A000000000000
        04062020AEB04242FFFF4D4DFFFF5858FFFF6D6DFEFF3434DEFF0C0CD3FF6464
        F2FF7171FFFF6868FFFF5F5FFFFF4E4EF2F41313484B00000000000000000000
        00000000030319199C9F4F4FFFFF6A6AFFFF7979FFFF7C7CFEFF6868FCFF7878
        FFFF6464FFFF4E4EFFFF4545FBFC0C0C2E300000000000000000000000000000
        0000000000000000000024247B8F7E7EFEFF8585FFFF8686FFFF8888FFFF8888
        FFFF8E8EFFFF5A5AE6EE06062227000000000000000000000000000000000000
        0000000000000000001B00007BD21414DCFF8181FFFF8888FFFF8888FFFF8A8A
        FFFF5353F8FF0000ADFA00002166000000000000000000000000000000000000
        00000000042000007CD60101BCFF4C4CF5FF9090FFFF8F8FFFFF9090FFFF8F8F
        FFFF7D7DFFFF1313DCFF0000A4FD000030750000000200000000000000000000
        0121000078DD0000B3FF4B4BFAFFA1A1FFFF9B9BFFFF9D9DFFFF9292FAFC9D9D
        FFFF9E9EFFFF9292FFFF1313D0FF00009BFB00001F6400000000000000000000
        6DC10101ACFF6464F7FFAFAFFFFFA8A8FFFFAFAFFFFF3B3BB7BB101053579D9D
        FFFFACACFFFFABABFFFF9B9BFFFF1717D8FF00009BFF00001F44000000000202
        97DD5D5DFBFFBCBCFFFFB5B5FFFFBDBDFFFF5151B7B900000303000000000B0B
        5254A1A1F8FAB8B8FFFFB8B8FFFFA3A3FFFF1818D8FF00003665000000005757
        C9D0D1D1FFFFC0C0FFFFC9C9FFFF4040B0B40000000000000000000000000000
        00000E0E5254B3B3FFFFC4C4FFFFC5C5FFFFB2B2FFFF00004B52000000000606
        282A8686E2E5D8D8FFFF5454B3B5000008080000000000000000000000000000
        00000000000011115153B8B8F7F8C0C0F9FB2525707300000000000000000000
        000001010D0E0707A4A900000000000000000000000000000000000000000000
        000000000000000000000101676909097D7F0000000000000000}
      TabOrder = 23
      OnClick = button2Click
    end
    object cxRadioGroup2: TcxRadioGroup
      Left = 24
      Top = 116
      Caption = 'Atenci'#243'n Especial'
      Properties.Items = <>
      TabOrder = 24
      Height = 77
      Width = 100
    end
    object cxRadioButton3: TcxRadioButton
      Left = 33
      Top = 141
      Width = 61
      Height = 16
      Caption = 'Si'
      TabOrder = 25
      OnClick = cxRadioButton3Click
      Transparent = True
    end
    object cxRadioButton4: TcxRadioButton
      Left = 33
      Top = 163
      Width = 61
      Height = 16
      Caption = 'No'
      TabOrder = 26
      OnClick = cxRadioButton4Click
      Transparent = True
    end
    object cxTextEdit6: TcxTextEdit
      Left = 130
      Top = 137
      TabOrder = 27
      Width = 271
    end
    object cxLabel14: TcxLabel
      Left = 130
      Top = 116
      Caption = 'Motivo AE'
      Transparent = True
    end
    object cxMemo1: TcxMemo
      Left = 416
      Top = 137
      TabOrder = 29
      Height = 66
      Width = 465
    end
    object cxLabel16: TcxLabel
      Left = 416
      Top = 116
      Caption = 'Inter'#233's'
      Transparent = True
    end
    object cxLabel8: TcxLabel
      Left = 127
      Top = 59
      Caption = 'DPTO'
      Transparent = True
    end
  end
  object cxGroupBox2: TcxGroupBox
    Left = 0
    Top = 265
    Align = alClient
    Caption = 'CHEQUEOS'
    TabOrder = 1
    Height = 426
    Width = 897
    object AdvCircularProgress1: TAdvCircularProgress
      Left = 416
      Top = 168
      Width = 62
      Height = 65
      Appearance.BackGroundColor = clNone
      Appearance.BorderColor = clNone
      Appearance.ActiveSegmentColor = 16752543
      Appearance.InActiveSegmentColor = clSilver
      Appearance.TransitionSegmentColor = 10485760
      Appearance.ProgressSegmentColor = 4194432
      Interval = 100
    end
    object cxGrid2: TcxGrid
      Left = 2
      Top = 18
      Width = 893
      Height = 406
      Align = alClient
      TabOrder = 0
      object cxGrid1DBTableView1: TcxGridDBTableView
        PopupMenu = AdvPopupMenu1
        NavigatorButtons.ConfirmDelete = False
        NavigatorButtons.PriorPage.Visible = True
        NavigatorButtons.Prior.Visible = True
        NavigatorButtons.Insert.Visible = True
        NavigatorButtons.Append.Visible = True
        NavigatorButtons.Delete.Visible = True
        NavigatorButtons.Edit.Visible = True
        NavigatorButtons.Post.Visible = True
        NavigatorButtons.Cancel.Visible = True
        NavigatorButtons.Refresh.Visible = True
        NavigatorButtons.SaveBookmark.Visible = True
        NavigatorButtons.GotoBookmark.Visible = True
        NavigatorButtons.Filter.Visible = True
        FilterBox.Visible = fvNever
        OnCellClick = cxGrid1DBTableView1CellClick
        DataController.DataModeController.SmartRefresh = True
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Format = 'CANTIDAD=#'
            Kind = skCount
            FieldName = 'CLAVES'
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            FieldName = 'CLAVES'
            Column = cxGrid1DBTableView1UNIDAD
          end>
        DataController.Summary.SummaryGroups = <>
        DateTimeHandling.Filters = [dtfRelativeDays, dtfRelativeDayPeriods, dtfRelativeYears, dtfMonths, dtfYears]
        Filtering.ColumnFilteredItemsList = True
        FilterRow.Visible = True
        OptionsBehavior.IncSearch = True
        OptionsBehavior.NavigatorHints = True
        OptionsCustomize.ColumnHidingOnGrouping = False
        OptionsCustomize.GroupRowSizing = True
        OptionsData.Appending = True
        OptionsSelection.CellMultiSelect = True
        OptionsView.Navigator = True
        OptionsView.CellAutoHeight = True
        OptionsView.Footer = True
        OptionsView.Indicator = True
        OptionsView.IndicatorWidth = 15
        object cxGrid1DBTableView1UNIDAD: TcxGridDBColumn
          DataBinding.FieldName = 'UNIDAD'
        end
        object cxGrid1DBTableView1CLAVES: TcxGridDBColumn
          DataBinding.FieldName = 'CLAVES'
        end
        object cxGrid1DBTableView1LMONITOREO: TcxGridDBColumn
          DataBinding.FieldName = 'LMONITOREO'
          Width = 250
        end
        object cxGrid1DBTableView1TELFONO: TcxGridDBColumn
          DataBinding.FieldName = 'TEL'#201'FONO'
          Width = 117
        end
        object cxGrid1DBTableView1ESTADO: TcxGridDBColumn
          DataBinding.FieldName = 'ESTADO'
        end
        object cxGrid1DBTableView1CASO: TcxGridDBColumn
          DataBinding.FieldName = 'CASO'
        end
        object cxGrid1DBTableView1FECHAALTA: TcxGridDBColumn
          DataBinding.FieldName = 'FECHAALTA'
        end
        object cxGrid1DBTableView1OBJETIVO: TcxGridDBColumn
          DataBinding.FieldName = 'OBJETIVO'
          Width = 135
        end
        object cxGrid1DBTableView1FASE: TcxGridDBColumn
          DataBinding.FieldName = 'FASE'
        end
        object cxGrid1DBTableView1DPTO: TcxGridDBColumn
          DataBinding.FieldName = 'DPTO'
          Width = 119
        end
        object cxGrid1DBTableView1OFICIAL: TcxGridDBColumn
          DataBinding.FieldName = 'OFICIAL'
          Width = 130
        end
        object cxGrid1DBTableView1NIVELDEAPROBACION: TcxGridDBColumn
          DataBinding.FieldName = 'NIVELDEAPROBACION'
          Width = 224
        end
        object cxGrid1DBTableView1PERMANENTEONO: TcxGridDBColumn
          DataBinding.FieldName = 'PERMANENTEONO'
          Width = 94
        end
        object cxGrid1DBTableView1ATENCIONESPECIAL: TcxGridDBColumn
          DataBinding.FieldName = 'ATENCIONESPECIAL'
          Width = 104
        end
        object cxGrid1DBTableView1MOTIVOAE: TcxGridDBColumn
          DataBinding.FieldName = 'MOTIVOAE'
          Width = 1013
        end
        object cxGrid1DBTableView1CUMPLIMIENTO: TcxGridDBColumn
          DataBinding.FieldName = 'CUMPLIMIENTO'
          Width = 81
        end
        object cxGrid1DBTableView1MOTIVO: TcxGridDBColumn
          DataBinding.FieldName = 'MOTIVO'
          Width = 529
        end
        object cxGrid1DBTableView1ESPECIALISTA: TcxGridDBColumn
          DataBinding.FieldName = 'ESPECIALISTA'
          Width = 104
        end
        object cxGrid1DBTableView1FECHABAJA: TcxGridDBColumn
          DataBinding.FieldName = 'FECHABAJA'
        end
        object cxGrid1DBTableView1USUARIO: TcxGridDBColumn
          DataBinding.FieldName = 'USUARIO'
        end
        object cxGrid1DBTableView1INTERES: TcxGridDBColumn
          DataBinding.FieldName = 'INTERES'
          Width = 755
        end
        object cxGrid1DBTableView1IDCHEQUEO: TcxGridDBColumn
          DataBinding.FieldName = 'IDCHEQUEO'
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object cxButton1: TcxButton
      Left = 750
      Top = 19
      Width = 123
      Height = 33
      Caption = 'EXPORTAR A XLS'
      TabOrder = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Arial Black'
      Font.Style = []
      ParentFont = False
      OnClick = cxButton1Click
    end
  end
  object AdvPopupMenu1: TAdvPopupMenu
    Version = '2.5.3.0'
    Left = 688
    Top = 480
    object DarBaja2: TMenuItem
      Caption = 'Dar Baja'
      OnClick = DarBaja2Click
    end
    object PonerenAtencinEspecial1: TMenuItem
      Caption = 'Poner en Atenci'#243'n Especial'
      OnClick = PonerenAtencinEspecial1Click
    end
    object QuitarAtencinEspecial1: TMenuItem
      Caption = 'Quitar Atenci'#243'n Especial'
      OnClick = QuitarAtencinEspecial1Click
    end
    object Permanente1: TMenuItem
      Caption = 'Poner en Permanente'
      OnClick = Permanente1Click
    end
    object QuitarPermanente1: TMenuItem
      Caption = 'Quitar Permanente'
      OnClick = QuitarPermanente1Click
    end
  end
end
