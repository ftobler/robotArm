object FormTextEditor: TFormTextEditor
  Left = 455
  Top = 227
  Width = 656
  Height = 468
  Caption = 'Edit Text'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    640
    430)
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 16
    Top = 16
    Width = 609
    Height = 353
    Anchors = [akLeft, akTop, akRight, akBottom]
    Lines.Strings = (
      'Memo1')
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 384
    Width = 640
    Height = 46
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 1
    OnResize = Panel1Resize
    object Panel2: TPanel
      Left = 192
      Top = 8
      Width = 167
      Height = 33
      BevelOuter = bvNone
      Color = clWhite
      TabOrder = 0
      OnResize = Panel1Resize
      object Button1: TButton
        Left = 4
        Top = 4
        Width = 75
        Height = 25
        Caption = 'OK'
        TabOrder = 0
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 88
        Top = 4
        Width = 75
        Height = 25
        Caption = 'Cancel'
        TabOrder = 1
        OnClick = Button2Click
      end
    end
  end
end
