object FPrincipal: TFPrincipal
  Left = 0
  Top = 0
  Caption = 'Exemplo Delphi'
  ClientHeight = 441
  ClientWidth = 828
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -21
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 30
  object lbl_label: TLabel
    Left = 27
    Top = 80
    Width = 75
    Height = 30
    Caption = 'lbl_label'
  end
  object edt_edit: TEdit
    Left = 27
    Top = 184
    Width = 249
    Height = 38
    TabOrder = 0
  end
  object btn_botao: TButton
    Left = 27
    Top = 296
    Width = 249
    Height = 41
    Caption = 'Exibir mensagem'
    TabOrder = 1
    OnClick = btn_botaoClick
  end
  object pnl_calculadora: TPanel
    Left = 483
    Top = 32
    Width = 337
    Height = 313
    TabOrder = 2
    object edt_n3: TEdit
      Left = 96
      Top = 240
      Width = 153
      Height = 38
      TabOrder = 6
    end
    object edt_n2: TEdit
      Left = 96
      Top = 121
      Width = 153
      Height = 38
      TabOrder = 1
    end
    object edt_n1: TEdit
      Left = 96
      Top = 40
      Width = 153
      Height = 38
      TabOrder = 0
    end
    object btn_somar: TButton
      Left = 95
      Top = 191
      Width = 34
      Height = 30
      Caption = '+'
      TabOrder = 2
      OnClick = btn_somarClick
    end
    object btn_subtrair: TButton
      Left = 135
      Top = 191
      Width = 34
      Height = 30
      Caption = '-'
      TabOrder = 3
      OnClick = btn_subtrairClick
    end
    object btn_dividir: TButton
      Left = 175
      Top = 191
      Width = 34
      Height = 30
      Caption = '/'
      TabOrder = 4
      OnClick = btn_dividirClick
    end
    object btn_multiplicar: TButton
      Left = 215
      Top = 191
      Width = 34
      Height = 30
      Caption = 'x'
      TabOrder = 5
      OnClick = btn_multiplicarClick
    end
  end
end
