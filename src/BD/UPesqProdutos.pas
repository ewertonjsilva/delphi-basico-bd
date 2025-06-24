unit UPesqProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls, frxClass, frxDBSet, frCoreClasses;

type
  TfrmPesqProdutos = class(TForm)
    pnlPesquisa: TPanel;
    edtPesquisa: TEdit;
    rbtDisponivel: TRadioButton;
    rbtIndisponivel: TRadioButton;
    btnPesquisa: TButton;
    dbgPesquisa: TDBGrid;
    dsPesquisa: TDataSource;
    lblNome: TLabel;
    frxRpPesquisa: TfrxReport;
    frxDBDtPesquisa: TfrxDBDataset;
    Button1: TButton;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnPesquisaClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    const sql = 'select ' +
                  'pd.prd_id, pd.prd_nome, pd.prd_valor, tp.tp_nome ' +
                'from ' +
                  'produtos_delphi pd ' +
                'inner join ' +
                  'tipo_produtos tp ON pd.tp_id = tp.tp_id ';
  public
    { Public declarations }
  end;

var
  frmPesqProdutos: TfrmPesqProdutos;

implementation

{$R *.dfm}

uses UDM;

procedure TfrmPesqProdutos.btnPesquisaClick(Sender: TObject);
begin
  DM.qry_pesq_produtos.close;
  DM.qry_pesq_produtos.SQL.Clear;
  DM.qry_pesq_produtos.SQL.Add(sql);
  DM.qry_pesq_produtos.SQL.Add('WHERE pd.prd_nome LIKE :pNomeProduto ');

  if rbtDisponivel.Checked = true then
    DM.qry_pesq_produtos.SQL.Add('AND pd.prd_disponivel = 1 ')
  else
    DM.qry_pesq_produtos.SQL.Add('AND pd.prd_disponivel = 0 ');

  DM.qry_pesq_produtos.Parameters.ParamByName('pNomeProduto').Value := '%' + edtPesquisa.Text + '%';
  DM.qry_pesq_produtos.Open;
end;

procedure TfrmPesqProdutos.Button1Click(Sender: TObject);
begin
  frxRpPesquisa.ShowReport();
end;

procedure TfrmPesqProdutos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM.qry_pesq_produtos.close;
  DM.qry_pesq_produtos.SQL.Clear;
  DM.qry_pesq_produtos.SQL.Add(sql);
end;

procedure TfrmPesqProdutos.FormShow(Sender: TObject);
begin
  DM.qry_pesq_produtos.close;
end;

end.
