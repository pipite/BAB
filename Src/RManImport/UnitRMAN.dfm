object FormRMAN: TFormRMAN
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'RMAN Import'
  ClientHeight = 823
  ClientWidth = 716
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
  object Panel2: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 710
    Height = 201
    Align = alTop
    TabOrder = 0
    object ButtonAutoImportALL: TButton
      Left = 151
      Top = 10
      Width = 147
      Height = 56
      Caption = 'Auto Import ALL'
      TabOrder = 0
      OnClick = ButtonAutoImportALLClick
    end
    object ButtonImportContact: TButton
      Left = 384
      Top = 40
      Width = 147
      Height = 25
      Caption = 'Import Contact'
      TabOrder = 1
      OnClick = ButtonImportContactClick
    end
    object ButtonImportGroup: TButton
      Left = 384
      Top = 71
      Width = 147
      Height = 25
      Caption = 'Import Group'
      TabOrder = 2
      OnClick = ButtonImportGroupClick
    end
    object ButtonImportItem: TButton
      Left = 384
      Top = 102
      Width = 147
      Height = 25
      Caption = 'Import Items'
      TabOrder = 3
      OnClick = ButtonImportItemClick
    end
    object ButtonImportPurchaseSale: TButton
      Left = 384
      Top = 133
      Width = 147
      Height = 25
      Caption = 'Import Purchase Sale'
      TabOrder = 4
      OnClick = ButtonImportPurchaseSaleClick
    end
    object ButtonClearItemComment: TButton
      Left = 151
      Top = 72
      Width = 147
      Height = 25
      Caption = 'Clear Item Comment'
      TabOrder = 5
    end
    object ButtonClearContactComment: TButton
      Left = 151
      Top = 103
      Width = 147
      Height = 25
      Caption = 'Clear Contact Comment'
      TabOrder = 6
      OnClick = ButtonClearContactCommentClick
    end
    object AutoImportMinimal: TButton
      Left = 384
      Top = 10
      Width = 147
      Height = 24
      Caption = 'Empty Database'
      TabOrder = 7
      OnClick = AutoImportMinimalClick
    end
    object ButtonTryOtExit: TButton
      Left = 151
      Top = 165
      Width = 380
      Height = 25
      Caption = 'Exit'
      TabOrder = 8
      OnClick = ButtonTryOtExitClick
    end
    object ButtonPayAllInvoice: TButton
      Left = 151
      Top = 134
      Width = 147
      Height = 25
      Caption = 'Pay All Invoice'
      TabOrder = 9
      OnClick = ButtonPayAllInvoiceClick
    end
  end
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 210
    Width = 710
    Height = 610
    Align = alClient
    BevelOuter = bvLowered
    TabOrder = 1
    object Memo1: TMemo
      AlignWithMargins = True
      Left = 4
      Top = 24
      Width = 702
      Height = 582
      Margins.Top = 0
      Align = alClient
      Lines.Strings = (
        'Memo1')
      ScrollBars = ssBoth
      TabOrder = 0
    end
    object PB: TProgressBar
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 702
      Height = 17
      Align = alTop
      TabOrder = 1
    end
  end
  object ADOConnect: TADOConnection
    LoginPrompt = False
    Provider = 'VFPOLEDB.1'
    Left = 57
    Top = 241
  end
  object ACreditor: TADOTable
    Connection = ADOConnect
    CursorType = ctStatic
    LockType = ltReadOnly
    TableDirect = True
    TableName = 'creditor'
    Left = 199
    Top = 240
  end
  object AItem: TADOTable
    Connection = ADOConnect
    CursorType = ctStatic
    LockType = ltReadOnly
    TableName = 'stock'
    Left = 279
    Top = 240
  end
  object ADebitor: TADOTable
    Connection = ADOConnect
    CursorType = ctStatic
    LockType = ltReadOnly
    TableName = 'debtors'
    Left = 199
    Top = 288
  end
  object APurchase: TADOQuery
    Connection = ADOConnect
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select *'
      'from invoice.dbf')
    Left = 280
    Top = 288
  end
  object AQPurItm: TADOQuery
    Connection = ADOConnect
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * '
      'from invtrans.dbf'
      'order by NUMBER')
    Left = 280
    Top = 336
  end
  object AGroup: TADOTable
    Connection = ADOConnect
    CursorType = ctStatic
    LockType = ltReadOnly
    TableName = 'sgroup'
    Left = 199
    Top = 336
  end
  object FolderSelectDialog: TFileOpenDialog
    FavoriteLinks = <>
    FileTypes = <>
    Options = [fdoPickFolders]
    Title = 'Select Backup Folder'
    Left = 398
    Top = 268
  end
end
