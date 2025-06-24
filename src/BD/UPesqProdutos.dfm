object frmPesqProdutos: TfrmPesqProdutos
  Left = 0
  Top = 0
  Caption = 'Pesquisa de produtos'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  TextHeight = 15
  object pnlPesquisa: TPanel
    Left = 0
    Top = 0
    Width = 624
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object lblNome: TLabel
      Left = 0
      Top = 13
      Width = 96
      Height = 15
      Caption = 'Nome do produto'
    end
    object edtPesquisa: TEdit
      Left = 102
      Top = 10
      Width = 180
      Height = 23
      TabOrder = 0
    end
    object rbtDisponivel: TRadioButton
      Left = 288
      Top = 13
      Width = 89
      Height = 17
      Caption = 'Dispon'#237'vel'
      Checked = True
      TabOrder = 1
      TabStop = True
    end
    object rbtIndisponivel: TRadioButton
      Left = 383
      Top = 13
      Width = 113
      Height = 17
      Caption = 'Indispon'#237'vel'
      TabOrder = 2
    end
    object btnPesquisa: TButton
      Left = 480
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Pesquisar'
      TabOrder = 3
      OnClick = btnPesquisaClick
    end
    object Button1: TButton
      Left = 568
      Top = 9
      Width = 36
      Height = 25
      Caption = 'Rel.'
      TabOrder = 4
      OnClick = Button1Click
    end
  end
  object dbgPesquisa: TDBGrid
    Left = 0
    Top = 47
    Width = 624
    Height = 394
    DataSource = dsPesquisa
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'prd_id'
        Width = 49
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'prd_nome'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'prd_valor'
        Width = 137
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tp_nome'
        Width = 152
        Visible = True
      end>
  end
  object dsPesquisa: TDataSource
    AutoEdit = False
    DataSet = DM.qry_pesq_produtos
    Left = 56
    Top = 128
  end
  object frxRpPesquisa: TfrxReport
    Version = '2023.3.4'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45831.946881932870000000
    ReportOptions.LastChange = 45831.946881932870000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 536
    Top = 152
    Datasets = <
      item
        DataSet = frxDBDtPesquisa
        DataSetName = 'frxDBDtPesquisa'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object Header1: TfrxHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Height = 22.677180000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Top = 3.779529340000000000
          Width = 94.488250730000000000
          Height = 18.897649770000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Frame.Typ = []
          Memo.UTF8W = (
            'Nome')
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 343.937225340000000000
          Top = 3.779529340000000000
          Width = 94.488250730000000000
          Height = 18.897649770000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor')
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 536.693237300000000000
          Top = 3.779529340000000000
          Width = 94.488281250000000000
          Height = 18.897649770000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Frame.Typ = []
          Memo.UTF8W = (
            'Tipo')
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 64.252010000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDtPesquisa
        DataSetName = 'frxDBDtPesquisa'
        RowCount = 0
        object frxDBDtPesquisaprd_nome: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Width = 321.260050000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'prd_nome'
          DataSet = frxDBDtPesquisa
          DataSetName = 'frxDBDtPesquisa'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDtPesquisa."prd_nome"]')
        end
        object frxDBDtPesquisaprd_valor: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 343.937230000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'prd_valor'
          DataSet = frxDBDtPesquisa
          DataSetName = 'frxDBDtPesquisa'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDtPesquisa."prd_valor"]')
        end
        object frxDBDtPesquisatp_nome: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 536.693260000000000000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'tp_nome'
          DataSet = frxDBDtPesquisa
          DataSetName = 'frxDBDtPesquisa'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDtPesquisa."tp_nome"]')
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 109.606370000000000000
        Width = 718.110700000000000000
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 411.968780520000000000
          Top = 3.779532400000000000
          Width = 287.244280730000000000
          Height = 18.897651670000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Frame.Typ = []
          Memo.UTF8W = (
            '[DATE]')
        end
      end
    end
  end
  object frxDBDtPesquisa: TfrxDBDataset
    UserName = 'frxDBDtPesquisa'
    CloseDataSource = False
    DataSource = dsPesquisa
    BCDToCurrency = False
    DataSetOptions = []
    Left = 440
    Top = 152
  end
end
