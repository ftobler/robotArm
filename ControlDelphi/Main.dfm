object Form1: TForm1
  Left = 213
  Top = 278
  Width = 1266
  Height = 625
  Caption = 'Simple Robot Control by Florin Tobler'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  DesignSize = (
    1250
    587)
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 336
    Top = 8
    Width = 201
    Height = 369
    TabOrder = 0
    object Shape1: TShape
      Left = 72
      Top = 40
      Width = 57
      Height = 185
      Pen.Color = clWhite
    end
    object Shape2: TShape
      Left = 8
      Top = 104
      Width = 185
      Height = 57
      Pen.Color = clWhite
    end
    object Shape3: TShape
      Left = 16
      Top = 224
      Width = 169
      Height = 57
      Pen.Color = clWhite
    end
    object Button10: TButton
      Left = 120
      Top = 112
      Width = 41
      Height = 41
      Caption = 'Y+'
      TabOrder = 2
      OnClick = Button10Click
    end
    object Button11: TButton
      Left = 112
      Top = 232
      Width = 41
      Height = 41
      Caption = 'Z+'
      TabOrder = 4
      OnClick = Button11Click
    end
    object Button13: TButton
      Left = 48
      Top = 232
      Width = 41
      Height = 41
      Caption = 'Z-'
      TabOrder = 5
      OnClick = Button13Click
    end
    object Button14: TButton
      Left = 80
      Top = 72
      Width = 41
      Height = 41
      Caption = 'X+'
      TabOrder = 0
      OnClick = Button14Click
    end
    object Button15: TButton
      Left = 80
      Top = 152
      Width = 41
      Height = 41
      Caption = 'X-'
      TabOrder = 1
      OnClick = Button15Click
    end
    object Button19: TButton
      Left = 160
      Top = 232
      Width = 17
      Height = 41
      TabOrder = 10
      OnClick = Button19Click
    end
    object Button12: TButton
      Left = 40
      Top = 112
      Width = 41
      Height = 41
      Caption = 'Y-'
      TabOrder = 3
      OnClick = Button12Click
    end
    object Button20: TButton
      Left = 16
      Top = 112
      Width = 17
      Height = 41
      TabOrder = 9
      OnClick = Button20Click
    end
    object Button21: TButton
      Left = 168
      Top = 112
      Width = 17
      Height = 41
      TabOrder = 8
      OnClick = Button21Click
    end
    object Button22: TButton
      Left = 24
      Top = 232
      Width = 17
      Height = 41
      TabOrder = 11
      OnClick = Button22Click
    end
    object Button23: TButton
      Left = 80
      Top = 200
      Width = 41
      Height = 17
      TabOrder = 7
      OnClick = Button23Click
    end
    object Button24: TButton
      Left = 80
      Top = 48
      Width = 41
      Height = 17
      TabOrder = 6
      OnClick = Button24Click
    end
  end
  object Panel2: TPanel
    Left = 8
    Top = 8
    Width = 321
    Height = 369
    TabOrder = 1
    object Label1: TLabel
      Left = 136
      Top = 16
      Width = 46
      Height = 19
      Caption = 'Label1'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 136
      Top = 48
      Width = 46
      Height = 19
      Caption = 'Label5'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 112
      Top = 104
      Width = 32
      Height = 13
      Caption = 'coarse'
    end
    object Label6: TLabel
      Left = 112
      Top = 128
      Width = 18
      Height = 13
      Caption = 'fine'
    end
    object Label7: TLabel
      Left = 112
      Top = 88
      Width = 31
      Height = 13
      Caption = 'Move'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 8
      Top = 56
      Width = 31
      Height = 13
      Caption = 'CMDs'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 104
      Top = 240
      Width = 42
      Height = 13
      Caption = 'Gripper'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 8
      Top = 200
      Width = 51
      Height = 13
      Caption = 'Positions'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 8
      Top = 16
      Width = 33
      Height = 21
      TabOrder = 15
      Text = '9'
    end
    object Button1: TButton
      Left = 48
      Top = 16
      Width = 75
      Height = 25
      Caption = 'COM!'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 8
      Top = 72
      Width = 75
      Height = 25
      Hint = 'Turn motors on.'
      Caption = 'Stepper ON'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 8
      Top = 104
      Width = 75
      Height = 25
      Hint = 'Turn motors off. You can virtually move while motors are off.'
      Caption = 'Stepper OFF'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 8
      Top = 216
      Width = 75
      Height = 25
      Hint = 'Go to Home position (Right Angle)'
      Caption = 'HOME'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 8
      Top = 136
      Width = 75
      Height = 25
      Hint = 'Turn fan on'
      Caption = 'Fan ON'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = Button5Click
    end
    object Button6: TButton
      Left = 8
      Top = 168
      Width = 75
      Height = 25
      Hint = 'turn fan off'
      Caption = 'Fan OFF'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = Button6Click
    end
    object Button7: TButton
      Left = 8
      Top = 248
      Width = 75
      Height = 25
      Hint = 'Go to a low position'
      Caption = 'BOTTOM'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnClick = Button7Click
    end
    object Button8: TButton
      Left = 8
      Top = 280
      Width = 75
      Height = 25
      Hint = 'Go to a neutral position, where you can turn off the motors.'
      Caption = 'REST'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnClick = Button8Click
    end
    object Button16: TButton
      Left = 8
      Top = 312
      Width = 75
      Height = 25
      Hint = 
        'Go to endstop position. Use this to zero the robot. Drive while ' +
        'steppers are off.'
      Caption = 'ENDSTOP'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
      OnClick = Button16Click
    end
    object Button17: TButton
      Left = 104
      Top = 264
      Width = 75
      Height = 25
      Hint = 'close the gripper'
      Caption = 'Gripper ON'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 11
      OnClick = Button17Click
    end
    object Button18: TButton
      Left = 104
      Top = 296
      Width = 75
      Height = 25
      Hint = 'open the gripper'
      Caption = 'Gripper OFF'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 12
      OnClick = Button18Click
    end
    object SpinEdit1: TSpinEdit
      Left = 184
      Top = 264
      Width = 49
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 13
      Value = 50
    end
    object SpinEdit2: TSpinEdit
      Left = 184
      Top = 296
      Width = 49
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 14
      Value = 50
    end
    object EditCoarse: TEdit
      Left = 152
      Top = 104
      Width = 57
      Height = 21
      TabOrder = 9
      Text = '20'
    end
    object EditFine: TEdit
      Left = 152
      Top = 128
      Width = 57
      Height = 21
      TabOrder = 10
      Text = '2'
    end
  end
  object Panel3: TPanel
    Left = 544
    Top = 8
    Width = 698
    Height = 571
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 2
    DesignSize = (
      698
      571)
    object Label2: TLabel
      Left = 8
      Top = 8
      Width = 47
      Height = 13
      Caption = 'Sequence'
    end
    object Label3: TLabel
      Left = 369
      Top = 8
      Width = 17
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'Log'
    end
    object Memo1: TMemo
      Left = 8
      Top = 24
      Width = 354
      Height = 475
      Anchors = [akLeft, akTop, akRight, akBottom]
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      Lines.Strings = (
        'M17'
        'G1 X0 Y120 Z120'
        'G1 X10 Y100 Z0')
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 4
    end
    object Button9: TButton
      Left = 144
      Top = 506
      Width = 89
      Height = 25
      Anchors = [akLeft, akBottom]
      Caption = 'SEND Sequence'
      TabOrder = 1
      OnClick = Button9Click
    end
    object Memo2: TMemo
      Left = 369
      Top = 24
      Width = 321
      Height = 475
      Anchors = [akTop, akRight, akBottom]
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 5
    end
    object Button25: TButton
      Left = 240
      Top = 538
      Width = 89
      Height = 25
      Anchors = [akLeft, akBottom]
      Caption = 'SEND Line'
      TabOrder = 3
      OnClick = Button25Click
    end
    object Edit2: TEdit
      Left = 8
      Top = 538
      Width = 225
      Height = 21
      Anchors = [akLeft, akBottom]
      TabOrder = 2
    end
    object Button27: TButton
      Left = 64
      Top = 506
      Width = 75
      Height = 25
      Anchors = [akLeft, akBottom]
      Caption = 'ADD Position'
      TabOrder = 0
      OnClick = Button27Click
    end
  end
end
