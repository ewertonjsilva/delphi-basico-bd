object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Sistema de Cadastro'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu
  Position = poScreenCenter
  WindowState = wsMaximized
  TextHeight = 15
  object MainMenu: TMainMenu
    Left = 80
    Top = 64
    object Cadastro1: TMenuItem
      Caption = 'Ca&dastro'
      object Produtos1: TMenuItem
        Caption = '&Produtos'
        OnClick = Produtos1Click
      end
    end
    object Consulta1: TMenuItem
      Caption = 'Co&nsulta'
      object Produtos2: TMenuItem
        Caption = '&Produtos'
        OnClick = Produtos2Click
      end
      object ipos1: TMenuItem
        Caption = '&Tipos'
      end
    end
    object Sair1: TMenuItem
      Caption = '&Sair'
      OnClick = Sair1Click
    end
  end
end
