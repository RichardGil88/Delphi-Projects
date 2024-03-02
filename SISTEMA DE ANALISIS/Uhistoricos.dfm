object Fhistoricos: TFhistoricos
  Left = 341
  Top = 190
  Caption = 'Hist'#243'ricos'
  ClientHeight = 632
  ClientWidth = 792
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 0
    Align = alClient
    Caption = ' '
    TabOrder = 0
    Height = 632
    Width = 792
    object AdvCircularProgress1: TAdvCircularProgress
      Left = 336
      Top = 248
      Width = 60
      Height = 60
      Appearance.BackGroundColor = clNone
      Appearance.BorderColor = clNone
      Appearance.ActiveSegmentColor = 16752543
      Appearance.InActiveSegmentColor = clSilver
      Appearance.TransitionSegmentColor = 10485760
      Appearance.ProgressSegmentColor = 4194432
      Interval = 100
    end
    object cxGrid1: TcxGrid
      Left = 2
      Top = 18
      Width = 788
      Height = 612
      Align = alClient
      TabOrder = 0
      object cxGrid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        NavigatorButtons.PriorPage.Visible = True
        NavigatorButtons.Prior.Visible = True
        NavigatorButtons.Insert.Enabled = False
        NavigatorButtons.Insert.Visible = False
        NavigatorButtons.Append.Enabled = False
        NavigatorButtons.Append.Visible = False
        NavigatorButtons.Delete.Enabled = False
        NavigatorButtons.Delete.Visible = False
        NavigatorButtons.Edit.Enabled = False
        NavigatorButtons.Edit.Visible = False
        NavigatorButtons.Post.Visible = False
        NavigatorButtons.Cancel.Enabled = False
        NavigatorButtons.Cancel.Visible = False
        NavigatorButtons.Refresh.Enabled = False
        NavigatorButtons.Refresh.Visible = False
        NavigatorButtons.SaveBookmark.Enabled = False
        NavigatorButtons.SaveBookmark.Visible = False
        NavigatorButtons.GotoBookmark.Enabled = False
        NavigatorButtons.GotoBookmark.Visible = False
        NavigatorButtons.Filter.Visible = True
        FilterBox.Visible = fvNever
        DataController.DataModeController.SmartRefresh = True
        DataController.DataSource = DM.DShistoricos
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Format = 'CANTIDAD=#'
            Kind = skCount
            FieldName = 'idSolicitud'
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            FieldName = 'idSolicitud'
            Column = cxGrid1DBTableView1idSolicitud
          end>
        DataController.Summary.SummaryGroups = <
          item
            Links = <>
            SummaryItems = <>
          end>
        DateTimeHandling.Filters = [dtfRelativeDays, dtfRelativeDayPeriods, dtfRelativeYears, dtfMonths, dtfYears]
        Filtering.ColumnFilteredItemsList = True
        FilterRow.Visible = True
        OptionsBehavior.IncSearch = True
        OptionsBehavior.NavigatorHints = True
        OptionsCustomize.ColumnHidingOnGrouping = False
        OptionsCustomize.GroupRowSizing = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsSelection.MultiSelect = True
        OptionsView.Navigator = True
        OptionsView.CellAutoHeight = True
        OptionsView.Footer = True
        OptionsView.Indicator = True
        OptionsView.IndicatorWidth = 15
        object cxGrid1DBTableView1idSolicitud: TcxGridDBColumn
          DataBinding.FieldName = 'idSolicitud'
          Width = 69
        end
        object cxGrid1DBTableView1ktSolicita: TcxGridDBColumn
          DataBinding.FieldName = 'ktSolicita'
          Width = 68
        end
        object cxGrid1DBTableView1clave: TcxGridDBColumn
          DataBinding.FieldName = 'clave'
          Width = 57
        end
        object cxGrid1DBTableView1chequeo: TcxGridDBColumn
          DataBinding.FieldName = 'chequeo'
          Width = 117
        end
        object cxGrid1DBTableView1estado: TcxGridDBColumn
          DataBinding.FieldName = 'estado'
          Width = 63
        end
        object cxGrid1DBTableView1fechaSolicitud: TcxGridDBColumn
          DataBinding.FieldName = 'fechaSolicitud'
          Width = 132
        end
        object cxGrid1DBTableView1fechaInicio: TcxGridDBColumn
          DataBinding.FieldName = 'fechaInicio'
          Width = 132
        end
        object cxGrid1DBTableView1fechafin: TcxGridDBColumn
          DataBinding.FieldName = 'fechafin'
          Width = 132
        end
        object cxGrid1DBTableView1observacion: TcxGridDBColumn
          DataBinding.FieldName = 'observacion'
          Width = 104
        end
        object cxGrid1DBTableView1faci: TcxGridDBColumn
          DataBinding.FieldName = 'faci'
          Width = 177
        end
        object cxGrid1DBTableView1tipotx: TcxGridDBColumn
          DataBinding.FieldName = 'tipotx'
          Width = 49
        end
        object cxGrid1DBTableView1canal: TcxGridDBColumn
          DataBinding.FieldName = 'canal'
          Width = 31
        end
        object cxGrid1DBTableView1multiplex: TcxGridDBColumn
          DataBinding.FieldName = 'multiplex'
          Width = 62
        end
        object cxGrid1DBTableView1aplicadopor: TcxGridDBColumn
          DataBinding.FieldName = 'aplicadopor'
          Width = 143
        end
        object cxGrid1DBTableView1porzona: TcxGridDBColumn
          DataBinding.FieldName = 'porzona'
          Width = 43
        end
        object cxGrid1DBTableView1zona: TcxGridDBColumn
          DataBinding.FieldName = 'zona'
          Width = 48
        end
        object cxGrid1DBTableView1unidad: TcxGridDBColumn
          DataBinding.FieldName = 'unidad'
          Width = 37
        end
        object cxGrid1DBTableView1grupo: TcxGridDBColumn
          DataBinding.FieldName = 'grupo'
          Width = 84
        end
        object cxGrid1DBTableView1buzon: TcxGridDBColumn
          DataBinding.FieldName = 'buzon'
          Width = 34
        end
        object cxGrid1DBTableView1inicioBuzon: TcxGridDBColumn
          DataBinding.FieldName = 'inicioBuzon'
          Width = 132
        end
        object cxGrid1DBTableView1finBuzon: TcxGridDBColumn
          DataBinding.FieldName = 'finBuzon'
          Width = 132
        end
        object cxGrid1DBTableView1interes: TcxGridDBColumn
          DataBinding.FieldName = 'interes'
          Width = 1439
        end
        object cxGrid1DBTableView1finalidad: TcxGridDBColumn
          DataBinding.FieldName = 'finalidad'
          Width = 414
        end
        object cxGrid1DBTableView1cumplida: TcxGridDBColumn
          DataBinding.FieldName = 'cumplida'
          Width = 47
        end
        object cxGrid1DBTableView1motivo: TcxGridDBColumn
          DataBinding.FieldName = 'motivo'
          Width = 271
        end
        object cxGrid1DBTableView1atencionespecial: TcxGridDBColumn
          DataBinding.FieldName = 'atencionespecial'
          Width = 85
        end
        object cxGrid1DBTableView1observaciones: TcxGridDBColumn
          DataBinding.FieldName = 'observaciones'
          Width = 74
        end
        object cxGrid1DBTableView1ktatiende: TcxGridDBColumn
          DataBinding.FieldName = 'ktatiende'
          Width = 66
        end
        object cxGrid1DBTableView1fechaAtiende: TcxGridDBColumn
          DataBinding.FieldName = 'fechaAtiende'
          Width = 132
        end
        object cxGrid1DBTableView1caso: TcxGridDBColumn
          DataBinding.FieldName = 'caso'
          Width = 204
        end
        object cxGrid1DBTableView1dptoSeccion: TcxGridDBColumn
          DataBinding.FieldName = 'dptoSeccion'
          Width = 190
        end
        object cxGrid1DBTableView1oficial: TcxGridDBColumn
          DataBinding.FieldName = 'oficial'
          Width = 203
        end
        object cxGrid1DBTableView1teloficial: TcxGridDBColumn
          DataBinding.FieldName = 'teloficial'
          Width = 264
        end
        object cxGrid1DBTableView1fase: TcxGridDBColumn
          DataBinding.FieldName = 'fase'
          Width = 283
        end
        object cxGrid1DBTableView1niveldeAprobacion: TcxGridDBColumn
          DataBinding.FieldName = 'niveldeAprobacion'
          Width = 189
        end
        object cxGrid1DBTableView1niveldeCompartimentacion: TcxGridDBColumn
          DataBinding.FieldName = 'niveldeCompartimentacion'
          Width = 129
        end
        object cxGrid1DBTableView1OperacionEspecial: TcxGridDBColumn
          DataBinding.FieldName = 'OperacionEspecial'
          Width = 94
        end
        object cxGrid1DBTableView1ktcaso: TcxGridDBColumn
          DataBinding.FieldName = 'ktcaso'
          Width = 54
        end
        object cxGrid1DBTableView1fechaCaso: TcxGridDBColumn
          DataBinding.FieldName = 'fechaCaso'
          Width = 132
        end
        object cxGrid1DBTableView1objetivo: TcxGridDBColumn
          DataBinding.FieldName = 'objetivo'
          Width = 458
        end
        object cxGrid1DBTableView1ExpedienteOperativo: TcxGridDBColumn
          DataBinding.FieldName = 'ExpedienteOperativo'
          Width = 177
        end
        object cxGrid1DBTableView1Lugar: TcxGridDBColumn
          DataBinding.FieldName = 'Lugar'
          Width = 108
        end
        object cxGrid1DBTableView1Tipodetecnica: TcxGridDBColumn
          DataBinding.FieldName = 'Tipodetecnica'
          Width = 75
        end
        object cxGrid1DBTableView1oculto: TcxGridDBColumn
          DataBinding.FieldName = 'oculto'
          Width = 34
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
end
