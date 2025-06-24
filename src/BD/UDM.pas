unit UDM;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TDM = class(TDataModule)
    Conexao: TADOConnection;
    qry_produtos: TADOQuery;
    qry_produtosprd_id: TAutoIncField;
    qry_produtosprd_nome: TStringField;
    qry_produtosprd_valor: TBCDField;
    qry_produtosprd_disponivel: TBooleanField;
    qry_produtostp_id: TIntegerField;
    qry_tipo_produto: TADOQuery;
    qry_tipo_produtotp_id: TAutoIncField;
    qry_tipo_produtotp_nome: TStringField;
    qry_pesq_produtos: TADOQuery;
    qry_pesq_produtosprd_id: TAutoIncField;
    qry_pesq_produtosprd_nome: TStringField;
    qry_pesq_produtosprd_valor: TBCDField;
    qry_pesq_produtostp_nome: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
