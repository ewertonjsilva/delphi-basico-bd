program EX_DB_DELPHI;

uses
  Vcl.Forms,
  UCadProdutos in 'UCadProdutos.pas' {frmCadProdutos},
  UDM in 'UDM.pas' {DM: TDataModule},
  UPrincipal in 'UPrincipal.pas' {frmPrincipal},
  Vcl.Themes,
  Vcl.Styles,
  UPesqProdutos in 'UPesqProdutos.pas' {frmPesqProdutos};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Carbon');
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmCadProdutos, frmCadProdutos);
  Application.CreateForm(TfrmPesqProdutos, frmPesqProdutos);
  Application.Run;
end.
