object Fmain: TFmain
  Left = 0
  Top = 0
  Caption = 'Accesos AAA'
  ClientHeight = 664
  ClientWidth = 936
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 0
    Align = alClient
    Caption = 'Accesos AAA'
    TabOrder = 0
    Height = 559
    Width = 936
    object cxGroupBox2: TcxGroupBox
      Left = 3
      Top = 15
      Align = alLeft
      Caption = 'CLI'
      TabOrder = 0
      Height = 534
      Width = 174
      object cxGrid1: TcxGrid
        Left = 3
        Top = 15
        Width = 168
        Height = 509
        Align = alClient
        TabOrder = 0
        object cxGrid1DBTableView1: TcxGridDBTableView
          FilterBox.Visible = fvAlways
          OnCellClick = cxGrid1DBTableView1CellClick
          DataController.DataSource = DM.DSQcli
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skCount
              FieldName = 'cli'
              Column = cxGrid1DBTableView1cli
            end>
          DataController.Summary.SummaryGroups = <>
          FilterRow.Visible = True
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsView.Footer = True
          OptionsView.Indicator = True
          object cxGrid1DBTableView1id: TcxGridDBColumn
            DataBinding.FieldName = 'id'
            Visible = False
            Width = 46
          end
          object cxGrid1DBTableView1cli: TcxGridDBColumn
            Caption = 'CLI'
            DataBinding.FieldName = 'cli'
            Width = 102
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
    object cxGroupBox3: TcxGroupBox
      Left = 177
      Top = 15
      Align = alLeft
      Caption = 'User Name'
      TabOrder = 1
      Height = 534
      Width = 185
      object cxGrid2: TcxGrid
        Left = 3
        Top = 15
        Width = 179
        Height = 509
        Align = alClient
        TabOrder = 0
        object cxGrid2DBTableView1: TcxGridDBTableView
          FilterBox.Visible = fvAlways
          OnCellClick = cxGrid2DBTableView1CellClick
          DataController.DataSource = DM.DSQusername
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skCount
              FieldName = 'username'
              Column = cxGrid2DBTableView1username
            end>
          DataController.Summary.SummaryGroups = <>
          FilterRow.Visible = True
          OptionsSelection.CellSelect = False
          OptionsView.Footer = True
          OptionsView.Indicator = True
          object cxGrid2DBTableView1id: TcxGridDBColumn
            DataBinding.FieldName = 'id'
            Visible = False
            Width = 42
          end
          object cxGrid2DBTableView1username: TcxGridDBColumn
            Caption = 'User Name'
            DataBinding.FieldName = 'username'
            Width = 111
          end
        end
        object cxGrid2Level1: TcxGridLevel
          GridView = cxGrid2DBTableView1
        end
      end
    end
    object cxGroupBox4: TcxGroupBox
      Left = 362
      Top = 15
      Align = alClient
      Caption = 'Log de Accesos'
      TabOrder = 2
      Height = 534
      Width = 571
      object cxGroupBox5: TcxGroupBox
        Left = 3
        Top = 15
        Align = alTop
        Caption = 'Ingrese un rango de fecha (misma semana)'
        TabOrder = 0
        Height = 106
        Width = 565
        object lbl1: TLabel
          Left = 24
          Top = 56
          Width = 45
          Height = 13
          Caption = 'Semana :'
        end
        object lbl2: TLabel
          Left = 72
          Top = 56
          Width = 3
          Height = 13
          Caption = ' '
        end
        object lbl3: TLabel
          Left = 192
          Top = 56
          Width = 45
          Height = 13
          Caption = 'Semana :'
        end
        object lbl4: TLabel
          Left = 242
          Top = 56
          Width = 3
          Height = 13
          Caption = ' '
        end
        object cxDateEdit1: TcxDateEdit
          Left = 24
          Top = 31
          Properties.OnEditValueChanged = cxDateEdit1PropertiesEditValueChanged
          TabOrder = 0
          Width = 145
        end
        object cxLabel1: TcxLabel
          Left = 24
          Top = 12
          Caption = 'Fecha y Hora  inicio'
          Transparent = True
        end
        object cxButton1: TcxButton
          Left = 376
          Top = 31
          Width = 75
          Height = 25
          Caption = 'Buscar'
          Enabled = False
          TabOrder = 2
          OnClick = cxButton1Click
        end
        object cxLabel2: TcxLabel
          Left = 192
          Top = 12
          Caption = 'Fecha y Hora Fin'
          Transparent = True
        end
        object cxDateEdit2: TcxDateEdit
          Left = 192
          Top = 31
          Properties.OnEditValueChanged = cxDateEdit2PropertiesEditValueChanged
          TabOrder = 4
          Width = 145
        end
        object cxLabel3: TcxLabel
          Left = 24
          Top = 74
          Caption = 'Buscando por : '
          Transparent = True
          Visible = False
        end
        object cxButton2: TcxButton
          Left = 450
          Top = 70
          Width = 105
          Height = 25
          Align = alCustom
          Caption = 'Exportar a XLS'
          OptionsImage.Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000000000
            000A0000001E000000200000001F0000001F0000001F0000001F0000001F0000
            001F0000001F0000001F0000001F000000210000001000000000000000001320
            00575B7A2BDE647C3DE1617D38E2617D38E2617D38E2617D38E2617D38E2617D
            38E2617D38E2617D38E2637C38E167803DE03B5414A800000001000000002136
            006D68A508FF6BA416FD71A91CF372A71BF472A71BF472A71BF472A71BF471A9
            1CF372A91CF373A91CF271A919F66BA50EFF4A7603D500000003000000002034
            00695F9E00FF5B7431BC6365607E64695C8364695C8364695C8364695C836065
            5B85595C54885A5C57835C634F955E9409FE457100D000000003000000002034
            00695F9E00FF5A6F3AB656515F864F4D5495514F5594514F5494504D55914C52
            42AB5D684ACE5F6A4CCB545F41B05E900EFA457200D000000003000000002034
            0069609E00FF5A6D3BB45D7733C86E9036F8728B4BF3738F48F3628728EF4D7A
            07F666961BFF73AB20FD60783ABA5D8F10F8457100D000000003000000002034
            00695F9E00FF5F7241B36E7959946DA811F05B9305FF619B05FF5A8F09F85385
            06FF528E00FF567C18DE5F63589760930FFB457100D000000003000000002034
            00695F9D00FF61783FB86F696F6F6873589A67A409F3598B06F8507E09FC598D
            05FC69981FDA6B8F30CB666F559F5F9110FA457100D000000003000000002034
            00695E9D00FF657B44B66E68787A57663FB854800DF2538306FF508600FF5383
            08FC5E694EB1706C70706E71688C60930DFE457100D000000003000000002034
            00695F9E00FF647844B85C6846B44F7E04FB528600FF669E0CF5699F12EC5892
            00FF5D881AFF5F684EB46C6F669261960FFD457100D000000003000000002034
            00695F9D00FF667B45B96C8C36C7679C18E772A91BE47C8E5F9D7C83728A74A6
            25D96FA719E96D9827DE6E785CA0629413FA457100D000000003000000002034
            00695E9D00FF637843B97370777E737571887473748574707A7F74707A7F7472
            768373747188747572856B6E679360930DFE457100D000000003000000002035
            006B5E9802FF637F3AEA6E7A5ED56E7A5BD66E7A5BD66D7B59D86E7B59D96E79
            5AD76E7A5BD66E7A5ED568794FDC5C8D0EFF437100CF00000003000000002238
            00626CAF03FF70A817FF76AF1CFF75AE1BFF75AE1BFF75AE1BFF75AE1BFF75AE
            1BFF75AE1BFF75AE1CFF74AD1BFF6BAA08FF4E7D01CD0000000100000000090E
            00121F33003F1B2E003C1A2E003C1A2E003C1A2E003C1A2E003C1A2E003C1A2E
            003C1A2E003C1A2E003C1A2E003C1E3200401623002E00000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          TabOrder = 6
          OnClick = cxButton2Click
        end
      end
      object cxGroupBox6: TcxGroupBox
        Left = 3
        Top = 121
        Align = alClient
        Caption = 'Logs'
        TabOrder = 1
        Height = 403
        Width = 565
        object cxGrid3: TcxGrid
          Left = 3
          Top = 15
          Width = 559
          Height = 378
          Align = alClient
          TabOrder = 0
          object cxGrid3DBTableView1: TcxGridDBTableView
            FilterBox.Visible = fvAlways
            DataController.DataModeController.GridMode = True
            DataController.DataModeController.SmartRefresh = True
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
              end>
            DataController.Summary.SummaryGroups = <>
            FilterRow.Visible = True
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.InvertSelect = False
            OptionsSelection.MultiSelect = True
            OptionsSelection.CellMultiSelect = True
            OptionsView.Indicator = True
            object cxGrid3DBTableView1Id: TcxGridDBColumn
              DataBinding.FieldName = 'Id'
              Width = 57
            end
            object cxGrid3DBTableView1cli: TcxGridDBColumn
              DataBinding.FieldName = 'cli'
              Width = 79
            end
            object cxGrid3DBTableView1username: TcxGridDBColumn
              DataBinding.FieldName = 'username'
              Width = 113
            end
            object cxGrid3DBTableView1fechaini: TcxGridDBColumn
              DataBinding.FieldName = 'fechaini'
            end
            object cxGrid3DBTableView1horaini: TcxGridDBColumn
              DataBinding.FieldName = 'horaini'
              Visible = False
            end
            object cxGrid3DBTableView1fechafin: TcxGridDBColumn
              DataBinding.FieldName = 'fechafin'
            end
            object cxGrid3DBTableView1horafin: TcxGridDBColumn
              DataBinding.FieldName = 'horafin'
              Visible = False
            end
            object cxGrid3DBTableView1Protocolo: TcxGridDBColumn
              DataBinding.FieldName = 'Protocolo'
            end
            object cxGrid3DBTableView1PortType: TcxGridDBColumn
              DataBinding.FieldName = 'PortType'
            end
            object cxGrid3DBTableView1UserIpV4: TcxGridDBColumn
              DataBinding.FieldName = 'UserIpV4'
              Width = 102
            end
            object cxGrid3DBTableView1UserInfo: TcxGridDBColumn
              DataBinding.FieldName = 'UserInfo'
              Width = 104
            end
            object cxGrid3DBTableView1NasIP: TcxGridDBColumn
              DataBinding.FieldName = 'NasIP'
            end
            object cxGrid3DBTableView1NasId: TcxGridDBColumn
              DataBinding.FieldName = 'NasId'
              Width = 98
            end
            object cxGrid3DBTableView1IdSesion: TcxGridDBColumn
              DataBinding.FieldName = 'IdSesion'
              Width = 111
            end
            object cxGrid3DBTableView1CausaFin: TcxGridDBColumn
              DataBinding.FieldName = 'CausaFin'
              Width = 117
            end
            object cxGrid3DBTableView1TSesion: TcxGridDBColumn
              DataBinding.FieldName = 'TSesion'
            end
            object cxGrid3DBTableView1InBytes: TcxGridDBColumn
              DataBinding.FieldName = 'InBytes'
            end
            object cxGrid3DBTableView1OutBytes: TcxGridDBColumn
              DataBinding.FieldName = 'OutBytes'
            end
          end
          object cxGrid3Level1: TcxGridLevel
            GridView = cxGrid3DBTableView1
          end
        end
      end
    end
  end
  object cxGroupBox7: TcxGroupBox
    Left = 0
    Top = 559
    Align = alBottom
    Caption = 'Logs'
    TabOrder = 1
    Height = 105
    Width = 936
    object mmo1: TMemo
      Left = 3
      Top = 15
      Width = 930
      Height = 80
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
  object dxSkinController1: TdxSkinController
    Kind = lfFlat
    SkinName = 'Lilian'
    Left = 248
    Top = 216
  end
  object MainMenu1: TMainMenu
    Left = 248
    Top = 160
    object Aplicacin1: TMenuItem
      Caption = 'Aplicaci'#243'n'
      object Cerrar1: TMenuItem
        Caption = 'Cerrar'
        OnClick = Cerrar1Click
      end
    end
    object Depurar1: TMenuItem
      Caption = 'Depurar'
      OnClick = Depurar1Click
    end
  end
  object FolderDialog1: TFolderDialog
    DialogX = 0
    DialogY = 0
    Version = '1.1.0.1'
    Left = 728
    Top = 128
  end
  object ExeInfo1: TExeInfo
    Version = '1.2.3.1'
    Left = 80
    Top = 208
  end
end
