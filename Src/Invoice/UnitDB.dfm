object FormDB: TFormDB
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Database Setup'
  ClientHeight = 286
  ClientWidth = 672
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox3: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 159
    Width = 666
    Height = 114
    Align = alTop
    Caption = ' Database Server Setup'
    TabOrder = 0
    object Label21: TLabel
      Left = 16
      Top = 24
      Width = 81
      Height = 13
      Caption = 'Database Server'
    end
    object Label25: TLabel
      Left = 378
      Top = 24
      Width = 72
      Height = 13
      Caption = 'Instance Name'
    end
    object Label7: TLabel
      Left = 168
      Top = 24
      Width = 59
      Height = 13
      Caption = 'or IP Adress'
    end
    object EditServer: TEdit
      Left = 239
      Top = 21
      Width = 119
      Height = 21
      TabOrder = 0
      Text = '(Local)'
      OnChange = EditParamChange
    end
    object EditInstance: TEdit
      Left = 467
      Top = 21
      Width = 174
      Height = 21
      TabOrder = 1
      Text = 'Enter Instance Name here'
      OnChange = EditParamChange
    end
    object ButtonRestore: TButton
      Left = 200
      Top = 57
      Width = 220
      Height = 46
      Caption = 'Restore Database'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = ButtonRestoreClick
    end
    object ButtonContinue: TButton
      Left = 426
      Top = 57
      Width = 215
      Height = 46
      Caption = 'Continue'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = ButtonContinueClick
    end
    object ButtonEmpty: TButton
      Left = 16
      Top = 57
      Width = 178
      Height = 46
      Caption = 'Empty Database'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = ButtonEmptyClick
    end
    object Button1: TButton
      Left = 103
      Top = 21
      Width = 59
      Height = 21
      Caption = '(Local)'
      TabOrder = 5
      OnClick = Button1Click
    end
  end
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 666
    Height = 54
    Align = alTop
    BevelOuter = bvLowered
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object LabelInfo: TLabel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 658
      Height = 46
      Align = alClient
      Alignment = taCenter
      Caption = 'Database Setup'
      Layout = tlCenter
      ExplicitWidth = 133
      ExplicitHeight = 23
    end
  end
  object GroupBox1: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 63
    Width = 666
    Height = 90
    Align = alTop
    Caption = '  Connection Status  '
    TabOrder = 2
    object Label2: TLabel
      Left = 32
      Top = 24
      Width = 32
      Height = 13
      Caption = 'Server'
    end
    object Label3: TLabel
      Left = 32
      Top = 43
      Width = 46
      Height = 13
      Caption = 'Database'
    end
    object Label4: TLabel
      Left = 239
      Top = 43
      Width = 35
      Height = 13
      Caption = 'Version'
    end
    object LabelServer: TLabel
      Left = 93
      Top = 24
      Width = 57
      Height = 13
      Caption = 'LabelServer'
      StyleElements = [seClient, seBorder]
    end
    object LabelDatabase: TLabel
      Left = 93
      Top = 43
      Width = 71
      Height = 13
      Caption = 'LabelDatabase'
      StyleElements = [seClient, seBorder]
    end
    object LabelSQLServerDBVersion: TLabel
      Left = 315
      Top = 43
      Width = 124
      Height = 13
      Caption = 'LabelSQLServerDBVersion'
      StyleElements = [seClient, seBorder]
    end
    object Label5: TLabel
      Left = 239
      Top = 24
      Width = 54
      Height = 13
      Caption = 'SQL Server'
    end
    object LabelSQLEngine: TLabel
      Left = 315
      Top = 24
      Width = 60
      Height = 13
      Caption = 'LabelVersion'
      StyleElements = [seClient, seBorder]
    end
    object Label6: TLabel
      Left = 415
      Top = 24
      Width = 35
      Height = 13
      Caption = 'Service'
    end
    object LabelServiceStart: TLabel
      Left = 467
      Top = 24
      Width = 60
      Height = 13
      Caption = 'LabelVersion'
      StyleElements = [seClient, seBorder]
    end
    object Label15: TLabel
      Left = 32
      Top = 62
      Width = 46
      Height = 13
      Caption = 'IP Adress'
    end
    object LabelIP: TLabel
      Left = 93
      Top = 62
      Width = 10
      Height = 13
      Caption = 'IP'
    end
  end
end
