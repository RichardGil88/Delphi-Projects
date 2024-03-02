object FCobroServicios: TFCobroServicios
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'COBRO DE SERVICIOS'
  ClientHeight = 580
  ClientWidth = 1019
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 0
    Align = alClient
    Caption = 'VENTAS DEL DIA'
    TabOrder = 0
    Height = 580
    Width = 1019
    object cxGrid1: TcxGrid
      Left = -5
      Top = 88
      Width = 1013
      Height = 483
      TabOrder = 0
      LookAndFeel.NativeStyle = False
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = FDMCitas.DSVentas
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Format = 'TOTAL=#'
            Kind = skSum
            FieldName = 'PRECIO_TOTAL'
            Column = cxGrid1DBTableView1PRECIO_TOTAL
            DisplayText = 'TOTAL=#'
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = 'CANT = #'
            Kind = skCount
            FieldName = 'CODIGO_PRODUCTO'
            DisplayText = 'CANT = #'
          end
          item
            Format = 'PRECIO_COSTO = #'
            Kind = skSum
            FieldName = 'PRECIO_COSTO_POR_UNIDAD'
            DisplayText = 'PRECIO_COSTO = #'
          end
          item
            Format = 'PRECIO_VENTA = #'
            Kind = skSum
            FieldName = 'PRECIO_VENTA_POR_UNIDAD'
            Column = cxGrid1DBTableView1PRECIO_VENTA_POR_UNIDAD
            DisplayText = 'PRECIO_VENTA = #'
          end
          item
            Format = 'VENTA_TOTAL=#'
            Kind = skSum
            FieldName = 'PRECIO_TOTAL'
            Column = cxGrid1DBTableView1PRECIO_TOTAL
            DisplayText = 'VENTA_TOTAL=#'
          end
          item
            Format = 'CANTIDAD_VENDIDO=#'
            Kind = skSum
            FieldName = 'CANTIDAD_VENDIDO'
            Column = cxGrid1DBTableView1CANTIDAD_VENDIDO
            DisplayText = 'CANTIDAD_VENDIDO=#'
          end>
        DataController.Summary.SummaryGroups = <
          item
            Links = <
              item
              end>
            SummaryItems = <
              item
                Format = 'TOTAL=#'
                Kind = skSum
                FieldName = 'PRECIO_TOTAL'
                Column = cxGrid1DBTableView1PRECIO_TOTAL
                DisplayText = 'TOTAL=#'
              end>
          end>
        FilterRow.Visible = True
        FilterRow.ApplyChanges = fracImmediately
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.CellEndEllipsis = True
        OptionsView.Footer = True
        OptionsView.FooterAutoHeight = True
        OptionsView.FooterMultiSummaries = True
        OptionsView.Indicator = True
        OptionsView.IndicatorWidth = 15
        object cxGrid1DBTableView1NOMBRE_PACIENTE: TcxGridDBColumn
          DataBinding.FieldName = 'NOMBRE_PACIENTE'
          Width = 166
        end
        object cxGrid1DBTableView1PRIMER_APELLIDO: TcxGridDBColumn
          DataBinding.FieldName = 'PRIMER_APELLIDO'
          Width = 120
        end
        object cxGrid1DBTableView1SEGUNDO_APELLIDO: TcxGridDBColumn
          DataBinding.FieldName = 'SEGUNDO_APELLIDO'
          Width = 148
        end
        object cxGrid1DBTableView1NOMBRE: TcxGridDBColumn
          Caption = 'SERVICIO'
          DataBinding.FieldName = 'NOMBRE'
          Width = 160
        end
        object cxGrid1DBTableView1PRECIO_VENTA_POR_UNIDAD: TcxGridDBColumn
          DataBinding.FieldName = 'PRECIO_VENTA_POR_UNIDAD'
          Width = 223
        end
        object cxGrid1DBTableView1CANTIDAD_VENDIDO: TcxGridDBColumn
          DataBinding.FieldName = 'CANTIDAD_VENDIDO'
          Width = 188
        end
        object cxGrid1DBTableView1PRECIO_TOTAL: TcxGridDBColumn
          Caption = 'VENTA_TOTAL'
          DataBinding.FieldName = 'PRECIO_TOTAL'
          Width = 172
        end
        object cxGrid1DBTableView1FECHA_DE_VENTA: TcxGridDBColumn
          DataBinding.FieldName = 'FECHA_DE_VENTA'
          Width = 145
        end
        object cxGrid1DBTableView1VENDEDOR: TcxGridDBColumn
          DataBinding.FieldName = 'VENDEDOR'
          Width = 196
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object cxButton1: TcxButton
      Left = 40
      Top = 24
      Width = 177
      Height = 41
      Caption = 'ACTUALIZAR TABLA'
      TabOrder = 1
      OnClick = cxButton1Click
    end
  end
end
