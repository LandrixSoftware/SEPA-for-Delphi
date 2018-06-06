object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'SEPA Demo'
  ClientHeight = 601
  ClientWidth = 930
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 930
    Height = 601
    ActivePage = TabSheet3
    Align = alClient
    TabOrder = 0
    object TabSheet3: TTabSheet
      Caption = 'Kontoauszugsdaten camt.052.001.02'
      ImageIndex = 2
      object Button1: TButton
        Left = 3
        Top = 3
        Width = 75
        Height = 25
        Caption = 'Laden'
        TabOrder = 0
        OnClick = Button1Click
      end
      object Memo1: TMemo
        Left = 0
        Top = 34
        Width = 922
        Height = 539
        Align = alBottom
        Anchors = [akLeft, akTop, akRight, akBottom]
        ScrollBars = ssBoth
        TabOrder = 1
        WordWrap = False
      end
      object Button2: TButton
        Left = 120
        Top = 0
        Width = 75
        Height = 25
        Caption = 'Button2'
        TabOrder = 2
        OnClick = Button2Click
      end
    end
  end
end
