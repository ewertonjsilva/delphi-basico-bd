program ExemploDelphi;

uses
  Vcl.Forms,
  UPrincipal in 'UPrincipal.pas' {FPrincipal},
  Vcl.Themes,
  Vcl.Styles,
  UExVariavelGlobal in 'UExVariavelGlobal.pas' {FUExVariavelGlobal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Glow');
  Application.CreateForm(TFPrincipal, FPrincipal);
  Application.CreateForm(TFUExVariavelGlobal, FUExVariavelGlobal);
  Application.Run;
end.
