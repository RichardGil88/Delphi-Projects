object FMoverHist: TFMoverHist
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'MOVER A HISTORICOS '
  ClientHeight = 330
  ClientWidth = 559
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 0
    Align = alClient
    Caption = 'MOVIENDO LOS PRODUCTOS A HISTORICOS'
    TabOrder = 0
    Height = 330
    Width = 559
    object cxLabel1: TcxLabel
      Left = 104
      Top = 25
      Caption = 'MOVIENDO LOS MEDICAMENTOS DEL ALMACEN'
      Transparent = True
    end
    object cxProgressBar1: TcxProgressBar
      Left = 104
      Top = 48
      TabOrder = 1
      Width = 345
    end
    object cxProgressBar2: TcxProgressBar
      Left = 104
      Top = 112
      TabOrder = 2
      Width = 345
    end
    object cxProgressBar3: TcxProgressBar
      Left = 104
      Top = 176
      TabOrder = 3
      Width = 345
    end
    object cxButton1: TcxButton
      Left = 169
      Top = 232
      Width = 185
      Height = 57
      Caption = 'MOVER A HISTORICOS'
      TabOrder = 4
      OnClick = cxButton1Click
    end
    object cxLabel2: TcxLabel
      Left = 104
      Top = 89
      Caption = 'MOVIENDO LOS MEDICAMENTOS DE LA FARMACIA'
      Transparent = True
    end
    object cxLabel3: TcxLabel
      Left = 104
      Top = 153
      Caption = 'MOVER LOS INSUMOS'
      Transparent = True
    end
  end
end
