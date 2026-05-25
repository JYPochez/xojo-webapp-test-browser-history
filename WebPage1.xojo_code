#tag WebPage
Begin WebPage WebPage1
   AllowTabOrderWrap=   True
   Compatibility   =   ""
   ControlCount    =   0
   ControlID       =   ""
   CSSClasses      =   ""
   Enabled         =   False
   Height          =   600
   ImplicitInstance=   True
   Index           =   -2147483648
   Indicator       =   0
   IsImplicitInstance=   False
   LayoutDirection =   0
   LayoutType      =   0
   Left            =   0
   LockBottom      =   False
   LockHorizontal  =   False
   LockLeft        =   True
   LockRight       =   False
   LockTop         =   True
   LockVertical    =   False
   MinimumHeight   =   400
   MinimumWidth    =   600
   PanelIndex      =   0
   ScaleFactor     =   0.0
   TabIndex        =   0
   Title           =   "Browser History Demo"
   Top             =   0
   Visible         =   True
   Width           =   900
   _ImplicitInstance=   False
   _mDesignHeight  =   0
   _mDesignWidth   =   0
   _mName          =   ""
   _mPanelIndex    =   -1
   Begin WebTimer TimerMethod5Dispatch
      ControlID       =   ""
      Enabled         =   True
      Index           =   -2147483648
      Location        =   1
      LockedInPosition=   False
      PanelIndex      =   0
      Period          =   200
      RunMode         =   2
      Scope           =   0
      _mPanelIndex    =   -1
   End
   Begin WebPagePanel PagePanelMain
      ControlCount    =   0
      ControlID       =   ""
      CSSClasses      =   ""
      Enabled         =   True
      Height          =   580
      Index           =   -2147483648
      Indicator       =   ""
      LayoutDirection =   0
      LayoutType      =   0
      Left            =   10
      LockBottom      =   True
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      LockVertical    =   False
      PanelCount      =   5
      PanelIndex      =   0
      Scope           =   2
      SelectedPanelIndex=   3
      TabIndex        =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   10
      Visible         =   True
      Width           =   880
      _mDesignHeight  =   0
      _mDesignWidth   =   0
      _mPanelIndex    =   -1
      Begin WebLabel LabelMenuTitle
         Bold            =   True
         ControlID       =   ""
         CSSClasses      =   ""
         Enabled         =   True
         FontName        =   ""
         FontSize        =   22.0
         Height          =   40
         HTMLElement     =   0
         Index           =   -2147483648
         Indicator       =   ""
         Italic          =   False
         Left            =   30
         LockBottom      =   False
         LockedInPosition=   False
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         LockVertical    =   False
         Multiline       =   False
         PanelIndex      =   0
         Parent          =   "PagePanelMain"
         Scope           =   2
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Browser History Integration Demos"
         TextAlignment   =   2
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   30
         Underline       =   False
         Visible         =   True
         Width           =   840
         _mPanelIndex    =   -1
      End
      Begin WebLabel LabelMenuIntro
         Bold            =   False
         ControlID       =   ""
         CSSClasses      =   ""
         Enabled         =   True
         FontName        =   ""
         FontSize        =   0.0
         Height          =   70
         HTMLElement     =   0
         Index           =   -2147483648
         Indicator       =   ""
         Italic          =   False
         Left            =   30
         LockBottom      =   False
         LockedInPosition=   False
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         LockVertical    =   False
         Multiline       =   True
         PanelIndex      =   0
         Parent          =   "PagePanelMain"
         Scope           =   2
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Pick a method below to test browser Back/Forward button integration with a Xojo Web 2.0 app. Each demo runs a small site (Home / Products / About / Contact) and pushes a real history entry on every navigation, so the browser arrows actually work."
         TextAlignment   =   1
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   80
         Underline       =   False
         Visible         =   True
         Width           =   840
         _mPanelIndex    =   -1
      End
      Begin WebButton ButtonMethod1
         AllowAutoDisable=   False
         Cancel          =   False
         Caption         =   "Method 1 x96 Hidden WebTextField bridge"
         ControlID       =   ""
         CSSClasses      =   ""
         Default         =   False
         Enabled         =   True
         Height          =   45
         Index           =   -2147483648
         Indicator       =   6
         Left            =   30
         LockBottom      =   False
         LockedInPosition=   False
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         LockVertical    =   False
         Outlined        =   False
         PanelIndex      =   0
         Parent          =   "PagePanelMain"
         Scope           =   2
         TabIndex        =   2
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   "Hash-style pushState (#home). Popstate listener writes the hash into a hidden WebTextField; server reacts in TextChanged."
         Top             =   170
         Visible         =   True
         Width           =   840
         _mPanelIndex    =   -1
      End
      Begin WebButton ButtonMethod7
         AllowAutoDisable=   False
         Cancel          =   False
         Caption         =   "Method 7 x96 Native SaveState / HashtagChanged"
         ControlID       =   ""
         CSSClasses      =   ""
         Default         =   False
         Enabled         =   True
         Height          =   45
         Index           =   -2147483648
         Indicator       =   6
         Left            =   30
         LockBottom      =   False
         LockedInPosition=   False
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         LockVertical    =   False
         Outlined        =   False
         PanelIndex      =   0
         Parent          =   "PagePanelMain"
         Scope           =   2
         TabIndex        =   3
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   "Native Web 2.0: Session.SaveState pushes #fragment URLs; HashtagChanged fires on browser Back/Forward."
         Top             =   225
         Visible         =   True
         Width           =   840
         _mPanelIndex    =   -1
      End
      Begin WebButton ButtonMethod4
         AllowAutoDisable=   False
         Cancel          =   False
         Caption         =   "Method 4 x96 Custom WebSDK control"
         ControlID       =   ""
         CSSClasses      =   ""
         Default         =   False
         Enabled         =   True
         Height          =   45
         Index           =   -2147483648
         Indicator       =   6
         Left            =   30
         LockBottom      =   False
         LockedInPosition=   False
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         LockVertical    =   False
         Outlined        =   False
         PanelIndex      =   0
         Parent          =   "PagePanelMain"
         Scope           =   2
         TabIndex        =   4
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   "Hash-style pushState (#home) via a real WebSDKUIControl exposing PushState() and a PopState() event through the triggerServerEvent pipeline."
         Top             =   280
         Visible         =   True
         Width           =   840
         _mPanelIndex    =   -1
      End
      Begin WebButton ButtonMethod5
         AllowAutoDisable=   False
         Cancel          =   False
         Caption         =   "Method 5 x96 HandleURL endpoint + popstate fetch"
         ControlID       =   ""
         CSSClasses      =   ""
         Default         =   False
         Enabled         =   True
         Height          =   45
         Index           =   -2147483648
         Indicator       =   6
         Left            =   30
         LockBottom      =   False
         LockedInPosition=   False
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         LockVertical    =   False
         Outlined        =   False
         PanelIndex      =   0
         Parent          =   "PagePanelMain"
         Scope           =   2
         TabIndex        =   5
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   "Hash-style pushState (#home). JS popstate POSTs to App.HandleURL('/__history__') with session id + hash path; server resolves the session and switches panel."
         Top             =   335
         Visible         =   True
         Width           =   840
         _mPanelIndex    =   -1
      End
      Begin WebLabel LabelMenuFooter
         Bold            =   False
         ControlID       =   ""
         CSSClasses      =   ""
         Enabled         =   True
         FontName        =   ""
         FontSize        =   0.0
         Height          =   30
         HTMLElement     =   0
         Index           =   -2147483648
         Indicator       =   ""
         Italic          =   False
         Left            =   30
         LockBottom      =   False
         LockedInPosition=   False
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         LockVertical    =   False
         Multiline       =   False
         PanelIndex      =   0
         Parent          =   "PagePanelMain"
         Scope           =   2
         TabIndex        =   6
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "After picking a method, use the four nav buttons; then click the browser Back / Forward buttons to verify the panel follows."
         TextAlignment   =   2
         TextColor       =   &c00808080
         Tooltip         =   ""
         Top             =   400
         Underline       =   False
         Visible         =   True
         Width           =   840
         _mPanelIndex    =   -1
      End
      Begin WebButton ButtonBack1
         AllowAutoDisable=   False
         Cancel          =   False
         Caption         =   "<- Back to menu"
         ControlID       =   ""
         CSSClasses      =   ""
         Default         =   False
         Enabled         =   True
         Height          =   38
         Index           =   -2147483648
         Indicator       =   7
         Left            =   30
         LockBottom      =   False
         LockedInPosition=   False
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         LockVertical    =   False
         Outlined        =   False
         PanelIndex      =   1
         Parent          =   "PagePanelMain"
         Scope           =   2
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   30
         Visible         =   True
         Width           =   150
         _mPanelIndex    =   -1
      End
      Begin WebLabel LabelTitle1
         Bold            =   True
         ControlID       =   ""
         CSSClasses      =   ""
         Enabled         =   True
         FontName        =   ""
         FontSize        =   18.0
         Height          =   38
         HTMLElement     =   0
         Index           =   -2147483648
         Indicator       =   ""
         Italic          =   False
         Left            =   200
         LockBottom      =   False
         LockedInPosition=   False
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         LockVertical    =   False
         Multiline       =   False
         PanelIndex      =   1
         Parent          =   "PagePanelMain"
         Scope           =   2
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Method 1 x96 Hidden WebTextField bridge"
         TextAlignment   =   1
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   30
         Underline       =   False
         Visible         =   True
         Width           =   670
         _mPanelIndex    =   -1
      End
      Begin WebButton ButtonHome1
         AllowAutoDisable=   False
         Cancel          =   False
         Caption         =   "Home"
         ControlID       =   ""
         CSSClasses      =   ""
         Default         =   False
         Enabled         =   True
         Height          =   38
         Index           =   -2147483648
         Indicator       =   1
         Left            =   30
         LockBottom      =   False
         LockedInPosition=   False
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         LockVertical    =   False
         Outlined        =   False
         PanelIndex      =   1
         Parent          =   "PagePanelMain"
         Scope           =   2
         TabIndex        =   2
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   90
         Visible         =   True
         Width           =   120
         _mPanelIndex    =   -1
      End
      Begin WebButton ButtonProducts1
         AllowAutoDisable=   False
         Cancel          =   False
         Caption         =   "Products"
         ControlID       =   ""
         CSSClasses      =   ""
         Default         =   False
         Enabled         =   True
         Height          =   38
         Index           =   -2147483648
         Indicator       =   1
         Left            =   160
         LockBottom      =   False
         LockedInPosition=   False
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         LockVertical    =   False
         Outlined        =   False
         PanelIndex      =   1
         Parent          =   "PagePanelMain"
         Scope           =   2
         TabIndex        =   3
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   90
         Visible         =   True
         Width           =   120
         _mPanelIndex    =   -1
      End
      Begin WebButton ButtonAbout1
         AllowAutoDisable=   False
         Cancel          =   False
         Caption         =   "About"
         ControlID       =   ""
         CSSClasses      =   ""
         Default         =   False
         Enabled         =   True
         Height          =   38
         Index           =   -2147483648
         Indicator       =   1
         Left            =   290
         LockBottom      =   False
         LockedInPosition=   False
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         LockVertical    =   False
         Outlined        =   False
         PanelIndex      =   1
         Parent          =   "PagePanelMain"
         Scope           =   2
         TabIndex        =   4
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   90
         Visible         =   True
         Width           =   120
         _mPanelIndex    =   -1
      End
      Begin WebButton ButtonContact1
         AllowAutoDisable=   False
         Cancel          =   False
         Caption         =   "Contact"
         ControlID       =   ""
         CSSClasses      =   ""
         Default         =   False
         Enabled         =   True
         Height          =   38
         Index           =   -2147483648
         Indicator       =   1
         Left            =   420
         LockBottom      =   False
         LockedInPosition=   False
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         LockVertical    =   False
         Outlined        =   False
         PanelIndex      =   1
         Parent          =   "PagePanelMain"
         Scope           =   2
         TabIndex        =   5
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   90
         Visible         =   True
         Width           =   120
         _mPanelIndex    =   -1
      End
      Begin WebPagePanel PagePanelVirtual1
         ControlCount    =   0
         ControlID       =   ""
         CSSClasses      =   ""
         Enabled         =   True
         Height          =   320
         Index           =   -2147483648
         Indicator       =   ""
         LayoutDirection =   0
         LayoutType      =   0
         Left            =   30
         LockBottom      =   False
         LockedInPosition=   False
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         LockVertical    =   False
         PanelCount      =   4
         PanelIndex      =   1
         Parent          =   "PagePanelMain"
         Scope           =   2
         SelectedPanelIndex=   2
         TabIndex        =   6
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   140
         Visible         =   True
         Width           =   840
         _mDesignHeight  =   0
         _mDesignWidth   =   0
         _mPanelIndex    =   -1
         Begin WebLabel LabelVirtual1
            Bold            =   False
            ControlID       =   ""
            CSSClasses      =   ""
            Enabled         =   True
            FontName        =   ""
            FontSize        =   15.0
            Height          =   280
            HTMLElement     =   0
            Index           =   -2147483648
            Indicator       =   ""
            Italic          =   False
            Left            =   30
            LockBottom      =   True
            LockedInPosition=   False
            LockHorizontal  =   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
            LockVertical    =   False
            Multiline       =   True
            PanelIndex      =   0
            Parent          =   "PagePanelVirtual1"
            Scope           =   2
            TabIndex        =   0
            TabPanelIndex   =   0
            TabStop         =   True
            Text            =   "Home page"
            TextAlignment   =   0
            TextColor       =   &c00000000
            Tooltip         =   ""
            Top             =   170
            Underline       =   False
            Visible         =   True
            Width           =   780
            _mPanelIndex    =   -1
         End
         Begin WebLabel LabelVirtual1Prod
            Bold            =   False
            ControlID       =   ""
            CSSClasses      =   ""
            Enabled         =   True
            FontName        =   ""
            FontSize        =   15.0
            Height          =   280
            HTMLElement     =   0
            Index           =   -2147483648
            Indicator       =   ""
            Italic          =   False
            Left            =   30
            LockBottom      =   True
            LockedInPosition=   False
            LockHorizontal  =   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
            LockVertical    =   False
            Multiline       =   True
            PanelIndex      =   1
            Parent          =   "PagePanelVirtual1"
            Scope           =   2
            TabIndex        =   0
            TabPanelIndex   =   0
            TabStop         =   True
            Text            =   "PRODUCTS  |  Our catalog:  *  Widget Mk I - the classic  *  Gadget Pro - with extra features  *  Gizmo Mini - portable edition  |  Click Back in your browser - you should return to whichever page you were viewing before."
            TextAlignment   =   0
            TextColor       =   &c00000000
            Tooltip         =   ""
            Top             =   170
            Underline       =   False
            Visible         =   True
            Width           =   780
            _mPanelIndex    =   -1
         End
         Begin WebLabel LabelVirtual1Abt
            Bold            =   False
            ControlID       =   ""
            CSSClasses      =   ""
            Enabled         =   True
            FontName        =   ""
            FontSize        =   15.0
            Height          =   280
            HTMLElement     =   0
            Index           =   -2147483648
            Indicator       =   ""
            Italic          =   False
            Left            =   30
            LockBottom      =   True
            LockedInPosition=   False
            LockHorizontal  =   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
            LockVertical    =   False
            Multiline       =   True
            PanelIndex      =   2
            Parent          =   "PagePanelVirtual1"
            Scope           =   2
            TabIndex        =   0
            TabPanelIndex   =   0
            TabStop         =   True
            Text            =   "ABOUT  |  Founded in 2026 in a small workshop.  |  Our mission: prove that Xojo Web 2.0 can play nicely with browser history.  |  The four methods on the menu are four different ways to make Back / Forward actually work.  |  Method 7 (SaveState) is usually the right answer."
            TextAlignment   =   0
            TextColor       =   &c00000000
            Tooltip         =   ""
            Top             =   170
            Underline       =   False
            Visible         =   True
            Width           =   780
            _mPanelIndex    =   -1
         End
         Begin WebLabel LabelVirtual1Ctc
            Bold            =   False
            ControlID       =   ""
            CSSClasses      =   ""
            Enabled         =   True
            FontName        =   ""
            FontSize        =   15.0
            Height          =   280
            HTMLElement     =   0
            Index           =   -2147483648
            Indicator       =   ""
            Italic          =   False
            Left            =   30
            LockBottom      =   True
            LockedInPosition=   False
            LockHorizontal  =   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
            LockVertical    =   False
            Multiline       =   True
            PanelIndex      =   3
            Parent          =   "PagePanelVirtual1"
            Scope           =   2
            TabIndex        =   0
            TabPanelIndex   =   0
            TabStop         =   True
            Text            =   "CONTACT  |  Email: demo@example.com  |  Phone: +33 1 23 45 67 89  |  Address: 42 rue de la Demo, 75000 Paris  |  You're now on the last virtual page.  |  Try: Home > Products > About > Contact then Back, Back, Back - you should rewind through them in order."
            TextAlignment   =   0
            TextColor       =   &c00000000
            Tooltip         =   ""
            Top             =   170
            Underline       =   False
            Visible         =   True
            Width           =   780
            _mPanelIndex    =   -1
         End
      End
      Begin WebLabel LabelStatus1
         Bold            =   False
         ControlID       =   ""
         CSSClasses      =   ""
         Enabled         =   True
         FontName        =   ""
         FontSize        =   0.0
         Height          =   80
         HTMLElement     =   0
         Index           =   -2147483648
         Indicator       =   ""
         Italic          =   False
         Left            =   118
         LockBottom      =   True
         LockedInPosition=   False
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         LockVertical    =   False
         Multiline       =   True
         PanelIndex      =   1
         Parent          =   "PagePanelMain"
         Scope           =   2
         TabIndex        =   7
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Status: waiting for navigation."
         TextAlignment   =   1
         TextColor       =   &c00808080
         Tooltip         =   ""
         Top             =   480
         Underline       =   False
         Visible         =   True
         Width           =   752
         _mPanelIndex    =   -1
      End
      Begin WebTextField TextFieldBridge1
         AllowAutoComplete=   False
         AllowAutoCorrect=   "False"
         AllowSpellChecking=   False
         Caption         =   ""
         ControlID       =   ""
         CSSClasses      =   ""
         Enabled         =   True
         FieldType       =   ""
         Format          =   "0"
         Height          =   41
         Hint            =   ""
         Index           =   -2147483648
         Indicator       =   ""
         InputType       =   "0"
         Left            =   30
         LimitText       =   "0"
         LockBottom      =   False
         LockedInPosition=   False
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         LockVertical    =   False
         Mask            =   ""
         MaximumCharactersAllowed=   0
         PanelIndex      =   1
         Parent          =   "PagePanelMain"
         Password        =   "False"
         ReadOnly        =   False
         RequireSelection=   "False"
         Scope           =   2
         TabIndex        =   8
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextAlignment   =   0
         Tooltip         =   ""
         Top             =   470
         ValidationMask  =   ""
         Visible         =   False
         Width           =   80
         _mPanelIndex    =   -1
      End
      Begin WebButton ButtonBack7
         AllowAutoDisable=   False
         Cancel          =   False
         Caption         =   "<- Back to menu"
         ControlID       =   ""
         CSSClasses      =   ""
         Default         =   False
         Enabled         =   True
         Height          =   38
         Index           =   -2147483648
         Indicator       =   7
         Left            =   30
         LockBottom      =   False
         LockedInPosition=   False
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         LockVertical    =   False
         Outlined        =   False
         PanelIndex      =   2
         Parent          =   "PagePanelMain"
         Scope           =   2
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   30
         Visible         =   True
         Width           =   150
         _mPanelIndex    =   -1
      End
      Begin WebLabel LabelTitle7
         Bold            =   True
         ControlID       =   ""
         CSSClasses      =   ""
         Enabled         =   True
         FontName        =   ""
         FontSize        =   18.0
         Height          =   38
         HTMLElement     =   0
         Index           =   -2147483648
         Indicator       =   ""
         Italic          =   False
         Left            =   200
         LockBottom      =   False
         LockedInPosition=   False
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         LockVertical    =   False
         Multiline       =   False
         PanelIndex      =   2
         Parent          =   "PagePanelMain"
         Scope           =   2
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Method 7 x96 Native SaveState / HashtagChanged"
         TextAlignment   =   1
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   30
         Underline       =   False
         Visible         =   True
         Width           =   670
         _mPanelIndex    =   -1
      End
      Begin WebButton ButtonHome7
         AllowAutoDisable=   False
         Cancel          =   False
         Caption         =   "Home"
         ControlID       =   ""
         CSSClasses      =   ""
         Default         =   False
         Enabled         =   True
         Height          =   38
         Index           =   -2147483648
         Indicator       =   1
         Left            =   30
         LockBottom      =   False
         LockedInPosition=   False
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         LockVertical    =   False
         Outlined        =   False
         PanelIndex      =   2
         Parent          =   "PagePanelMain"
         Scope           =   2
         TabIndex        =   2
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   90
         Visible         =   True
         Width           =   120
         _mPanelIndex    =   -1
      End
      Begin WebButton ButtonProducts7
         AllowAutoDisable=   False
         Cancel          =   False
         Caption         =   "Products"
         ControlID       =   ""
         CSSClasses      =   ""
         Default         =   False
         Enabled         =   True
         Height          =   38
         Index           =   -2147483648
         Indicator       =   1
         Left            =   160
         LockBottom      =   False
         LockedInPosition=   False
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         LockVertical    =   False
         Outlined        =   False
         PanelIndex      =   2
         Parent          =   "PagePanelMain"
         Scope           =   2
         TabIndex        =   3
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   90
         Visible         =   True
         Width           =   120
         _mPanelIndex    =   -1
      End
      Begin WebButton ButtonAbout7
         AllowAutoDisable=   False
         Cancel          =   False
         Caption         =   "About"
         ControlID       =   ""
         CSSClasses      =   ""
         Default         =   False
         Enabled         =   True
         Height          =   38
         Index           =   -2147483648
         Indicator       =   1
         Left            =   290
         LockBottom      =   False
         LockedInPosition=   False
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         LockVertical    =   False
         Outlined        =   False
         PanelIndex      =   2
         Parent          =   "PagePanelMain"
         Scope           =   2
         TabIndex        =   4
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   90
         Visible         =   True
         Width           =   120
         _mPanelIndex    =   -1
      End
      Begin WebButton ButtonContact7
         AllowAutoDisable=   False
         Cancel          =   False
         Caption         =   "Contact"
         ControlID       =   ""
         CSSClasses      =   ""
         Default         =   False
         Enabled         =   True
         Height          =   38
         Index           =   -2147483648
         Indicator       =   1
         Left            =   420
         LockBottom      =   False
         LockedInPosition=   False
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         LockVertical    =   False
         Outlined        =   False
         PanelIndex      =   2
         Parent          =   "PagePanelMain"
         Scope           =   2
         TabIndex        =   5
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   90
         Visible         =   True
         Width           =   120
         _mPanelIndex    =   -1
      End
      Begin WebPagePanel PagePanelVirtual7
         ControlCount    =   0
         ControlID       =   ""
         CSSClasses      =   ""
         Enabled         =   True
         Height          =   320
         Index           =   -2147483648
         Indicator       =   ""
         LayoutDirection =   0
         LayoutType      =   0
         Left            =   30
         LockBottom      =   False
         LockedInPosition=   False
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         LockVertical    =   False
         PanelCount      =   4
         PanelIndex      =   2
         Parent          =   "PagePanelMain"
         Scope           =   2
         SelectedPanelIndex=   0
         TabIndex        =   6
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   140
         Visible         =   True
         Width           =   840
         _mDesignHeight  =   0
         _mDesignWidth   =   0
         _mPanelIndex    =   -1
         Begin WebLabel LabelVirtual7
            Bold            =   False
            ControlID       =   ""
            CSSClasses      =   ""
            Enabled         =   True
            FontName        =   ""
            FontSize        =   15.0
            Height          =   280
            HTMLElement     =   0
            Index           =   -2147483648
            Indicator       =   ""
            Italic          =   False
            Left            =   30
            LockBottom      =   True
            LockedInPosition=   False
            LockHorizontal  =   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
            LockVertical    =   False
            Multiline       =   True
            PanelIndex      =   0
            Parent          =   "PagePanelVirtual7"
            Scope           =   2
            TabIndex        =   0
            TabPanelIndex   =   0
            TabStop         =   True
            Text            =   "Home page"
            TextAlignment   =   0
            TextColor       =   &c00000000
            Tooltip         =   ""
            Top             =   170
            Underline       =   False
            Visible         =   True
            Width           =   780
            _mPanelIndex    =   -1
         End
         Begin WebLabel LabelVirtual7Prod
            Bold            =   False
            ControlID       =   ""
            CSSClasses      =   ""
            Enabled         =   True
            FontName        =   ""
            FontSize        =   15.0
            Height          =   280
            HTMLElement     =   0
            Index           =   -2147483648
            Indicator       =   ""
            Italic          =   False
            Left            =   30
            LockBottom      =   True
            LockedInPosition=   False
            LockHorizontal  =   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
            LockVertical    =   False
            Multiline       =   True
            PanelIndex      =   1
            Parent          =   "PagePanelVirtual7"
            Scope           =   2
            TabIndex        =   0
            TabPanelIndex   =   0
            TabStop         =   True
            Text            =   "PRODUCTS  |  Our catalog:  *  Widget Mk I - the classic  *  Gadget Pro - with extra features  *  Gizmo Mini - portable edition  |  Click Back in your browser - you should return to whichever page you were viewing before."
            TextAlignment   =   0
            TextColor       =   &c00000000
            Tooltip         =   ""
            Top             =   170
            Underline       =   False
            Visible         =   True
            Width           =   780
            _mPanelIndex    =   -1
         End
         Begin WebLabel LabelVirtual7Abt
            Bold            =   False
            ControlID       =   ""
            CSSClasses      =   ""
            Enabled         =   True
            FontName        =   ""
            FontSize        =   15.0
            Height          =   280
            HTMLElement     =   0
            Index           =   -2147483648
            Indicator       =   ""
            Italic          =   False
            Left            =   30
            LockBottom      =   True
            LockedInPosition=   False
            LockHorizontal  =   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
            LockVertical    =   False
            Multiline       =   True
            PanelIndex      =   2
            Parent          =   "PagePanelVirtual7"
            Scope           =   2
            TabIndex        =   0
            TabPanelIndex   =   0
            TabStop         =   True
            Text            =   "ABOUT  |  Founded in 2026 in a small workshop.  |  Our mission: prove that Xojo Web 2.0 can play nicely with browser history.  |  The four methods on the menu are four different ways to make Back / Forward actually work.  |  Method 7 (SaveState) is usually the right answer."
            TextAlignment   =   0
            TextColor       =   &c00000000
            Tooltip         =   ""
            Top             =   170
            Underline       =   False
            Visible         =   True
            Width           =   780
            _mPanelIndex    =   -1
         End
         Begin WebLabel LabelVirtual7Ctc
            Bold            =   False
            ControlID       =   ""
            CSSClasses      =   ""
            Enabled         =   True
            FontName        =   ""
            FontSize        =   15.0
            Height          =   280
            HTMLElement     =   0
            Index           =   -2147483648
            Indicator       =   ""
            Italic          =   False
            Left            =   30
            LockBottom      =   True
            LockedInPosition=   False
            LockHorizontal  =   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
            LockVertical    =   False
            Multiline       =   True
            PanelIndex      =   3
            Parent          =   "PagePanelVirtual7"
            Scope           =   2
            TabIndex        =   0
            TabPanelIndex   =   0
            TabStop         =   True
            Text            =   "CONTACT  |  Email: demo@example.com  |  Phone: +33 1 23 45 67 89  |  Address: 42 rue de la Demo, 75000 Paris  |  You're now on the last virtual page.  |  Try: Home > Products > About > Contact then Back, Back, Back - you should rewind through them in order."
            TextAlignment   =   0
            TextColor       =   &c00000000
            Tooltip         =   ""
            Top             =   170
            Underline       =   False
            Visible         =   True
            Width           =   780
            _mPanelIndex    =   -1
         End
      End
      Begin WebLabel LabelStatus7
         Bold            =   False
         ControlID       =   ""
         CSSClasses      =   ""
         Enabled         =   True
         FontName        =   ""
         FontSize        =   0.0
         Height          =   80
         HTMLElement     =   0
         Index           =   -2147483648
         Indicator       =   ""
         Italic          =   False
         Left            =   30
         LockBottom      =   True
         LockedInPosition=   False
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         LockVertical    =   False
         Multiline       =   True
         PanelIndex      =   2
         Parent          =   "PagePanelMain"
         Scope           =   2
         TabIndex        =   7
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Status: waiting for navigation."
         TextAlignment   =   1
         TextColor       =   &c00808080
         Tooltip         =   ""
         Top             =   480
         Underline       =   False
         Visible         =   True
         Width           =   840
         _mPanelIndex    =   -1
      End
      Begin WebButton ButtonBack3
         AllowAutoDisable=   False
         Cancel          =   False
         Caption         =   "<- Back to menu"
         ControlID       =   ""
         CSSClasses      =   ""
         Default         =   False
         Enabled         =   True
         Height          =   38
         Index           =   -2147483648
         Indicator       =   7
         Left            =   30
         LockBottom      =   False
         LockedInPosition=   False
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         LockVertical    =   False
         Outlined        =   False
         PanelIndex      =   3
         Parent          =   "PagePanelMain"
         Scope           =   2
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   30
         Visible         =   True
         Width           =   150
         _mPanelIndex    =   -1
      End
      Begin WebLabel LabelTitle3
         Bold            =   True
         ControlID       =   ""
         CSSClasses      =   ""
         Enabled         =   True
         FontName        =   ""
         FontSize        =   18.0
         Height          =   38
         HTMLElement     =   0
         Index           =   -2147483648
         Indicator       =   ""
         Italic          =   False
         Left            =   200
         LockBottom      =   False
         LockedInPosition=   False
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         LockVertical    =   False
         Multiline       =   False
         PanelIndex      =   3
         Parent          =   "PagePanelMain"
         Scope           =   2
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Method 4 x96 Custom WebSDK control"
         TextAlignment   =   1
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   30
         Underline       =   False
         Visible         =   True
         Width           =   670
         _mPanelIndex    =   -1
      End
      Begin WebButton ButtonHome3
         AllowAutoDisable=   False
         Cancel          =   False
         Caption         =   "Home"
         ControlID       =   ""
         CSSClasses      =   ""
         Default         =   False
         Enabled         =   True
         Height          =   38
         Index           =   -2147483648
         Indicator       =   1
         Left            =   30
         LockBottom      =   False
         LockedInPosition=   False
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         LockVertical    =   False
         Outlined        =   False
         PanelIndex      =   3
         Parent          =   "PagePanelMain"
         Scope           =   2
         TabIndex        =   2
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   90
         Visible         =   True
         Width           =   120
         _mPanelIndex    =   -1
      End
      Begin WebButton ButtonProducts3
         AllowAutoDisable=   False
         Cancel          =   False
         Caption         =   "Products"
         ControlID       =   ""
         CSSClasses      =   ""
         Default         =   False
         Enabled         =   True
         Height          =   38
         Index           =   -2147483648
         Indicator       =   1
         Left            =   160
         LockBottom      =   False
         LockedInPosition=   False
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         LockVertical    =   False
         Outlined        =   False
         PanelIndex      =   3
         Parent          =   "PagePanelMain"
         Scope           =   2
         TabIndex        =   3
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   90
         Visible         =   True
         Width           =   120
         _mPanelIndex    =   -1
      End
      Begin WebButton ButtonAbout3
         AllowAutoDisable=   False
         Cancel          =   False
         Caption         =   "About"
         ControlID       =   ""
         CSSClasses      =   ""
         Default         =   False
         Enabled         =   True
         Height          =   38
         Index           =   -2147483648
         Indicator       =   1
         Left            =   290
         LockBottom      =   False
         LockedInPosition=   False
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         LockVertical    =   False
         Outlined        =   False
         PanelIndex      =   3
         Parent          =   "PagePanelMain"
         Scope           =   2
         TabIndex        =   4
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   90
         Visible         =   True
         Width           =   120
         _mPanelIndex    =   -1
      End
      Begin WebButton ButtonContact3
         AllowAutoDisable=   False
         Cancel          =   False
         Caption         =   "Contact"
         ControlID       =   ""
         CSSClasses      =   ""
         Default         =   False
         Enabled         =   True
         Height          =   38
         Index           =   -2147483648
         Indicator       =   1
         Left            =   420
         LockBottom      =   False
         LockedInPosition=   False
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         LockVertical    =   False
         Outlined        =   False
         PanelIndex      =   3
         Parent          =   "PagePanelMain"
         Scope           =   2
         TabIndex        =   5
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   90
         Visible         =   True
         Width           =   120
         _mPanelIndex    =   -1
      End
      Begin WebPagePanel PagePanelVirtual3
         ControlCount    =   0
         ControlID       =   ""
         CSSClasses      =   ""
         Enabled         =   True
         Height          =   320
         Index           =   -2147483648
         Indicator       =   ""
         LayoutDirection =   0
         LayoutType      =   0
         Left            =   30
         LockBottom      =   False
         LockedInPosition=   False
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         LockVertical    =   False
         PanelCount      =   4
         PanelIndex      =   3
         Parent          =   "PagePanelMain"
         Scope           =   2
         SelectedPanelIndex=   0
         TabIndex        =   6
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   140
         Visible         =   True
         Width           =   840
         _mDesignHeight  =   0
         _mDesignWidth   =   0
         _mPanelIndex    =   -1
         Begin WebLabel LabelVirtual3
            Bold            =   False
            ControlID       =   ""
            CSSClasses      =   ""
            Enabled         =   True
            FontName        =   ""
            FontSize        =   15.0
            Height          =   280
            HTMLElement     =   0
            Index           =   -2147483648
            Indicator       =   ""
            Italic          =   False
            Left            =   30
            LockBottom      =   True
            LockedInPosition=   False
            LockHorizontal  =   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
            LockVertical    =   False
            Multiline       =   True
            PanelIndex      =   0
            Parent          =   "PagePanelVirtual3"
            Scope           =   2
            TabIndex        =   0
            TabPanelIndex   =   0
            TabStop         =   True
            Text            =   "Home page"
            TextAlignment   =   0
            TextColor       =   &c00000000
            Tooltip         =   ""
            Top             =   170
            Underline       =   False
            Visible         =   True
            Width           =   780
            _mPanelIndex    =   -1
         End
         Begin WebLabel LabelVirtual3Prod
            Bold            =   False
            ControlID       =   ""
            CSSClasses      =   ""
            Enabled         =   True
            FontName        =   ""
            FontSize        =   15.0
            Height          =   280
            HTMLElement     =   0
            Index           =   -2147483648
            Indicator       =   ""
            Italic          =   False
            Left            =   30
            LockBottom      =   True
            LockedInPosition=   False
            LockHorizontal  =   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
            LockVertical    =   False
            Multiline       =   True
            PanelIndex      =   1
            Parent          =   "PagePanelVirtual3"
            Scope           =   2
            TabIndex        =   0
            TabPanelIndex   =   0
            TabStop         =   True
            Text            =   "PRODUCTS  |  Our catalog:  *  Widget Mk I - the classic  *  Gadget Pro - with extra features  *  Gizmo Mini - portable edition  |  Click Back in your browser - you should return to whichever page you were viewing before."
            TextAlignment   =   0
            TextColor       =   &c00000000
            Tooltip         =   ""
            Top             =   170
            Underline       =   False
            Visible         =   True
            Width           =   780
            _mPanelIndex    =   -1
         End
         Begin WebLabel LabelVirtual3Abt
            Bold            =   False
            ControlID       =   ""
            CSSClasses      =   ""
            Enabled         =   True
            FontName        =   ""
            FontSize        =   15.0
            Height          =   280
            HTMLElement     =   0
            Index           =   -2147483648
            Indicator       =   ""
            Italic          =   False
            Left            =   30
            LockBottom      =   True
            LockedInPosition=   False
            LockHorizontal  =   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
            LockVertical    =   False
            Multiline       =   True
            PanelIndex      =   2
            Parent          =   "PagePanelVirtual3"
            Scope           =   2
            TabIndex        =   0
            TabPanelIndex   =   0
            TabStop         =   True
            Text            =   "ABOUT  |  Founded in 2026 in a small workshop.  |  Our mission: prove that Xojo Web 2.0 can play nicely with browser history.  |  The four methods on the menu are four different ways to make Back / Forward actually work.  |  Method 7 (SaveState) is usually the right answer."
            TextAlignment   =   0
            TextColor       =   &c00000000
            Tooltip         =   ""
            Top             =   170
            Underline       =   False
            Visible         =   True
            Width           =   780
            _mPanelIndex    =   -1
         End
         Begin WebLabel LabelVirtual3Ctc
            Bold            =   False
            ControlID       =   ""
            CSSClasses      =   ""
            Enabled         =   True
            FontName        =   ""
            FontSize        =   15.0
            Height          =   280
            HTMLElement     =   0
            Index           =   -2147483648
            Indicator       =   ""
            Italic          =   False
            Left            =   30
            LockBottom      =   True
            LockedInPosition=   False
            LockHorizontal  =   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
            LockVertical    =   False
            Multiline       =   True
            PanelIndex      =   3
            Parent          =   "PagePanelVirtual3"
            Scope           =   2
            TabIndex        =   0
            TabPanelIndex   =   0
            TabStop         =   True
            Text            =   "CONTACT  |  Email: demo@example.com  |  Phone: +33 1 23 45 67 89  |  Address: 42 rue de la Demo, 75000 Paris  |  You're now on the last virtual page.  |  Try: Home > Products > About > Contact then Back, Back, Back - you should rewind through them in order."
            TextAlignment   =   0
            TextColor       =   &c00000000
            Tooltip         =   ""
            Top             =   170
            Underline       =   False
            Visible         =   True
            Width           =   780
            _mPanelIndex    =   -1
         End
      End
      Begin WebLabel LabelStatus3
         Bold            =   False
         ControlID       =   ""
         CSSClasses      =   ""
         Enabled         =   True
         FontName        =   ""
         FontSize        =   0.0
         Height          =   80
         HTMLElement     =   0
         Index           =   -2147483648
         Indicator       =   ""
         Italic          =   False
         Left            =   58
         LockBottom      =   True
         LockedInPosition=   False
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         LockVertical    =   False
         Multiline       =   True
         PanelIndex      =   3
         Parent          =   "PagePanelMain"
         Scope           =   2
         TabIndex        =   7
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Status: waiting for navigation."
         TextAlignment   =   1
         TextColor       =   &c00808080
         Tooltip         =   ""
         Top             =   480
         Underline       =   False
         Visible         =   True
         Width           =   812
         _mPanelIndex    =   -1
      End
      Begin WebBrowserHistory BrowserHistory4
         ControlID       =   ""
         CSSClasses      =   ""
         Enabled         =   True
         Height          =   20
         Index           =   -2147483648
         Indicator       =   ""
         Left            =   30
         LockBottom      =   False
         LockedInPosition=   False
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         LockVertical    =   False
         PanelIndex      =   3
         Parent          =   "PagePanelMain"
         Scope           =   2
         TabIndex        =   8
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   470
         Visible         =   False
         Width           =   20
         _mPanelIndex    =   -1
      End
      Begin WebButton ButtonBack4
         AllowAutoDisable=   False
         Cancel          =   False
         Caption         =   "<- Back to menu"
         ControlID       =   ""
         CSSClasses      =   ""
         Default         =   False
         Enabled         =   True
         Height          =   38
         Index           =   -2147483648
         Indicator       =   7
         Left            =   30
         LockBottom      =   False
         LockedInPosition=   False
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         LockVertical    =   False
         Outlined        =   False
         PanelIndex      =   4
         Parent          =   "PagePanelMain"
         Scope           =   2
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   30
         Visible         =   True
         Width           =   150
         _mPanelIndex    =   -1
      End
      Begin WebLabel LabelTitle4
         Bold            =   True
         ControlID       =   ""
         CSSClasses      =   ""
         Enabled         =   True
         FontName        =   ""
         FontSize        =   18.0
         Height          =   38
         HTMLElement     =   0
         Index           =   -2147483648
         Indicator       =   ""
         Italic          =   False
         Left            =   200
         LockBottom      =   False
         LockedInPosition=   False
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         LockVertical    =   False
         Multiline       =   False
         PanelIndex      =   4
         Parent          =   "PagePanelMain"
         Scope           =   2
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Method 5 x96 HandleURL endpoint + popstate fetch"
         TextAlignment   =   1
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   30
         Underline       =   False
         Visible         =   True
         Width           =   670
         _mPanelIndex    =   -1
      End
      Begin WebButton ButtonHome4
         AllowAutoDisable=   False
         Cancel          =   False
         Caption         =   "Home"
         ControlID       =   ""
         CSSClasses      =   ""
         Default         =   False
         Enabled         =   True
         Height          =   38
         Index           =   -2147483648
         Indicator       =   1
         Left            =   30
         LockBottom      =   False
         LockedInPosition=   False
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         LockVertical    =   False
         Outlined        =   False
         PanelIndex      =   4
         Parent          =   "PagePanelMain"
         Scope           =   2
         TabIndex        =   2
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   90
         Visible         =   True
         Width           =   120
         _mPanelIndex    =   -1
      End
      Begin WebButton ButtonProducts4
         AllowAutoDisable=   False
         Cancel          =   False
         Caption         =   "Products"
         ControlID       =   ""
         CSSClasses      =   ""
         Default         =   False
         Enabled         =   True
         Height          =   38
         Index           =   -2147483648
         Indicator       =   1
         Left            =   160
         LockBottom      =   False
         LockedInPosition=   False
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         LockVertical    =   False
         Outlined        =   False
         PanelIndex      =   4
         Parent          =   "PagePanelMain"
         Scope           =   2
         TabIndex        =   3
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   90
         Visible         =   True
         Width           =   120
         _mPanelIndex    =   -1
      End
      Begin WebButton ButtonAbout4
         AllowAutoDisable=   False
         Cancel          =   False
         Caption         =   "About"
         ControlID       =   ""
         CSSClasses      =   ""
         Default         =   False
         Enabled         =   True
         Height          =   38
         Index           =   -2147483648
         Indicator       =   1
         Left            =   290
         LockBottom      =   False
         LockedInPosition=   False
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         LockVertical    =   False
         Outlined        =   False
         PanelIndex      =   4
         Parent          =   "PagePanelMain"
         Scope           =   2
         TabIndex        =   4
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   90
         Visible         =   True
         Width           =   120
         _mPanelIndex    =   -1
      End
      Begin WebButton ButtonContact4
         AllowAutoDisable=   False
         Cancel          =   False
         Caption         =   "Contact"
         ControlID       =   ""
         CSSClasses      =   ""
         Default         =   False
         Enabled         =   True
         Height          =   38
         Index           =   -2147483648
         Indicator       =   1
         Left            =   420
         LockBottom      =   False
         LockedInPosition=   False
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         LockVertical    =   False
         Outlined        =   False
         PanelIndex      =   4
         Parent          =   "PagePanelMain"
         Scope           =   2
         TabIndex        =   5
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   90
         Visible         =   True
         Width           =   120
         _mPanelIndex    =   -1
      End
      Begin WebPagePanel PagePanelVirtual4
         ControlCount    =   0
         ControlID       =   ""
         CSSClasses      =   ""
         Enabled         =   True
         Height          =   320
         Index           =   -2147483648
         Indicator       =   ""
         LayoutDirection =   0
         LayoutType      =   0
         Left            =   30
         LockBottom      =   False
         LockedInPosition=   False
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         LockVertical    =   False
         PanelCount      =   4
         PanelIndex      =   4
         Parent          =   "PagePanelMain"
         Scope           =   2
         SelectedPanelIndex=   1
         TabIndex        =   6
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   140
         Visible         =   True
         Width           =   840
         _mDesignHeight  =   0
         _mDesignWidth   =   0
         _mPanelIndex    =   -1
         Begin WebLabel LabelVirtual4
            Bold            =   False
            ControlID       =   ""
            CSSClasses      =   ""
            Enabled         =   True
            FontName        =   ""
            FontSize        =   15.0
            Height          =   280
            HTMLElement     =   0
            Index           =   -2147483648
            Indicator       =   ""
            Italic          =   False
            Left            =   30
            LockBottom      =   True
            LockedInPosition=   False
            LockHorizontal  =   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
            LockVertical    =   False
            Multiline       =   True
            PanelIndex      =   0
            Parent          =   "PagePanelVirtual4"
            Scope           =   2
            TabIndex        =   0
            TabPanelIndex   =   0
            TabStop         =   True
            Text            =   "Home page"
            TextAlignment   =   0
            TextColor       =   &c00000000
            Tooltip         =   ""
            Top             =   170
            Underline       =   False
            Visible         =   True
            Width           =   780
            _mPanelIndex    =   -1
         End
         Begin WebLabel LabelVirtual4Prod
            Bold            =   False
            ControlID       =   ""
            CSSClasses      =   ""
            Enabled         =   True
            FontName        =   ""
            FontSize        =   15.0
            Height          =   280
            HTMLElement     =   0
            Index           =   -2147483648
            Indicator       =   ""
            Italic          =   False
            Left            =   30
            LockBottom      =   True
            LockedInPosition=   False
            LockHorizontal  =   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
            LockVertical    =   False
            Multiline       =   True
            PanelIndex      =   1
            Parent          =   "PagePanelVirtual4"
            Scope           =   2
            TabIndex        =   0
            TabPanelIndex   =   0
            TabStop         =   True
            Text            =   "PRODUCTS  |  Our catalog:  *  Widget Mk I - the classic  *  Gadget Pro - with extra features  *  Gizmo Mini - portable edition  |  Click Back in your browser - you should return to whichever page you were viewing before."
            TextAlignment   =   0
            TextColor       =   &c00000000
            Tooltip         =   ""
            Top             =   170
            Underline       =   False
            Visible         =   True
            Width           =   780
            _mPanelIndex    =   -1
         End
         Begin WebLabel LabelVirtual4Abt
            Bold            =   False
            ControlID       =   ""
            CSSClasses      =   ""
            Enabled         =   True
            FontName        =   ""
            FontSize        =   15.0
            Height          =   280
            HTMLElement     =   0
            Index           =   -2147483648
            Indicator       =   ""
            Italic          =   False
            Left            =   30
            LockBottom      =   True
            LockedInPosition=   False
            LockHorizontal  =   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
            LockVertical    =   False
            Multiline       =   True
            PanelIndex      =   2
            Parent          =   "PagePanelVirtual4"
            Scope           =   2
            TabIndex        =   0
            TabPanelIndex   =   0
            TabStop         =   True
            Text            =   "ABOUT  |  Founded in 2026 in a small workshop.  |  Our mission: prove that Xojo Web 2.0 can play nicely with browser history.  |  The four methods on the menu are four different ways to make Back / Forward actually work.  |  Method 7 (SaveState) is usually the right answer."
            TextAlignment   =   0
            TextColor       =   &c00000000
            Tooltip         =   ""
            Top             =   170
            Underline       =   False
            Visible         =   True
            Width           =   780
            _mPanelIndex    =   -1
         End
         Begin WebLabel LabelVirtual4Ctc
            Bold            =   False
            ControlID       =   ""
            CSSClasses      =   ""
            Enabled         =   True
            FontName        =   ""
            FontSize        =   15.0
            Height          =   280
            HTMLElement     =   0
            Index           =   -2147483648
            Indicator       =   ""
            Italic          =   False
            Left            =   30
            LockBottom      =   True
            LockedInPosition=   False
            LockHorizontal  =   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
            LockVertical    =   False
            Multiline       =   True
            PanelIndex      =   3
            Parent          =   "PagePanelVirtual4"
            Scope           =   2
            TabIndex        =   0
            TabPanelIndex   =   0
            TabStop         =   True
            Text            =   "CONTACT  |  Email: demo@example.com  |  Phone: +33 1 23 45 67 89  |  Address: 42 rue de la Demo, 75000 Paris  |  You're now on the last virtual page.  |  Try: Home > Products > About > Contact then Back, Back, Back - you should rewind through them in order."
            TextAlignment   =   0
            TextColor       =   &c00000000
            Tooltip         =   ""
            Top             =   170
            Underline       =   False
            Visible         =   True
            Width           =   780
            _mPanelIndex    =   -1
         End
      End
      Begin WebLabel LabelStatus4
         Bold            =   False
         ControlID       =   ""
         CSSClasses      =   ""
         Enabled         =   True
         FontName        =   ""
         FontSize        =   0.0
         Height          =   80
         HTMLElement     =   0
         Index           =   -2147483648
         Indicator       =   ""
         Italic          =   False
         Left            =   30
         LockBottom      =   True
         LockedInPosition=   False
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         LockVertical    =   False
         Multiline       =   True
         PanelIndex      =   4
         Parent          =   "PagePanelMain"
         Scope           =   2
         TabIndex        =   7
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Status: waiting for navigation."
         TextAlignment   =   1
         TextColor       =   &c00808080
         Tooltip         =   ""
         Top             =   480
         Underline       =   False
         Visible         =   True
         Width           =   840
         _mPanelIndex    =   -1
      End
   End
End
#tag EndWebPage

#tag WindowCode
	#tag Event
		Sub Opening()
		  // Stash the session id where our injected JS can read it for Method 5.
		  // We also kick off the Method-1 popstate listener at page load so that
		  // even Method 1 picks up Back/Forward without needing the user to enter
		  // its panel first (Method 1 uses Session.ExecuteJavaScript, which is
		  // session-wide, not per-panel).
		  Self.InjectMethod1Listener
		  Self.InjectMethod5Listener
		End Sub
	#tag EndEvent

	#tag Event
		Sub Shown()
		  // Replace the current history entry so the user's first browser-Back
		  // press lands somewhere meaningful (the menu) rather than the page
		  // they came from.
		  Var js As String = "window.history.replaceState({menu:true}, '', window.location.pathname);"
		  Session.ExecuteJavaScript(js)
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Sub ApplyVirtualPage7(theTargetPage As BrowserHistoryUtils.eVirtualPage)
		  // Updates UI for Method 7. Does NOT push state -- the caller (button
		  // handler) is responsible for calling Session.SaveState BEFORE invoking
		  // this method, so HashtagChanged callers never re-push.
		  mCurrentMethod = BrowserHistoryUtils.eMethod.Method7
		  mCurrentVirtualPage = theTargetPage
		  
		  PagePanelVirtual7.SelectedPanelIndex = Integer(theTargetPage)
		  
		  Var src As String = If(mLastSourceWasUser7, kStatusFromButton, kStatusFromHashtag)
		  LabelStatus7.Text = "Method: " + BrowserHistoryUtils.MethodName(BrowserHistoryUtils.eMethod.Method7) + EndOfLine + _
		  "Current page: " + BrowserHistoryUtils.PageTitle(theTargetPage) + EndOfLine + _
		  "Last navigation source: " + src
		  
		  mLastSourceWasUser7 = False
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ApplyVirtualPage7FromHash(theTargetPage As BrowserHistoryUtils.eVirtualPage)
		  // Entry point called from Session.HashtagChanged when the user clicks
		  // browser Back / Forward (or edits the hash manually).
		  // HashtagChanged fires on ANY hash change, including those caused by
		  // Methods 1/4/5's pushState. Only react when the user is actually on
		  // the Method 7 demo panel — otherwise we'd hijack the user back to
		  // Method 7 while they're exploring another method.
		  If PagePanelMain.SelectedPanelIndex <> 2 Then Return
		  mLastSourceWasUser7 = False
		  Self.ApplyVirtualPage7(theTargetPage)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 43616C6C6564206279207468652061707020726F757465206174206E2074687261642073616665207365207465696E6776205265676174696F6E20536F75636520706F7053746174652E0A
		Sub HandleHistoryFromServer(thePath As String)
		  // Entry point used by App.HandleURL (Method 5) when the browser POSTs
		  // back. We are not on the GUI thread there, but the WebSession has
		  // already been picked, so calls into UI controls are valid.
		  Var thePage As BrowserHistoryUtils.eVirtualPage = BrowserHistoryUtils.PageFromPath(thePath)
		  Self.NavigateTo(BrowserHistoryUtils.eMethod.Method5, thePage, True)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub InjectMethod1Listener()
		  // Method 1: register a popstate listener that pokes the path into the
		  // hidden WebTextField and dispatches a "change" event so the framework
		  // round-trips back to TextChanged on the server.
		  Var tfId As String = TextFieldBridge1.ControlID
		  // We read window.location.hash (hash-style pushState) since path-style
		  // breaks Xojo Web 2.0's URL routing.
		  Var js As String = "(function(){window.addEventListener('popstate',function(e){var p=window.location.hash||'';if(p.charAt(0)==='#')p=p.substring(1);if(p==='')p='home';var f=document.getElementById('" + tfId + "');if(!f)return;var input=f.querySelector('input')||f;input.value=p+'|'+Date.now();input.dispatchEvent(new Event('change',{bubbles:true}));});})();"
		  Session.ExecuteJavaScript(js)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub InjectMethod5Listener()
		  // Method 5: popstate listener that POSTs the new path (plus the session
		  // id) to /__history__ where App.HandleURL picks it up server-side.
		  Var sid As String = Session.Identifier
		  Var ep As String = BrowserHistoryUtils.kHistoryEndpoint
		  // Read window.location.hash (hash-style pushState) since path-style
		  // breaks Xojo Web 2.0's URL routing. Use GET (not POST) because Xojo
		  // Web 2.0's framework rejects unexpected POSTs with 403 before
		  // App.HandleURL fires. GET passes through to HandleURL reliably.
		  Var js As String = "(function(){window.__xojoSession='" + sid + "';window.addEventListener('popstate',function(e){if(window.__handledByOther)return;var p=window.location.hash||'';if(p.charAt(0)==='#')p=p.substring(1);if(p==='')p='home';var url='" + ep + "?sessionId='+encodeURIComponent('" + sid + "')+'&path='+encodeURIComponent(p);fetch(url,{method:'GET'});});})();"
		  Session.ExecuteJavaScript(js)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4E61766967617465206F66206120646566696E6564207669727475616C20706167652E0A
		Sub NavigateTo(theMethod As BrowserHistoryUtils.eMethod, theTargetPage As BrowserHistoryUtils.eVirtualPage, comeFromPopState As Boolean = False)
		  // Centralised handler used by both the nav buttons (in which case we
		  // push a history entry) and by the popstate/HandleURL path (in which
		  // case we do NOT push, otherwise we'd recurse forever).
		  mCurrentMethod = theMethod
		  mCurrentVirtualPage = theTargetPage
		  
		  Self.UpdateVirtualUI(theMethod, theTargetPage)
		  
		  If Not comeFromPopState Then
		    Self.PushHistoryForMethod(theMethod, theTargetPage)
		  End If
		  
		  Self.UpdateStatusLabel(theMethod, theTargetPage, comeFromPopState)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub PushHistoryForMethod(theMethod As BrowserHistoryUtils.eMethod, theTargetPage As BrowserHistoryUtils.eVirtualPage)
		  // Each method has its own technique for asking the browser to push a
		  // history entry. We branch here.
		  Var thePath As String = BrowserHistoryUtils.PathFromPage(theTargetPage)
		  Var theTitle As String = BrowserHistoryUtils.PageTitle(theTargetPage)
		  
		  Select Case theMethod
		  Case BrowserHistoryUtils.eMethod.Method1, BrowserHistoryUtils.eMethod.Method5
		    // Method 1 and 5 use plain ExecuteJavaScript to push state.
		    // Use HASH-style URLs (#home, #products). Path-style pushState
		    // ("/products") confuses Xojo Web 2.0's URL routing and the
		    // browser never enables the Back button. Hash changes are
		    // same-document and the framework ignores them, which is exactly
		    // what we want for client-side virtual nav.
		    // Defer the pushState past the framework's update flush. Without
		    // setTimeout(...,0) the framework's own JS (URL/state management
		    // that runs after our ExecuteJavaScript in the same update batch)
		    // silently undoes the pushState, leaving the Back button grayed.
		    // Yielding once to the event loop lets the flush finish first.
		    Var url As String = "#" + thePath
		    // Use window.history (not bare history) because Xojo's tryToEval runs
		    // our JS in a scope where "history" is shadowed by a framework symbol
		    // that lacks pushState. window.history resolves to the real History API.
		    Var js As String = "setTimeout(function(){" + _
		    "window.history.pushState({p:'" + thePath + "'},'" + theTitle + "','" + url + "');" + _
		    "document.title='" + theTitle + "';" + _
		    "},0);"
		    Session.ExecuteJavaScript(js)
		  Case BrowserHistoryUtils.eMethod.Method4
		    // Method 4 owns its own JS pipeline through the WebSDK control.
		    BrowserHistory4.PushState(thePath, theTitle)
		  End Select
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub UpdateStatusLabel(theMethod As BrowserHistoryUtils.eMethod, theTargetPage As BrowserHistoryUtils.eVirtualPage, fromPopState As Boolean)
		  Var src As String = If(fromPopState, kStatusFromPopState, kStatusFromButton)
		  Var msg As String = "Method: " + BrowserHistoryUtils.MethodName(theMethod) + EndOfLine + _
		  "Current page: " + BrowserHistoryUtils.PageTitle(theTargetPage) + EndOfLine + _
		  "Last navigation source: " + src
		  
		  Select Case theMethod
		  Case BrowserHistoryUtils.eMethod.Method1
		    LabelStatus1.Text = msg
		  Case BrowserHistoryUtils.eMethod.Method4
		    LabelStatus3.Text = msg
		  Case BrowserHistoryUtils.eMethod.Method5
		    LabelStatus4.Text = msg
		  End Select
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub UpdateVirtualUI(theMethod As BrowserHistoryUtils.eMethod, theTargetPage As BrowserHistoryUtils.eVirtualPage)
		  // Switch the inner WebPagePanel for the active method to the right
		  // virtual page. The per-sub-panel WebLabels carry their own static
		  // text from the layout, so no dynamic text update is needed here.
		  Var idx As Integer = Integer(theTargetPage)
		  
		  Select Case theMethod
		  Case BrowserHistoryUtils.eMethod.Method1
		    PagePanelVirtual1.SelectedPanelIndex = idx
		  Case BrowserHistoryUtils.eMethod.Method4
		    PagePanelVirtual3.SelectedPanelIndex = idx
		  Case BrowserHistoryUtils.eMethod.Method5
		    PagePanelVirtual4.SelectedPanelIndex = idx
		  End Select
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21, Description = 2057697468206D6574686F642063757272656D656E742073776F207365656372656374696E2074686520746869732074696D652E0A
		Private mCurrentMethod As BrowserHistoryUtils.eMethod
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mCurrentVirtualPage As BrowserHistoryUtils.eVirtualPage
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mLastSourceWasUser7 As Boolean
	#tag EndProperty


	#tag Constant, Name = kStatusFromButton, Type = String, Dynamic = False, Default = \"in-app button click", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kStatusFromHashtag, Type = String, Dynamic = False, Default = \"browser Back/Forward (HashtagChanged)", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kStatusFromPopState, Type = String, Dynamic = False, Default = \"browser Back/Forward (popstate)", Scope = Private
	#tag EndConstant


#tag EndWindowCode

#tag Events TimerMethod5Dispatch
	#tag Event
		Sub Run()
		  Var thePath As String = Session.ConsumePendingHistoryPath
		  If thePath = "" Then Return
		  Self.HandleHistoryFromServer(thePath)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ButtonMethod1
	#tag Event
		Sub Pressed()
		  PagePanelMain.SelectedPanelIndex = 1
		  Self.NavigateTo(BrowserHistoryUtils.eMethod.Method1, BrowserHistoryUtils.eVirtualPage.Home)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ButtonMethod7
	#tag Event
		Sub Pressed()
		  mLastSourceWasUser7 = True
		  Session.SaveState(BrowserHistoryUtils.kHome, "", False)
		  PagePanelMain.SelectedPanelIndex = 2
		  Self.ApplyVirtualPage7(BrowserHistoryUtils.eVirtualPage.Home)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ButtonMethod4
	#tag Event
		Sub Pressed()
		  PagePanelMain.SelectedPanelIndex = 3
		  Self.NavigateTo(BrowserHistoryUtils.eMethod.Method4, BrowserHistoryUtils.eVirtualPage.Home)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ButtonMethod5
	#tag Event
		Sub Pressed()
		  PagePanelMain.SelectedPanelIndex = 4
		  Self.NavigateTo(BrowserHistoryUtils.eMethod.Method5, BrowserHistoryUtils.eVirtualPage.Home)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ButtonBack1
	#tag Event
		Sub Pressed()
		  PagePanelMain.SelectedPanelIndex = 0
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ButtonHome1
	#tag Event
		Sub Pressed()
		  Self.NavigateTo(BrowserHistoryUtils.eMethod.Method1, BrowserHistoryUtils.eVirtualPage.Home)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ButtonProducts1
	#tag Event
		Sub Pressed()
		  Self.NavigateTo(BrowserHistoryUtils.eMethod.Method1, BrowserHistoryUtils.eVirtualPage.Products)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ButtonAbout1
	#tag Event
		Sub Pressed()
		  Self.NavigateTo(BrowserHistoryUtils.eMethod.Method1, BrowserHistoryUtils.eVirtualPage.About)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ButtonContact1
	#tag Event
		Sub Pressed()
		  Self.NavigateTo(BrowserHistoryUtils.eMethod.Method1, BrowserHistoryUtils.eVirtualPage.Contact)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events TextFieldBridge1
	#tag Event
		Sub TextChanged()
		  // Format: "<path>|<timestamp>" -- we strip the timestamp, which is
		  // there only to make the value always look different so the framework
		  // actually fires TextChanged when the same path repeats.
		  Var raw As String = Me.Text
		  Var thePath As String = raw
		  Var pipe As Integer = raw.IndexOf("|")
		  If pipe >= 0 Then
		    thePath = raw.Left(pipe)
		  End If
		  Var thePage As BrowserHistoryUtils.eVirtualPage = BrowserHistoryUtils.PageFromPath(thePath)
		  Self.NavigateTo(BrowserHistoryUtils.eMethod.Method1, thePage, True)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ButtonBack7
	#tag Event
		Sub Pressed()
		  Session.SaveState("menu", "", False)
		  PagePanelMain.SelectedPanelIndex = 0
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ButtonHome7
	#tag Event
		Sub Pressed()
		  mLastSourceWasUser7 = True
		  Session.SaveState(BrowserHistoryUtils.PathFromPage(BrowserHistoryUtils.eVirtualPage.Home), "", False)
		  Self.ApplyVirtualPage7(BrowserHistoryUtils.eVirtualPage.Home)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ButtonProducts7
	#tag Event
		Sub Pressed()
		  mLastSourceWasUser7 = True
		  Session.SaveState(BrowserHistoryUtils.PathFromPage(BrowserHistoryUtils.eVirtualPage.Products), "", False)
		  Self.ApplyVirtualPage7(BrowserHistoryUtils.eVirtualPage.Products)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ButtonAbout7
	#tag Event
		Sub Pressed()
		  mLastSourceWasUser7 = True
		  Session.SaveState(BrowserHistoryUtils.PathFromPage(BrowserHistoryUtils.eVirtualPage.About), "", False)
		  Self.ApplyVirtualPage7(BrowserHistoryUtils.eVirtualPage.About)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ButtonContact7
	#tag Event
		Sub Pressed()
		  mLastSourceWasUser7 = True
		  Session.SaveState(BrowserHistoryUtils.PathFromPage(BrowserHistoryUtils.eVirtualPage.Contact), "", False)
		  Self.ApplyVirtualPage7(BrowserHistoryUtils.eVirtualPage.Contact)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ButtonBack3
	#tag Event
		Sub Pressed()
		  PagePanelMain.SelectedPanelIndex = 0
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ButtonHome3
	#tag Event
		Sub Pressed()
		  Self.NavigateTo(BrowserHistoryUtils.eMethod.Method4, BrowserHistoryUtils.eVirtualPage.Home)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ButtonProducts3
	#tag Event
		Sub Pressed()
		  Self.NavigateTo(BrowserHistoryUtils.eMethod.Method4, BrowserHistoryUtils.eVirtualPage.Products)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ButtonAbout3
	#tag Event
		Sub Pressed()
		  Self.NavigateTo(BrowserHistoryUtils.eMethod.Method4, BrowserHistoryUtils.eVirtualPage.About)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ButtonContact3
	#tag Event
		Sub Pressed()
		  Self.NavigateTo(BrowserHistoryUtils.eMethod.Method4, BrowserHistoryUtils.eVirtualPage.Contact)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events BrowserHistory4
	#tag Event
		Sub PopState(thePath As String)
		  Var thePage As BrowserHistoryUtils.eVirtualPage = BrowserHistoryUtils.PageFromPath(thePath)
		  Self.NavigateTo(BrowserHistoryUtils.eMethod.Method4, thePage, True)
		End Sub
	#tag EndEvent
	#tag Event
		Sub Ready()
		  // Replace the current entry now that the JS bridge is alive so the
		  // very first Back lands on the menu.
		  Me.ReplaceState(BrowserHistoryUtils.kHome, BrowserHistoryUtils.kTitleHome)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ButtonBack4
	#tag Event
		Sub Pressed()
		  PagePanelMain.SelectedPanelIndex = 0
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ButtonHome4
	#tag Event
		Sub Pressed()
		  Self.NavigateTo(BrowserHistoryUtils.eMethod.Method5, BrowserHistoryUtils.eVirtualPage.Home)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ButtonProducts4
	#tag Event
		Sub Pressed()
		  Self.NavigateTo(BrowserHistoryUtils.eMethod.Method5, BrowserHistoryUtils.eVirtualPage.Products)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ButtonAbout4
	#tag Event
		Sub Pressed()
		  Self.NavigateTo(BrowserHistoryUtils.eMethod.Method5, BrowserHistoryUtils.eVirtualPage.About)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ButtonContact4
	#tag Event
		Sub Pressed()
		  Self.NavigateTo(BrowserHistoryUtils.eMethod.Method5, BrowserHistoryUtils.eVirtualPage.Contact)
		End Sub
	#tag EndEvent
#tag EndEvents
