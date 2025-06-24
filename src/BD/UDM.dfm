object DM: TDM
  Height = 263
  Width = 336
  object Conexao: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=l224123;Persist Security Info=True;' +
      'User ID=l224;Initial Catalog=ewerton;Data Source=10.67.22.216'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 72
    Top = 40
  end
  object qry_produtos: TADOQuery
    Connection = Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from produtos_delphi;')
    Left = 72
    Top = 120
    object qry_produtosprd_id: TAutoIncField
      DisplayLabel = 'ID'
      FieldName = 'prd_id'
      ReadOnly = True
    end
    object qry_produtosprd_nome: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'prd_nome'
      Size = 40
    end
    object qry_produtosprd_valor: TBCDField
      DisplayLabel = 'Valor'
      FieldName = 'prd_valor'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 5
      Size = 2
    end
    object qry_produtosprd_disponivel: TBooleanField
      DisplayLabel = 'Dispon'#237'vel'
      FieldName = 'prd_disponivel'
    end
    object qry_produtostp_id: TIntegerField
      FieldName = 'tp_id'
    end
  end
  object qry_tipo_produto: TADOQuery
    Connection = Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Tipo_produtos;')
    Left = 176
    Top = 120
    object qry_tipo_produtotp_id: TAutoIncField
      FieldName = 'tp_id'
      ReadOnly = True
    end
    object qry_tipo_produtotp_nome: TStringField
      FieldName = 'tp_nome'
      Size = 40
    end
  end
  object qry_pesq_produtos: TADOQuery
    Connection = Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select '
      #9'pd.prd_id, pd.prd_nome, pd.prd_valor, tp.tp_nome '
      'from '
      #9'produtos_delphi pd '
      'inner join '
      #9'tipo_produtos t'#1' '#1#0' pd.tp_id = tp.tp_id;')
    Left = 72
    Top = 192
    object qry_pesq_produtosprd_id: TAutoIncField
      DisplayLabel = 'ID'
      FieldName = 'prd_id'
      ReadOnly = True
    end
    object qry_pesq_produtosprd_nome: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'prd_nome'
      Size = 40
    end
    object qry_pesq_produtosprd_valor: TBCDField
      DisplayLabel = 'Valor'
      FieldName = 'prd_valor'
      DisplayFormat = '0.00'
      Precision = 5
      Size = 2
    end
    object qry_pesq_produtostp_nome: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'tp_nome'
      Size = 40
    end
  end
end
