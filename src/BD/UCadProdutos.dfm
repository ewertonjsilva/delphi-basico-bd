object frmCadProdutos: TfrmCadProdutos
  Left = 0
  Top = 0
  Caption = 'Cadastro de Produtos'
  ClientHeight = 382
  ClientWidth = 462
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
  object pnlCadastro: TPanel
    Left = 8
    Top = 208
    Width = 449
    Height = 166
    TabOrder = 0
    object lblId: TLabel
      Left = 16
      Top = 8
      Width = 11
      Height = 15
      Caption = 'ID'
    end
    object lblNome: TLabel
      Left = 128
      Top = 8
      Width = 33
      Height = 15
      Caption = 'Nome'
      FocusControl = dbeNome
    end
    object lblValor: TLabel
      Left = 16
      Top = 72
      Width = 26
      Height = 15
      Caption = 'Valor'
      FocusControl = dbeValor
    end
    object lblIdTipo: TLabel
      Left = 128
      Top = 72
      Width = 86
      Height = 15
      Caption = 'Tipo de produto'
      FocusControl = dbeTpId
    end
    object dbtID: TDBText
      Left = 16
      Top = 27
      Width = 65
      Height = 17
      DataField = 'prd_id'
      DataSource = dsProdutos
    end
    object dbeNome: TDBEdit
      Left = 128
      Top = 24
      Width = 300
      Height = 23
      DataField = 'prd_nome'
      DataSource = dsProdutos
      TabOrder = 0
    end
    object dbeValor: TDBEdit
      Left = 16
      Top = 88
      Width = 94
      Height = 23
      DataField = 'prd_valor'
      DataSource = dsProdutos
      TabOrder = 1
    end
    object dbCkbProdutos: TDBCheckBox
      Left = 331
      Top = 91
      Width = 97
      Height = 17
      Caption = 'Dispon'#237'vel'
      DataField = 'prd_disponivel'
      DataSource = dsProdutos
      TabOrder = 2
    end
    object dbeTpId: TDBEdit
      Left = 128
      Top = 88
      Width = 26
      Height = 23
      DataField = 'tp_id'
      DataSource = dsProdutos
      TabOrder = 3
    end
    object dbnProdutos: TDBNavigator
      Left = 16
      Top = 125
      Width = 410
      Height = 25
      DataSource = dsProdutos
      Hints.Strings = (
        'Primeiro registro'
        'Registro anterior'
        'Pr'#243'ximo registro'
        #218'ltimo registro'
        'Inserir registro'
        'Excluir registro'
        'Editar registro'
        'Confirmar edi'#231#227'o'
        'Cancelar edi'#231#227'o'
        'Atualizar dados'
        'Aplicar altera'#231#245'es'
        'Cancelar altera'#231#245'es')
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      BeforeAction = dbnProdutosBeforeAction
    end
    object deblTipoProduto: TDBLookupComboBox
      Left = 160
      Top = 88
      Width = 145
      Height = 23
      DataField = 'tp_id'
      DataSource = dsProdutos
      KeyField = 'tp_id'
      ListField = 'tp_nome'
      ListSource = dsTipoProduto
      TabOrder = 5
    end
  end
  object dbgProdutos: TDBGrid
    Left = 8
    Top = 8
    Width = 446
    Height = 194
    DataSource = dsProdutos
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
        Width = 39
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'prd_nome'
        Width = 124
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'prd_valor'
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'prd_disponivel'
        Width = 69
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tp_id'
        Title.Caption = 'C'#243'digo Tipo Produto'
        Visible = True
      end>
  end
  object dsProdutos: TDataSource
    AutoEdit = False
    DataSet = DM.qry_produtos
    Left = 288
    Top = 224
  end
  object dsTipoProduto: TDataSource
    AutoEdit = False
    DataSet = DM.qry_tipo_produto
    Left = 376
    Top = 224
  end
end
