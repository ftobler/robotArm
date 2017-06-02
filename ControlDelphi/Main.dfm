object Form1: TForm1
  Left = 226
  Top = 198
  Width = 1600
  Height = 780
  Caption = 'Simple Robot Control by Florin Tobler'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnCreate = FormCreate
  DesignSize = (
    1582
    733)
  PixelsPerInch = 120
  TextHeight = 17
  object Panel1: TPanel
    Left = 439
    Top = 10
    Width = 263
    Height = 559
    TabOrder = 0
    object Shape1: TShape
      Left = 94
      Top = 52
      Width = 75
      Height = 242
      Pen.Color = clWhite
    end
    object Shape2: TShape
      Left = 10
      Top = 136
      Width = 242
      Height = 75
      Pen.Color = clWhite
    end
    object Shape3: TShape
      Left = 21
      Top = 293
      Width = 221
      Height = 74
      Pen.Color = clWhite
    end
    object Button10: TButton
      Left = 157
      Top = 146
      Width = 54
      Height = 54
      Caption = 'Y+'
      TabOrder = 2
      OnClick = Button10Click
    end
    object Button11: TButton
      Left = 146
      Top = 303
      Width = 54
      Height = 54
      Caption = 'Z+'
      TabOrder = 4
      OnClick = Button11Click
    end
    object Button13: TButton
      Left = 63
      Top = 303
      Width = 53
      Height = 54
      Caption = 'Z-'
      TabOrder = 5
      OnClick = Button13Click
    end
    object Button14: TButton
      Left = 105
      Top = 94
      Width = 53
      Height = 54
      Caption = 'X+'
      TabOrder = 0
      OnClick = Button14Click
    end
    object Button15: TButton
      Left = 105
      Top = 199
      Width = 53
      Height = 53
      Caption = 'X-'
      TabOrder = 1
      OnClick = Button15Click
    end
    object Button19: TButton
      Left = 209
      Top = 303
      Width = 22
      Height = 54
      TabOrder = 10
      OnClick = Button19Click
    end
    object Button12: TButton
      Left = 52
      Top = 146
      Width = 54
      Height = 54
      Caption = 'Y-'
      TabOrder = 3
      OnClick = Button12Click
    end
    object Button20: TButton
      Left = 21
      Top = 146
      Width = 22
      Height = 54
      TabOrder = 9
      OnClick = Button20Click
    end
    object Button21: TButton
      Left = 220
      Top = 146
      Width = 22
      Height = 54
      TabOrder = 8
      OnClick = Button21Click
    end
    object Button22: TButton
      Left = 31
      Top = 303
      Width = 23
      Height = 54
      TabOrder = 11
      OnClick = Button22Click
    end
    object Button23: TButton
      Left = 105
      Top = 262
      Width = 53
      Height = 22
      TabOrder = 7
      OnClick = Button23Click
    end
    object Button24: TButton
      Left = 105
      Top = 63
      Width = 53
      Height = 22
      TabOrder = 6
      OnClick = Button24Click
    end
  end
  object Panel2: TPanel
    Left = 10
    Top = 10
    Width = 420
    Height = 559
    TabOrder = 1
    object Label1: TLabel
      Left = 178
      Top = 21
      Width = 64
      Height = 27
      Caption = 'Label1'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -22
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 178
      Top = 63
      Width = 64
      Height = 27
      Caption = 'Label5'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -22
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 146
      Top = 152
      Width = 40
      Height = 17
      Caption = 'coarse'
    end
    object Label6: TLabel
      Left = 146
      Top = 183
      Width = 21
      Height = 17
      Caption = 'fine'
    end
    object Label7: TLabel
      Left = 146
      Top = 131
      Width = 40
      Height = 18
      Caption = 'Move'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 10
      Top = 129
      Width = 42
      Height = 18
      Caption = 'CMDs'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 136
      Top = 306
      Width = 57
      Height = 18
      Caption = 'Gripper'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 10
      Top = 318
      Width = 69
      Height = 18
      Caption = 'Positions'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 10
      Top = 21
      Width = 44
      Height = 25
      TabOrder = 15
      Text = '9'
    end
    object Button1: TButton
      Left = 63
      Top = 21
      Width = 98
      Height = 33
      Caption = 'COM!'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 10
      Top = 150
      Width = 99
      Height = 33
      Hint = 'Turn motors on.'
      Caption = 'Stepper ON'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 10
      Top = 192
      Width = 99
      Height = 33
      Hint = 'Turn motors off. You can virtually move while motors are off.'
      Caption = 'Stepper OFF'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 10
      Top = 338
      Width = 99
      Height = 33
      Hint = 'Go to Home position (Right Angle)'
      Caption = 'HOME'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 10
      Top = 234
      Width = 99
      Height = 33
      Hint = 'Turn fan on'
      Caption = 'Fan ON'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = Button5Click
    end
    object Button6: TButton
      Left = 10
      Top = 276
      Width = 99
      Height = 32
      Hint = 'turn fan off'
      Caption = 'Fan OFF'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = Button6Click
    end
    object Button7: TButton
      Left = 10
      Top = 380
      Width = 99
      Height = 33
      Hint = 'Go to a low position'
      Caption = 'BOTTOM'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnClick = Button7Click
    end
    object Button8: TButton
      Left = 10
      Top = 422
      Width = 99
      Height = 33
      Hint = 'Go to a neutral position, where you can turn off the motors.'
      Caption = 'REST'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnClick = Button8Click
    end
    object Button16: TButton
      Left = 10
      Top = 464
      Width = 99
      Height = 33
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
      Left = 136
      Top = 337
      Width = 98
      Height = 33
      Hint = 'close the gripper'
      Caption = 'Gripper ON'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 11
      OnClick = Button17Click
    end
    object Button18: TButton
      Left = 136
      Top = 379
      Width = 98
      Height = 33
      Hint = 'open the gripper'
      Caption = 'Gripper OFF'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 12
      OnClick = Button18Click
    end
    object SpinEdit1: TSpinEdit
      Left = 241
      Top = 337
      Width = 64
      Height = 27
      MaxValue = 0
      MinValue = 0
      TabOrder = 13
      Value = 50
    end
    object SpinEdit2: TSpinEdit
      Left = 241
      Top = 379
      Width = 64
      Height = 27
      MaxValue = 0
      MinValue = 0
      TabOrder = 14
      Value = 50
    end
    object EditCoarse: TEdit
      Left = 199
      Top = 152
      Width = 74
      Height = 25
      TabOrder = 9
      Text = '20'
    end
    object EditFine: TEdit
      Left = 199
      Top = 183
      Width = 74
      Height = 25
      TabOrder = 10
      Text = '2'
    end
    object CheckBox1: TCheckBox
      Left = 8
      Top = 72
      Width = 161
      Height = 17
      Caption = 'Send Start Sequence'
      Checked = True
      State = cbChecked
      TabOrder = 16
    end
  end
  object Panel3: TPanel
    Left = 711
    Top = 10
    Width = 859
    Height = 713
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 2
    DesignSize = (
      859
      713)
    object Label2: TLabel
      Left = 10
      Top = 10
      Width = 60
      Height = 17
      Caption = 'Sequence'
    end
    object Label3: TLabel
      Left = 429
      Top = 10
      Width = 23
      Height = 17
      Anchors = [akTop, akRight]
      Caption = 'Log'
    end
    object Memo1: TMemo
      Left = 10
      Top = 31
      Width = 409
      Height = 588
      Anchors = [akLeft, akTop, akRight, akBottom]
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
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
      Left = 188
      Top = 628
      Width = 117
      Height = 32
      Anchors = [akLeft, akBottom]
      Caption = 'SEND Sequence'
      TabOrder = 1
      OnClick = Button9Click
    end
    object Memo2: TMemo
      Left = 429
      Top = 31
      Width = 419
      Height = 588
      Anchors = [akTop, akRight, akBottom]
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 5
    end
    object Button25: TButton
      Left = 314
      Top = 670
      Width = 116
      Height = 32
      Anchors = [akLeft, akBottom]
      Caption = 'SEND Line'
      TabOrder = 3
      OnClick = Button25Click
    end
    object Edit2: TEdit
      Left = 10
      Top = 670
      Width = 295
      Height = 25
      Anchors = [akLeft, akBottom]
      TabOrder = 2
    end
    object Button27: TButton
      Left = 84
      Top = 628
      Width = 98
      Height = 32
      Anchors = [akLeft, akBottom]
      Caption = 'ADD Position'
      TabOrder = 0
      OnClick = Button27Click
    end
  end
end
