object Fmodificar: TFmodificar
  Left = 0
  Top = 0
  Caption = 'Modificar'
  ClientHeight = 137
  ClientWidth = 249
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object cxTextEdit1: TcxTextEdit
    Left = 16
    Top = 40
    TabOrder = 0
    Width = 209
  end
  object cxLabel1: TcxLabel
    Left = 16
    Top = 17
    Caption = 'Nuevo Valor del Campo'
  end
  object cxButton1: TcxButton
    Left = 16
    Top = 88
    Width = 75
    Height = 25
    Caption = 'Aceptar'
    TabOrder = 2
    OnClick = cxButton1Click
  end
end
