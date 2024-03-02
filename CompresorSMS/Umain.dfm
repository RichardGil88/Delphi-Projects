object FMain: TFMain
  Left = 0
  Top = 0
  Caption = 'Compresor SMS'
  ClientHeight = 172
  ClientWidth = 384
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 384
    Height = 172
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 96
    ExplicitTop = 38
    ExplicitWidth = 185
    ExplicitHeight = 41
    object lbl1: TLabel
      Left = 159
      Top = -10
      Width = 5
      Height = 19
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object AbMeter4: TAbMeter
      Left = 116
      Top = 15
      Width = 177
      Height = 16
      Orientation = moHorizontal
      UnusedColor = clBtnFace
      UsedColor = clNavy
    end
    object cxLabel1: TcxLabel
      Left = 36
      Top = 62
      Caption = 'Comprimidos :'
      ParentColor = False
      Style.BorderColor = clHighlightText
      Style.Color = clWhite
      Style.TextColor = clWhite
      Transparent = True
    end
    object cxLabel2: TcxLabel
      Left = 116
      Top = 62
      Caption = '0'
      Style.TextColor = clWhite
      Transparent = True
    end
    object cxLabel4: TcxLabel
      Left = 57
      Top = 84
      Caption = 'Movidos :'
      Style.TextColor = clWhite
      Transparent = True
    end
    object cxLabel6: TcxLabel
      Left = 116
      Top = 84
      Style.TextColor = clWhite
      Transparent = True
    end
    object cxLabel3: TcxLabel
      Left = 12
      Top = 14
      Caption = 'Proceso de archivo'
      ParentColor = False
      Style.BorderColor = clHighlightText
      Style.Color = clWhite
      Style.TextColor = clWhite
      Transparent = True
    end
    object cxLabel7: TcxLabel
      Left = 47
      Top = 40
      Caption = 'Recogidos :'
      ParentColor = False
      Style.BorderColor = clHighlightText
      Style.Color = clWhite
      Style.TextColor = clWhite
      Transparent = True
    end
    object cxLabel8: TcxLabel
      Left = 116
      Top = 40
      Caption = '0'
      Style.TextColor = clWhite
      Transparent = True
    end
    object cxLabel5: TcxLabel
      Left = 39
      Top = 106
      Caption = 'Fecha Inicio :'
      Style.TextColor = clWhite
      Transparent = True
    end
    object cxLabel9: TcxLabel
      Left = 116
      Top = 126
      Style.TextColor = clWhite
      Transparent = True
    end
    object cxLabel10: TcxLabel
      Left = 35
      Top = 126
      Caption = 'Fecha Ultimo :'
      Style.TextColor = clWhite
      Transparent = True
    end
    object cxLabel11: TcxLabel
      Left = 113
      Top = 107
      Style.TextColor = clWhite
      Transparent = True
    end
    object cxButton1: TcxButton
      Left = 299
      Top = 14
      Width = 75
      Height = 25
      Caption = 'Start'
      TabOrder = 11
      OnClick = cxButton1Click
    end
    object cxButton2: TcxButton
      Left = 299
      Top = 14
      Width = 75
      Height = 25
      Caption = 'Stop'
      TabOrder = 12
      OnClick = cxButton2Click
    end
    object mmoLogText: TMemo
      Left = 0
      Top = 170
      Width = 382
      Height = 193
      Align = alCustom
      ScrollBars = ssBoth
      TabOrder = 13
      Visible = False
    end
    object cxPopupEdit1: TcxPopupEdit
      AlignWithMargins = True
      Left = 0
      Top = 150
      AutoSize = False
      Properties.PopupClientEdge = True
      Properties.PopupControl = mmoLogText
      Properties.PopupSizeable = False
      Properties.PopupSysPanelStyle = True
      Properties.PopupWidth = 400
      TabOrder = 14
      Text = '  Click aqu'#237' para ver las trazas'
      Height = 21
      Width = 382
    end
  end
  object dxSkinController1: TdxSkinController
    Kind = lfFlat
    SkinName = 'DarkSide'
    Left = 308
    Top = 89
  end
  object AbZipper1: TAbZipper
    ArchiveProgressMeter = AbVCLMeterLink1
    AutoSave = True
    CompressionMethodToUse = smStored
    DeflationOption = doSuperFast
    DOSMode = False
    StoreOptions = [soStripDrive, soRemoveDots, soReplace]
    Left = 204
    Top = 55
  end
  object AbVCLMeterLink1: TAbVCLMeterLink
    Meter = AbMeter4
    Left = 204
    Top = 8
  end
end
