object Fmain: TFmain
  Left = 0
  Top = 0
  Caption = 'CiberDesp'
  ClientHeight = 152
  ClientWidth = 440
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
  object cxLabel1: TcxLabel
    Left = 32
    Top = 22
    Caption = 'Despachados :'
    Transparent = True
  end
  object cxLabel2: TcxLabel
    Left = 113
    Top = 22
    Caption = '0'
    Properties.LineOptions.InnerColor = clBtnText
    Transparent = True
  end
  object cxLabel3: TcxLabel
    Left = 39
    Top = 65
    Caption = 'Fecha Inicio :'
    Properties.LineOptions.InnerColor = clBtnText
    Transparent = True
  end
  object cxLabel4: TcxLabel
    Left = 113
    Top = 65
    Properties.LineOptions.InnerColor = clBtnText
    Transparent = True
  end
  object cxLabel5: TcxLabel
    Left = 35
    Top = 88
    Caption = 'Fecha Ultimo :'
    Properties.LineOptions.InnerColor = clBtnText
    Transparent = True
  end
  object cxLabel6: TcxLabel
    Left = 113
    Top = 88
    Properties.LineOptions.InnerColor = clBtnText
    Transparent = True
  end
  object cxLabel7: TcxLabel
    Left = 39
    Top = 109
    Caption = '   '
    Properties.LineOptions.InnerColor = clBtnText
    Transparent = True
  end
  object btn1: TButton
    Left = 296
    Top = 19
    Width = 129
    Height = 25
    Caption = 'Iniciar'
    TabOrder = 6
    OnClick = btn1Click
  end
  object cxLabel8: TcxLabel
    Left = 47
    Top = 45
    Caption = 'Eliminados :'
    Transparent = True
  end
  object cxLabel9: TcxLabel
    Left = 113
    Top = 45
    Caption = '0'
    Transparent = True
  end
  object cxMemo1: TcxMemo
    Left = 3
    Top = 128
    Properties.ReadOnly = True
    Properties.ScrollBars = ssBoth
    TabOrder = 10
    Visible = False
    Height = 145
    Width = 434
  end
  object cxPopupEdit1: TcxPopupEdit
    AlignWithMargins = True
    Left = 3
    Top = 128
    Align = alBottom
    AutoSize = False
    Properties.PopupClientEdge = True
    Properties.PopupControl = cxMemo1
    Properties.PopupSizeable = False
    Properties.PopupSysPanelStyle = True
    Properties.PopupWidth = 400
    Properties.ReadOnly = True
    TabOrder = 11
    Text = '  Click aqu'#237' para ver la Configuraci'#243'n'
    ExplicitTop = 129
    Height = 21
    Width = 434
  end
  object dxSkinController1: TdxSkinController
    Kind = lfFlat
    NativeStyle = False
    SkinName = 'DarkSide'
    Left = 344
    Top = 56
  end
end
