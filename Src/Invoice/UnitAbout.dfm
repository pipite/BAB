object FormAbout: TFormAbout
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'About Invoice'
  ClientHeight = 660
  ClientWidth = 611
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RichEdit1: TRichEdit
    AlignWithMargins = True
    Left = 3
    Top = 95
    Width = 605
    Height = 562
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Lines.Strings = (
      'Invoide V1.09 25/06/2017'
      ' - DB en V1.9'
      ' - Ajout Selection Dossiers de Backup'
      
        ' - Ajout Parametre pour Delete les Items non utilis'#233's (Orphelins' +
        ')'
      ' - Ajout Parametre pour compensation stock negatif'
      ' - Ajout Form Import'
      ' - DB en V1.8'
      ' - Ajout parametre pour verrouiller ou non le stock negatif'
      ' - Ajout Autofill SaleNegativeItem'
      ' - Ajout Autofill SaleWithoutCode'
      ' - Ajout Form About'
      ' - Ajout QuickPay'
      ' - Ajout Payment dans panneau Purchase / Sale'
      ' - Ajout Cr'#233'ation d'#39'item dans Item Assembly'
      ' - Correction bug Delete PURITM / SALITM'
      ''
      'Invoice V1.08 18/06/2017'
      ' - DB en V1.7'
      ' - Correction cr'#233'ation SAL PUR'
      ' - Interdire modif Not Classified (group)   Anonym (Contact)'
      ' - Interdire modif Lost & Found * xxxxx'
      ' - Lost&Found. Codecouleur rouge pour les 2 premieres category'
      ' - Modif d'#39'un Item: Si CP change update affichage'
      ' - Modif d'#39'un Item: Si code change, inscrire modif dans Comment'
      ' - Controle modif Item du code si Code -1 ou "V"'
      ' - Creation item: Interdire code -1 sauf Sale Unknown item'
      ' - Purchase: Si Suppression, supprimer Item si necessaire'
      ' - Assembly: Si Suppression, Supprimer Item si necessaire.'
      ' - Modif item: interdire modif code -1'
      ' - Creation item: Interdire code -1'
      ' - Sale Without code: Si modif quantit'#233', Update lost/found'
      
        ' - Sale Without code: Si suppression, Update lost/found, supprim' +
        'er si necessaire.'
      ' - Ajout Nombre de jour AUTOBackup'
      ' - Ajout Category l&f dans History'
      
        ' - Sale Without code: Inscription Lost&Found dans Comment de l'#39'i' +
        'tem cr'#233#233'.'
      ' - Double clic pour ouvrir les factures'
      ' - Sale Without code: Ajout 2 grid PUR et SAL dans page L&F'
      ' - Modif table CNT pour ajout Adresse Email'
      ' - Ajout Table PARAM'
      ' - Gestion des parametres en DB'
      ' - Panneau saisie Creation/modif Contact'
      ' - Panneau saisie Creation/modif Group'
      ' - Panneau saisie Creation/modif PUR'
      ' - Panneau saisie Creation/modif SAL'
      ' - Panneau saisie Creation/modif PURITM'
      ' - Panneau saisie Creation/modif SALITM'
      ' - Memo InfoText en DB.'
      ' - Panneau saisie Creation/modif PAYPUR et SAL'
      ' - Panneau saisie Creation/modif LF'
      ' - Panneau saisie Creation/modif LFITM'
      ' - Panneau saisie Creation/modif ASM'
      ' - Panneau saisie Creation/modif ASMITM'
      ' - Correction Qty Assembly'
      ' - Memo Log en DB'
      ' - Traitement Item sans PUR et code -1'
      ' - Remove Item  >> dans Logfile'
      ' - ToDo Refonte Interface'
      ' - ToDo Delivery Collumn + Address Tel'
      ' - Correction Update Category'
      ' - Chiffrage des Item en error.'
      ' - Memo ToDo en DB'
      ' - Export Excel ITM, MOV LF CNT PUR SAL'
      ''
      'BAB V1.07 07/06/2017'
      
        ' - Correction Autobackup (Conserve AUTO backup 2 jours au lieu d' +
        'e 2mn)'
      ' - Ajout coloration Rouge/Vert pour les Discount'
      ''
      'BAB V1.06 06/03/2017'
      ' - Prise en charge demarrage auto Service SQL'
      ' - Prise en charge Connection base SQL R'#233'seau'
      ' - Ajout Total Discount dans les Sales'
      ' - Ajout Total Gap dans les Purchases'
      ' - Ajout info serveur dans la Connexion'
      ' - Ajout Company Name'
      ' - Accelleration Demarrage'
      ' - Setup d'#39'installation'
      ''
      'BAB V1.05 03/06/2017'
      ' - Ajout assistant premier lancement'
      ' - Ajout Auto Backup + Auto Purge'
      ' - Ajout Base vierge Empty.bak'
      ''
      'BAB V1.04 02/06/2017'
      ' - Ajout Onglet Mouvment'
      ' - Amelioration filtre'
      ' - Amelioration comportement des clics'
      ''
      'BAB V1.03 31/05/2017'
      ' - Ajout Replace Item in Sale Invoice'
      ' - Ajout Choix de Fonts'
      ' - Ajout Tracabilit'#233' dans zone Comment'
      ' - Ajout des fonctions CleanUp'
      '   - Clear Item Comment'
      '   - Clear Item non utilis'#233's'
      '   - nettoyage des Invoices + suppress Item Qty 0'
      ''
      'BAB V1.02 26/05/2017'
      ' - Modif ergonomie des switchs button'
      ' - Ajout Merge Item'
      ' - Ajout Tracabilit'#233' des manips Admin'
      ' - Modif de la Base de donn'#233'es SQL pour affichage des Profits'
      ' - Ajout ABCD sur Contact'
      ' - Ajout fenetre connexion au demarrage'
      ''
      'BAB V1.01 25/05/2017'
      
        ' - Modif ordre de tri des factures. dans l'#39'ordre de saisie des i' +
        'tems'
      
        ' - Filtre texte temps r'#233'el sur N'#176' item partiel ou texte partiel ' +
        'dans designation'
      ' - Ajout profit dans Sale invoice'
      ' - Ajout default purchase dans Purchase invoice'
      ' - Filtre des Lost Found identique a item'
      ' - Lost found cumule si item identique'
      ' - Compress Database avant Backup'
      ''
      'BAB V1.0 24/05/2017'
      ' - Ajout Lock diff'#233'r'#233' sur les factures + affichage temps restant'
      ' - Verrouillage Purchase Number 0 utilis'#233' pour les Unknown Item'
      ' - Ajout historique versions'
      ' - Correction BUG bouton New Purchase / New Sale'
      ' - Amelioration visibilit'#233' des filtres'
      ' - Amelioration visibilit'#233' mode ADMIN'
      ' - Ajout gestion des Styles'
      ' - Ajout To Do List'
      ' - Ajout Merge contact en mode ADMIN'
      ' - Ajout controle delete Contact / Group'
      ' - Interdiction de vendre un article '#224' stock 0'
      
        ' - Interdiction de retirer un article d'#39'une purchase si il n'#39'y e' +
        'n a plus assez en stock'
      ' - D'#233'verrouillage total en mode ADMIN'
      ' - Modification possible du Delivery, m'#234'me si facture close'
      ''
      'Code couleurs dans Item'
      'Bleu = Item en stock'
      'Gris = Item Zero stock'
      'Rouge = Item Stock negatif'
      'Fushia = Item jamais approvisionn'#233' dans une '
      'Purchase'
      ''
      'Code couleur dans Sale / Purchase'
      'Bleu = Facture ouverte non pay'#233
      'Fushia = Facture ouverte Partiellement pay'#233
      'Gris = Facture close'
      'Vert = Facture '#224' 0 vnd'
      ''
      'Code couleur dans Item Sale / Purchase'
      'Bleu = normal'
      'Fushia = Not delivered ou Lend'
      'Rouge = Quantit'#233' 0')
    ParentFont = False
    ReadOnly = True
    ScrollBars = ssBoth
    TabOrder = 0
    Zoom = 100
  end
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 605
    Height = 86
    Align = alTop
    BevelOuter = bvLowered
    TabOrder = 1
    object Label1: TLabel
      Left = 24
      Top = 16
      Width = 77
      Height = 13
      Caption = 'Invoice Version:'
    end
    object Label2: TLabel
      Left = 24
      Top = 48
      Width = 88
      Height = 13
      Caption = 'Database Version:'
    end
    object Label3: TLabel
      Left = 272
      Top = 48
      Width = 262
      Height = 13
      Caption = 'SQL ServerVersion Version:   SQL Server Express 2014'
    end
    object Label4: TLabel
      Left = 136
      Top = 16
      Width = 31
      Height = 13
      Caption = 'Label4'
    end
    object Label5: TLabel
      Left = 136
      Top = 48
      Width = 31
      Height = 13
      Caption = 'Label5'
    end
  end
end
