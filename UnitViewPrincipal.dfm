object Form1: TForm1
  Left = 785
  Top = 375
  Width = 450
  Height = 351
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 304
    Top = 248
    Width = 107
    Height = 25
    Caption = 'Aciona Eventos'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 16
    Top = 48
    Width = 401
    Height = 185
    Lines.Strings = (
      '')
    TabOrder = 1
  end
  object ProgressBar1: TProgressBar
    Left = 16
    Top = 24
    Width = 401
    Height = 17
    TabOrder = 2
  end
end
