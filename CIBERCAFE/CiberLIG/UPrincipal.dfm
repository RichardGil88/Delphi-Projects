object FPrincipal: TFPrincipal
  Left = 0
  Top = 0
  Caption = 'CiberLIG'
  ClientHeight = 465
  ClientWidth = 793
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
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
    Caption = 'M'#225'quinas'
    TabOrder = 0
    Height = 360
    Width = 356
    object cxGrid1: TcxGrid
      Left = 2
      Top = 18
      Width = 352
      Height = 340
      Align = alClient
      TabOrder = 0
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.Insert.Visible = False
        Navigator.Buttons.Delete.Visible = False
        Navigator.Buttons.Edit.Visible = False
        Navigator.Buttons.Post.Visible = False
        Navigator.Buttons.Cancel.Visible = False
        Navigator.Visible = True
        DataController.DataSource = DM1.DSQmaquinas
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            FieldName = 'PcName'
          end>
        DataController.Summary.SummaryGroups = <>
        FilterRow.Visible = True
        FilterRow.ApplyChanges = fracImmediately
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.InvertSelect = False
        OptionsSelection.MultiSelect = True
        OptionsSelection.CellMultiSelect = True
        OptionsView.Footer = True
        OptionsView.Indicator = True
        object cxGrid1DBTableView1idMaquina: TcxGridDBColumn
          DataBinding.FieldName = 'idMaquina'
        end
        object cxGrid1DBTableView1Nombre_PC: TcxGridDBColumn
          DataBinding.FieldName = 'Nombre_PC'
          Width = 138
        end
        object cxGrid1DBTableView1IP: TcxGridDBColumn
          DataBinding.FieldName = 'IP'
          Width = 158
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object cxgroupbox2: TcxGroupBox
    Left = 360
    Top = 0
    Align = alRight
    Caption = 'Informaci'#243'n Adicional'
    TabOrder = 2
    Height = 360
    Width = 433
    object cxGroupBox3: TcxGroupBox
      Left = 2
      Top = 221
      Align = alClient
      Caption = 'Log de Comandos'
      TabOrder = 0
      Height = 137
      Width = 429
      object Memo1: TMemo
        Left = 2
        Top = 38
        Width = 425
        Height = 97
        Align = alClient
        ReadOnly = True
        ScrollBars = ssBoth
        TabOrder = 0
      end
      object cxButton1: TcxButton
        Left = 2
        Top = 18
        Width = 425
        Height = 20
        Align = alTop
        Caption = 'Limpiar Log'
        TabOrder = 1
        OnClick = cxButton1Click
      end
    end
    object cxGroupBox4: TcxGroupBox
      Left = 2
      Top = 18
      Align = alTop
      Caption = 'M'#225'quinas Activas'
      TabOrder = 1
      Height = 199
      Width = 429
      object AdvStringGrid1: TAdvStringGrid
        Left = 2
        Top = 18
        Width = 425
        Height = 179
        Cursor = crDefault
        Align = alClient
        ColCount = 3
        DefaultColWidth = 127
        DrawingStyle = gdsClassic
        FixedCols = 0
        RowCount = 1
        FixedRows = 0
        ScrollBars = ssBoth
        TabOrder = 0
        OnDrawCell = AdvStringGrid1DrawCell
        HoverRowCells = [hcNormal, hcSelected]
        ActiveCellFont.Charset = DEFAULT_CHARSET
        ActiveCellFont.Color = clWindowText
        ActiveCellFont.Height = -11
        ActiveCellFont.Name = 'Tahoma'
        ActiveCellFont.Style = [fsBold]
        ControlLook.FixedGradientHoverFrom = clGray
        ControlLook.FixedGradientHoverTo = clWhite
        ControlLook.FixedGradientDownFrom = clGray
        ControlLook.FixedGradientDownTo = clSilver
        ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
        ControlLook.DropDownHeader.Font.Color = clWindowText
        ControlLook.DropDownHeader.Font.Height = -11
        ControlLook.DropDownHeader.Font.Name = 'Tahoma'
        ControlLook.DropDownHeader.Font.Style = []
        ControlLook.DropDownHeader.Visible = True
        ControlLook.DropDownHeader.Buttons = <>
        ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
        ControlLook.DropDownFooter.Font.Color = clWindowText
        ControlLook.DropDownFooter.Font.Height = -11
        ControlLook.DropDownFooter.Font.Name = 'Tahoma'
        ControlLook.DropDownFooter.Font.Style = []
        ControlLook.DropDownFooter.Visible = True
        ControlLook.DropDownFooter.Buttons = <>
        Filter = <>
        FilterDropDown.Font.Charset = DEFAULT_CHARSET
        FilterDropDown.Font.Color = clWindowText
        FilterDropDown.Font.Height = -11
        FilterDropDown.Font.Name = 'Tahoma'
        FilterDropDown.Font.Style = []
        FilterDropDownClear = '(All)'
        FixedColWidth = 127
        FixedRowHeight = 50
        FixedFont.Charset = DEFAULT_CHARSET
        FixedFont.Color = clWindowText
        FixedFont.Height = -11
        FixedFont.Name = 'Tahoma'
        FixedFont.Style = [fsBold]
        FloatFormat = '%.2f'
        PrintSettings.DateFormat = 'dd/mm/yyyy'
        PrintSettings.Font.Charset = DEFAULT_CHARSET
        PrintSettings.Font.Color = clWindowText
        PrintSettings.Font.Height = -11
        PrintSettings.Font.Name = 'Tahoma'
        PrintSettings.Font.Style = []
        PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
        PrintSettings.FixedFont.Color = clWindowText
        PrintSettings.FixedFont.Height = -11
        PrintSettings.FixedFont.Name = 'Tahoma'
        PrintSettings.FixedFont.Style = []
        PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
        PrintSettings.HeaderFont.Color = clWindowText
        PrintSettings.HeaderFont.Height = -11
        PrintSettings.HeaderFont.Name = 'Tahoma'
        PrintSettings.HeaderFont.Style = []
        PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
        PrintSettings.FooterFont.Color = clWindowText
        PrintSettings.FooterFont.Height = -11
        PrintSettings.FooterFont.Name = 'Tahoma'
        PrintSettings.FooterFont.Style = []
        PrintSettings.PageNumSep = '/'
        ScrollWidth = 16
        SearchFooter.FindNextCaption = 'Find &next'
        SearchFooter.FindPrevCaption = 'Find &previous'
        SearchFooter.Font.Charset = DEFAULT_CHARSET
        SearchFooter.Font.Color = clWindowText
        SearchFooter.Font.Height = -11
        SearchFooter.Font.Name = 'Tahoma'
        SearchFooter.Font.Style = []
        SearchFooter.HighLightCaption = 'Highlight'
        SearchFooter.HintClose = 'Close'
        SearchFooter.HintFindNext = 'Find next occurrence'
        SearchFooter.HintFindPrev = 'Find previous occurrence'
        SearchFooter.HintHighlight = 'Highlight occurrences'
        SearchFooter.MatchCaseCaption = 'Match case'
        ShowDesignHelper = False
        Version = '6.2.1.1'
      end
    end
    object cxSplitter2: TcxSplitter
      Left = 2
      Top = 217
      Width = 429
      Height = 4
      AlignSplitter = salTop
      Control = cxGroupBox4
    end
  end
  object cxSplitter1: TcxSplitter
    Left = 356
    Top = 0
    Width = 4
    Height = 360
    AlignSplitter = salRight
    Control = cxgroupbox2
  end
  object cxGroupBox5: TcxGroupBox
    Left = 0
    Top = 360
    Align = alBottom
    TabOrder = 3
    Height = 105
    Width = 793
    object MemoError: TMemo
      Left = 2
      Top = 30
      Width = 789
      Height = 73
      Align = alBottom
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 0
    end
    object Button1: TButton
      Left = 2
      Top = 5
      Width = 789
      Height = 25
      Align = alTop
      Caption = 'Limpiar Log'
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object cliente: TIdTCPClient
    ConnectTimeout = 0
    IPVersion = Id_IPv4
    Port = 30
    ReadTimeout = -1
    Left = 24
    Top = 192
  end
  object ServidorSocket: TIdTCPServer
    Bindings = <>
    DefaultPort = 30
    OnExecute = ServidorSocketExecute
    Left = 96
    Top = 192
  end
  object dxSkinController1: TdxSkinController
    Kind = lfFlat
    NativeStyle = False
    SkinName = 'Office2007Blue'
    UseSkins = False
    Left = 80
    Top = 120
  end
end
