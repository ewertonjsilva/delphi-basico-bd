unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFPrincipal = class(TForm)
    pnl_calculadora: TPanel;
    edt_n3: TEdit;
    btn_somar: TButton;
    edt_n2: TEdit;
    edt_n1: TEdit;
    btn_subtrair: TButton;
    btn_dividir: TButton;
    btn_multiplicar: TButton;
    pnl_coisas: TPanel;
    lbl_label: TLabel;
    edt_edit: TEdit;
    btn_botao: TButton;
    procedure btn_botaoClick(Sender: TObject);
    procedure btn_somarClick(Sender: TObject);
    procedure btn_subtrairClick(Sender: TObject);
    procedure btn_dividirClick(Sender: TObject);
    procedure btn_multiplicarClick(Sender: TObject);
  private
    n1, n2, resultado: Single;
    procedure calculadora(operacao: string);
    function fCalculadora(operacao: string): Single;
  public
    texto: string;
  end;

var
  FPrincipal: TFPrincipal;

implementation

{$R *.dfm}

uses UExVariavelGlobal;

procedure TFPrincipal.btn_botaoClick(Sender: TObject);
begin
  texto := edt_edit.Text;
  edt_edit.Text := '';
  lbl_label.Caption := texto;

  FUExVariavelGlobal.ShowModal;
end;

procedure TFPrincipal.btn_dividirClick(Sender: TObject);
begin
  calculadora('/');
end;

procedure TFPrincipal.btn_multiplicarClick(Sender: TObject);
begin
  calculadora('x');
end;

procedure TFPrincipal.btn_somarClick(Sender: TObject);
begin
  // calculadora('+');
  edt_n3.Text := FloatToStr(fCalculadora('+'));
end;

procedure TFPrincipal.btn_subtrairClick(Sender: TObject);
begin
  calculadora('-');
end;

procedure TFPrincipal.calculadora(operacao: String);
begin
  n1 := StrToFloat(edt_n1.Text);
  n2 := StrToFloat(edt_n2.Text);

  if (operacao = '+') then
  begin
    resultado := n1 + n2;
    ShowMessage('+');
  end
  else if (operacao = '-') then
  begin
    resultado := n1 - n2;
    ShowMessage('-');
  end
  else if (operacao = 'x') then
  begin
    resultado := n1 * n2;
    ShowMessage('x');
  end
  else
  begin
    resultado := n1 / n2;
    ShowMessage('/');
  end;

  edt_n3.Text := FloatToStr(resultado);
end;

function TFPrincipal.fCalculadora(operacao: string): Single;
begin
  n1 := StrToFloat(edt_n1.Text);
  n2 := StrToFloat(edt_n2.Text);

  if (operacao = '+') then
  begin
    resultado := n1 + n2;
  end;

  if (operacao = '-') then
  begin
    resultado := n1 - n2;
  end;

  if (operacao = 'x') then
  begin
    resultado := n1 * n2;
  end;

  if (operacao = '/') then
  begin
    resultado := n1 / n2;
  end;

  Result := resultado;
end;

end.
