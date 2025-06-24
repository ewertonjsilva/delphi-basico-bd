unit UCadProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Data.DB,
  Vcl.Mask, Vcl.ExtCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids;

type
  TfrmCadProdutos = class(TForm)
    pnlCadastro: TPanel;
    lblId: TLabel;
    dsProdutos: TDataSource;
    lblNome: TLabel;
    dbeNome: TDBEdit;
    lblValor: TLabel;
    dbeValor: TDBEdit;
    dbCkbProdutos: TDBCheckBox;
    lblIdTipo: TLabel;
    dbeTpId: TDBEdit;
    dbtID: TDBText;
    dbnProdutos: TDBNavigator;
    deblTipoProduto: TDBLookupComboBox;
    dsTipoProduto: TDataSource;
    dbgProdutos: TDBGrid;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbnProdutosBeforeAction(Sender: TObject; Button: TNavigateBtn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadProdutos: TfrmCadProdutos;

implementation

{$R *.dfm}

uses UDM;

procedure TfrmCadProdutos.dbnProdutosBeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
  if Button = nbDelete then
  begin
    if MessageDlg('Tem certeza que deseja excluir?', mtConfirmation,
      [mbYes, mbNo], 0) = mrNo then
      Abort;
  end;
end;

procedure TfrmCadProdutos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM.qry_produtos.Close;
  DM.qry_tipo_produto.Close;
end;

procedure TfrmCadProdutos.FormShow(Sender: TObject);
begin
  DM.qry_tipo_produto.Open;
  DM.qry_produtos.Open;
end;

end.
