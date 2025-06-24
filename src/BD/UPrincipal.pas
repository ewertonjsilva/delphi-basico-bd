unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TfrmPrincipal = class(TForm)
    MainMenu: TMainMenu;
    Cadastro1: TMenuItem;
    Consulta1: TMenuItem;
    Sair1: TMenuItem;
    Produtos1: TMenuItem;
    Produtos2: TMenuItem;
    ipos1: TMenuItem;
    procedure Produtos1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure Produtos2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses UCadProdutos, UPesqProdutos;

procedure TfrmPrincipal.Produtos1Click(Sender: TObject);
begin
  frmCadProdutos.ShowModal;
end;

procedure TfrmPrincipal.Produtos2Click(Sender: TObject);
begin
  frmPesqProdutos.ShowModal;
end;

procedure TfrmPrincipal.Sair1Click(Sender: TObject);
begin
  close;
end;

end.
