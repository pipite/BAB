object FormINVPAY: TFormINVPAY
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Payment'
  ClientHeight = 494
  ClientWidth = 268
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 418
    Width = 45
    Height = 13
    Caption = 'Comment'
    Layout = tlCenter
  end
  object Label3: TLabel
    Left = 8
    Top = 391
    Width = 37
    Height = 13
    Caption = 'Amount'
    Layout = tlCenter
  end
  object MonthCalendar1: TMonthCalendar
    Left = 8
    Top = 8
    Width = 249
    Height = 169
    Date = 42900.592061041670000000
    TabOrder = 0
  end
  object ButtonCancel: TButton
    Left = 8
    Top = 445
    Width = 97
    Height = 41
    Caption = 'Cancel'
    TabOrder = 1
    OnClick = ButtonCancelClick
  end
  object ButtonPay: TButton
    Left = 152
    Top = 445
    Width = 105
    Height = 41
    Caption = 'Pay'
    TabOrder = 2
    OnClick = ButtonPayClick
  end
  object EditINVPAYAmount: TEdit
    Left = 59
    Top = 382
    Width = 143
    Height = 30
    Alignment = taRightJustify
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    NumbersOnly = True
    ParentFont = False
    TabOrder = 3
  end
  object EditINVPAYComment: TEdit
    Left = 59
    Top = 418
    Width = 198
    Height = 21
    Alignment = taRightJustify
    TabOrder = 4
  end
  object Panel1: TPanel
    Left = 40
    Top = 183
    Width = 177
    Height = 193
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    StyleElements = [seClient, seBorder]
    object Button8: TButton
      Left = 13
      Top = 8
      Width = 40
      Height = 38
      Caption = '7'
      TabOrder = 0
      OnClick = ButtonNumberClick
    end
    object Button3: TButton
      Left = 13
      Top = 140
      Width = 40
      Height = 38
      Caption = '0'
      TabOrder = 1
      OnClick = ButtonNumberClick
    end
    object Button7: TButton
      Left = 68
      Top = 140
      Width = 40
      Height = 38
      Caption = '000'
      TabOrder = 2
      OnClick = ButtonNumberClick
    end
    object Button9: TButton
      Left = 122
      Top = 140
      Width = 40
      Height = 38
      Caption = 'C'
      TabOrder = 3
      OnClick = Button9Click
    end
    object Button11: TButton
      Left = 122
      Top = 96
      Width = 40
      Height = 38
      Caption = '3'
      TabOrder = 4
      OnClick = ButtonNumberClick
    end
    object Button4: TButton
      Left = 68
      Top = 96
      Width = 40
      Height = 38
      Caption = '2'
      TabOrder = 5
      OnClick = ButtonNumberClick
    end
    object Button10: TButton
      Left = 13
      Top = 96
      Width = 40
      Height = 38
      Caption = '1'
      TabOrder = 6
      OnClick = ButtonNumberClick
    end
    object Button5: TButton
      Left = 13
      Top = 52
      Width = 40
      Height = 38
      Caption = '4'
      TabOrder = 7
      OnClick = ButtonNumberClick
    end
    object Button12: TButton
      Left = 68
      Top = 52
      Width = 40
      Height = 38
      Caption = '5'
      TabOrder = 8
      OnClick = ButtonNumberClick
    end
    object Button6: TButton
      Left = 122
      Top = 52
      Width = 40
      Height = 38
      Caption = '6'
      TabOrder = 9
      OnClick = ButtonNumberClick
    end
    object Button2: TButton
      Left = 122
      Top = 8
      Width = 40
      Height = 38
      Caption = '9'
      TabOrder = 10
      OnClick = ButtonNumberClick
    end
    object Button1: TButton
      Left = 68
      Top = 8
      Width = 40
      Height = 38
      Caption = '8'
      TabOrder = 11
      OnClick = ButtonNumberClick
    end
  end
end
