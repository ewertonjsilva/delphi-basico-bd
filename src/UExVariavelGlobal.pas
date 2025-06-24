unit UExVariavelGlobal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFUExVariavelGlobal = class(TForm)
    lbl_txt: TLabel;
    btn_txt: TButton;
    procedure btn_txtClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FUExVariavelGlobal: TFUExVariavelGlobal;

implementation

{$R *.dfm}

uses UPrincipal;

procedure TFUExVariavelGlobal.btn_txtClick(Sender: TObject);
begin
  lbl_txt.Caption := FPrincipal.texto;
end;

end.
