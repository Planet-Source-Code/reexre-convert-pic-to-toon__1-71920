VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form toTOON 
   AutoRedraw      =   -1  'True
   Caption         =   "To Toon"
   ClientHeight    =   8580
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   14745
   LinkTopic       =   "Form1"
   ScaleHeight     =   572
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   983
   StartUpPosition =   1  'CenterOwner
   Begin VB.CommandButton SaveP 
      Caption         =   "Save Pale"
      Height          =   255
      Left            =   10440
      TabIndex        =   28
      Top             =   4440
      Width           =   855
   End
   Begin VB.CommandButton LoadP 
      Caption         =   "Load Pale"
      Height          =   255
      Left            =   10440
      TabIndex        =   27
      Top             =   4200
      Width           =   855
   End
   Begin VB.PictureBox bkgW 
      Appearance      =   0  'Flat
      BackColor       =   &H00FFFFFF&
      ForeColor       =   &H80000008&
      Height          =   495
      Left            =   9360
      ScaleHeight     =   465
      ScaleWidth      =   585
      TabIndex        =   26
      ToolTipText     =   "Select BackColor"
      Top             =   3360
      Width           =   615
   End
   Begin VB.CheckBox CustomPalette 
      Caption         =   "Custom Palette"
      Height          =   195
      Left            =   7560
      TabIndex        =   25
      Top             =   4200
      Width           =   1455
   End
   Begin MSComctlLib.Slider Satura 
      Height          =   300
      Left            =   7440
      TabIndex        =   24
      ToolTipText     =   "Saturation *3.23606"
      Top             =   2400
      Width           =   735
      _ExtentX        =   1296
      _ExtentY        =   529
      _Version        =   393216
      SelStart        =   6
      Value           =   6
   End
   Begin MSComctlLib.Slider slBLEND 
      Height          =   255
      Left            =   7440
      TabIndex        =   23
      ToolTipText     =   "BLEND"
      Top             =   3240
      Width           =   1935
      _ExtentX        =   3413
      _ExtentY        =   450
      _Version        =   393216
      Max             =   100
      TickFrequency   =   10
   End
   Begin VB.CheckBox chGray 
      Caption         =   "Gray"
      Height          =   255
      Left            =   9120
      TabIndex        =   22
      ToolTipText     =   "Only Black & White"
      Top             =   3960
      Width           =   735
   End
   Begin VB.CheckBox chONLYcontour 
      Caption         =   "Only Contour"
      Height          =   255
      Left            =   7560
      TabIndex        =   21
      Top             =   3480
      Width           =   1575
   End
   Begin VB.CheckBox chPureBN 
      Caption         =   "Black & White"
      Height          =   255
      Left            =   7560
      TabIndex        =   20
      ToolTipText     =   "Only Black & White"
      Top             =   3720
      Width           =   1575
   End
   Begin VB.CheckBox chkMINI 
      Caption         =   "Miniature"
      Height          =   195
      Left            =   7560
      TabIndex        =   19
      Top             =   3960
      Value           =   1  'Checked
      Width           =   1455
   End
   Begin VB.PictureBox PicPAL 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   375
      Left            =   7440
      ScaleHeight     =   25
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   193
      TabIndex        =   18
      Top             =   4440
      Width           =   2895
   End
   Begin VB.CommandButton Command4 
      Caption         =   "Command4"
      Height          =   735
      Left            =   12600
      TabIndex        =   17
      Top             =   1920
      Visible         =   0   'False
      Width           =   735
   End
   Begin VB.FileListBox ListF2 
      Height          =   3015
      Left            =   10440
      TabIndex        =   16
      Top             =   4800
      Width           =   3975
   End
   Begin VB.DirListBox ListDIr2 
      Height          =   3015
      Left            =   7440
      TabIndex        =   15
      Top             =   4800
      Width           =   2895
   End
   Begin VB.CheckBox ChQM 
      Caption         =   "QM"
      Height          =   255
      Left            =   8640
      TabIndex        =   14
      ToolTipText     =   "Quantization Mode: Checked NNQUANT, Unchecked  WUQUANT"
      Top             =   120
      Value           =   1  'Checked
      Width           =   615
   End
   Begin MSComctlLib.Slider MAXindBAR 
      Height          =   495
      Left            =   7440
      TabIndex        =   3
      ToolTipText     =   "Number Of Colors to USE. some values ..7,9,11,14,17"
      Top             =   2760
      Width           =   1935
      _ExtentX        =   3413
      _ExtentY        =   873
      _Version        =   393216
      Min             =   1
      Max             =   23
      SelStart        =   4
      Value           =   4
   End
   Begin VB.CheckBox chSaturation 
      Caption         =   "Saturation"
      Height          =   255
      Left            =   9480
      TabIndex        =   12
      ToolTipText     =   "Do Saturation  1.61803"
      Top             =   3480
      Value           =   1  'Checked
      Visible         =   0   'False
      Width           =   1095
   End
   Begin MSComctlLib.Slider Bright 
      Height          =   300
      Left            =   8640
      TabIndex        =   13
      ToolTipText     =   "Brightness"
      Top             =   2400
      Width           =   615
      _ExtentX        =   1085
      _ExtentY        =   529
      _Version        =   393216
      Max             =   64
      TickFrequency   =   10
   End
   Begin MSComctlLib.Slider BColorScale 
      Height          =   300
      Left            =   7440
      TabIndex        =   9
      ToolTipText     =   "Colors Precision"
      Top             =   1680
      Width           =   1935
      _ExtentX        =   3413
      _ExtentY        =   529
      _Version        =   393216
      Min             =   -25
      Max             =   25
      SelStart        =   -20
      TickFrequency   =   5
      Value           =   -20
   End
   Begin MSComctlLib.Slider bCONTOscale 
      Height          =   300
      Left            =   7440
      TabIndex        =   11
      ToolTipText     =   "CONTOUR Precision"
      Top             =   2040
      Width           =   1935
      _ExtentX        =   3413
      _ExtentY        =   529
      _Version        =   393216
      Min             =   -25
      Max             =   25
      SelStart        =   -20
      TickFrequency   =   5
      Value           =   -20
   End
   Begin VB.CheckBox PALReset 
      Caption         =   "Palette Reset"
      Height          =   195
      Left            =   9480
      TabIndex        =   8
      Top             =   1560
      Value           =   1  'Checked
      Visible         =   0   'False
      Width           =   1455
   End
   Begin VB.TextBox tMAXwh 
      Height          =   285
      Left            =   7560
      TabIndex        =   7
      Text            =   "512"
      ToolTipText     =   "Max Width or Max Height"
      Top             =   120
      Width           =   975
   End
   Begin VB.Timer TimerDOALL 
      Enabled         =   0   'False
      Interval        =   7000
      Left            =   6600
      Top             =   3960
   End
   Begin MSComctlLib.Slider listSTEP 
      Height          =   495
      Left            =   12480
      TabIndex        =   6
      ToolTipText     =   "Picture step for DO ALL"
      Top             =   3720
      Width           =   1935
      _ExtentX        =   3413
      _ExtentY        =   873
      _Version        =   393216
      Min             =   1
      Max             =   20
      SelStart        =   5
      Value           =   5
   End
   Begin VB.CommandButton DOALL 
      Caption         =   "DO ALL"
      Height          =   855
      Left            =   9480
      TabIndex        =   5
      ToolTipText     =   "DO ALL"
      Top             =   600
      Width           =   1455
   End
   Begin VB.Timer TimerProc 
      Enabled         =   0   'False
      Interval        =   350
      Left            =   6600
      Top             =   3360
   End
   Begin VB.CommandButton Command1 
      Caption         =   "CREATE TOON"
      Height          =   1095
      Left            =   7440
      TabIndex        =   0
      Top             =   480
      Width           =   1695
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Command2 NON CANCELLARE CONTIENE CODICE"
      Height          =   1095
      Left            =   9600
      TabIndex        =   2
      Top             =   2040
      Visible         =   0   'False
      Width           =   1215
   End
   Begin MSComDlg.CommonDialog CMD 
      Left            =   12480
      Top             =   240
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.PictureBox PicQ 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   3015
      Left            =   9360
      ScaleHeight     =   201
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   193
      TabIndex        =   4
      Top             =   120
      Width           =   2895
   End
   Begin VB.PictureBox PIC 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      FillStyle       =   0  'Solid
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   3015
      Left            =   120
      ScaleHeight     =   201
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   465
      TabIndex        =   1
      Top             =   120
      Width           =   6975
   End
   Begin VB.PictureBox ResPIC 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   3015
      Left            =   120
      ScaleHeight     =   201
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   193
      TabIndex        =   10
      Top             =   3840
      Width           =   2895
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      X1              =   560
      X2              =   560
      Y1              =   104
      Y2              =   160
   End
End
Attribute VB_Name = "toTOON"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public MFN As String
Public NameOUT As String
Public DirOUT As String


Private FS As New FileSystemObject
Private picFILE As File
Private FO As Folder
Private foS As Folders
Private day As Date

Private MainPath As String


Private nX As Integer
Private nY As Integer

Public memS As Long
Public memE As Long 'indirizzi memoria

Public memL As Long

Public DOING As Boolean

Public DOingALL As Boolean

Public PicToDo As String

Public MaxWH As Integer

Public ColorScale As Single
Public ContoScale As Single

Private FIdib As Long
Private FIdibQ As Long

Public tmpC As Variant

Public MyBackColor As Long


Private Sub BColorScale_Scroll()

ColorScale = 1024 / MaxWH * 0.618 * Sqr(2) ^ (BColorScale / 10)
'               * 0.594

Me.Caption = ColorScale

End Sub



Private Sub bCONTOscale_Scroll()
ContoScale = 1024 / MaxWH * Sqr(2) ^ (bCONTOscale / 10)
Me.Caption = ContoScale

End Sub

Private Sub bkgW_Click()

MyBackColor = ShowColor(Me.hWnd, CC_FULLOPEN Or CC_RGBINIT)

If MyBackColor <> -1 Then bkgW.BackColor = MyBackColor
End Sub

Private Sub chPureBN_Click()

If chPureBN.Value = Checked Then
     
    tmpC = chONLYcontour.Value
    chONLYcontour.Value = Checked
    chONLYcontour.Enabled = False
Else
    chONLYcontour.Value = tmpC
    chONLYcontour.Enabled = True
End If

End Sub

Private Sub Command1_Click()
Dim C As Long
Dim r As Byte
Dim G As Byte
Dim b As Byte

Dim B1 As Integer
Dim B2 As Integer

DOING = True

Dim sR As Single
Dim sG As Single
Dim sB As Single


'If PALReset.Value = Checked Then ResetValues

Me.Caption = "Starting..."


MFN = MainPath & "\" & ListF2
PicQ = LoadPicture(MFN)
If chGray.Value = Checked Then GrayScale PicQ

Pic.ScaleWidth = 2
Pic.ScaleHeight = 2
Pic.Cls
Pic.Refresh

ResPIC.ScaleWidth = 2
ResPIC.ScaleHeight = 2
ResPIC.Cls
ResPIC.Refresh


nX = PicQ.Width
nY = PicQ.Height



If PicQ.Width > PicQ.Height Then
  '  If PicQ.Width > MaxWH Then
        nX = MaxWH
        nY = MaxWH / PicQ.Width * PicQ.Height
        Pic.Width = nX
        Pic.Height = nY
  '  End If
Else
  '  If PicQ.Height > MaxWH Then
        nY = MaxWH
        nX = MaxWH / PicQ.Height * PicQ.Width
        Pic.Width = nX
        Pic.Height = nY
  '  End If
End If



'ResPIC.Width = nX * ColorScale
'ResPIC.Height = nY * ColorScale


Call SetStretchBltMode(Pic.hDC, STRETCHMODE)
Call StretchBlt(Pic.hDC, 0, 0, Pic.Width, Pic.Height, _
        PicQ.hDC, 0, 0, PicQ.Width - 1, PicQ.Height - 1, vbSrcCopy)
Pic.Refresh

'Call SetStretchBltMode(ResPIC.hdc, STRETCHMODE)
'Call StretchBlt(ResPIC.hdc, 0, 0, ResPIC.Width, ResPIC.Height, _
'               PicQ.hdc, 0, 0, PicQ.Width - 1, PicQ.Height - 1, vbSrcCopy)
'ResPIC.Refresh

''''' this is for blend ---
ReDim ResizedPic(nX, nY)
For y = 0 To Pic.Height - 1
    For x = 0 To Pic.Width - 1
        C = Abs(GetPixel(Pic.hDC, x, y))
        LongToRGB C, r, G, b
        ResizedPic(x, y).r = r
        ResizedPic(x, y).G = G
        ResizedPic(x, y).b = b
    Next x
Next y
'''''''''''''''''''''''''

NameOUT = Right$(MFN, Len(MFN) - InStrRev(MFN, "\"))
NameOUT = Left$(NameOUT, Len(NameOUT) - 4) & "_Q"
B1 = InStrRev(MFN, "\")
B2 = InStrRev(Left$(MFN, B1 - 1), "\")
DirOUT = Mid$(MFN, B2 + 1, B1 - B2 - 1)
If FS.FolderExists(App.path & "\TOON\" & DirOUT) = False Then FS.CreateFolder App.path & "\TOON\" & DirOUT

NameOUT = DirOUT & "\" & NameOUT


'CMD.Action = 1  'virus so dont work
'MsgBox CMD.FileName
'MFN = Left$(CMD.FileTitle, Len(CMD.FileTitle) - 4)

''''''
'''MFN = "g"
'''PIC = LoadPicture(App.Path & "\" & MFN & ".bmp")

ResPIC.Width = Int(nX * ContoScale)
ResPIC.Height = Int(nY * ContoScale)

Call SetStretchBltMode(ResPIC.hDC, STRETCHMODE)
Call StretchBlt(ResPIC.hDC, 0, 0, ResPIC.Width, ResPIC.Height, _
        PicQ.hDC, 0, 0, PicQ.Width - 1, PicQ.Height - 1, vbSrcCopy)
ResPIC.Refresh
PicQ.Cls
PicQ.Width = ResPIC.Width
PicQ.Height = ResPIC.Height

ReDim mPic(nX * ContoScale, nY * ContoScale)
ReDim copiaPIC(nX * ContoScale, nY * ContoScale)
ReDim contoPIC(nX * ContoScale, nY * ContoScale)
memS = VarPtr(mPic(0, 0))
memE = VarPtr(mPic(UBound(mPic, 1), UBound(mPic, 2)))
memL = memE - memS

For y = 0 To ResPIC.Height - 1
    For x = 0 To ResPIC.Width - 1
        C = Abs(GetPixel(ResPIC.hDC, x, y))
        LongToRGB C, r, G, b
       
        
        mPic(x, y).r = r
        mPic(x, y).G = G
        mPic(x, y).b = b
    Next x
Next y

Me.Caption = "Contour"
DoEvents

If chPureBN.Value = Checked Then EFFBlackWhite:: GoTo SaltaConto ' eFFblurBN

'************
EFFcontour
effADJUSTconto
EffBlurConto


SaltaConto:

'If chONLYcontour.Value = Checked Then PIC.Line (0, 0)-(PIC.Width, PIC.Height), RGB(255, 255, 255), BF
If chONLYcontour.Value = Checked Then Pic.Line (0, 0)-(Pic.Width, Pic.Height), MyBackColor, BF



For y = 0 To ResPIC.Height - 1
    For x = 0 To ResPIC.Width - 1
        With contoPIC(x, y)
            SetPixel ResPIC.hDC, x, y, RGB(.r, .G, .b)
        End With
    Next x
Next y




''' CONTOUR CONTRAST BRIGHTNESS
Set ResPIC.Picture = FreeImage_AdjustBrightnessIOP(ResPIC.Image, -42) '-37' - 33
ResPIC.Refresh
'Stop
Set ResPIC.Picture = FreeImage_AdjustContrastIOP(ResPIC.Image, 1200) '1000
ResPIC.Refresh
'Stop


'Stop

SavePicture ResPIC.Image, App.path & "\contour.bmp"

POTRACE "contour", Pic.Width, 20
If chONLYcontour.Value = Checked Then GoTo GoOutSub:




''' after contour'''''''
''''''''''''''''''''''''''''''''''''''''''''
'''''''''''''''''''''''''''''''
PicQ = LoadPicture(MFN)
If chGray.Value = Checked Then GrayScale PicQ

ResPIC.Width = nX * ColorScale
ResPIC.Height = nY * ColorScale

Call SetStretchBltMode(ResPIC.hDC, STRETCHMODE)
Call StretchBlt(ResPIC.hDC, 0, 0, ResPIC.Width, ResPIC.Height, _
        PicQ.hDC, 0, 0, PicQ.Width - 1, PicQ.Height - 1, vbSrcCopy)
ResPIC.Refresh
PicQ.Cls
PicQ.Width = ResPIC.Width
PicQ.Height = ResPIC.Height

ReDim mPic(nX * ColorScale, nY * ColorScale)
ReDim copiaPIC(nX * ColorScale, nY * ColorScale)
ReDim contoPIC(nX * ColorScale, nY * ColorScale)
ReDim BlurPic(nX * ColorScale, nY * ColorScale)
ReDim QuantizedPic(nX * ColorScale, nY * ColorScale)
memS = VarPtr(mPic(0, 0))
memE = VarPtr(mPic(UBound(mPic, 1), UBound(mPic, 2)))
memL = memE - memS

For y = 0 To ResPIC.Height - 1
    For x = 0 To ResPIC.Width - 1
        C = Abs(GetPixel(ResPIC.hDC, x, y))
        LongToRGB C, r, G, b
        mPic(x, y).r = r
        mPic(x, y).G = G
        mPic(x, y).b = b
    Next x
Next y

'Stop
ResPIC.Refresh

EFFblur


'If chSaturation = Checked Then  '* SS
If Satura > 0 Then
For y = 0 To ResPIC.Height - 1
    For x = 0 To ResPIC.Width - 1
        sR = BlurPic(x, y).r
        sG = BlurPic(x, y).G
        sB = BlurPic(x, y).b
        
        Saturation sR, _
                    sG, _
                    sB, SS * Satura / 10 ' SS
                    
        BlurPic(x, y).r = sR
        BlurPic(x, y).G = sG
        BlurPic(x, y).b = sB
            
    Next x
Next y
End If

If Bright > 0 Then
For y = 0 To ResPIC.Height - 1
    For x = 0 To ResPIC.Width - 1
      sR = BlurPic(x, y).r
        sG = BlurPic(x, y).G
        sB = BlurPic(x, y).b
    Brightness sR, _
                    sG, _
                    sB
    BlurPic(x, y).r = sR
        BlurPic(x, y).G = sG
        BlurPic(x, y).b = sB
        
    Next x
Next y
End If
'''''''''''''''''''''''''''''''''''''''''''''''''''''
''''''''''''''''''''''''''''''''''''''''''''''''''''






ResPIC.Cls
For y = 0 To ResPIC.Height - 1
    For x = 0 To ResPIC.Width - 1
        With BlurPic(x, y)
            SetPixel ResPIC.hDC, x, y, RGB(.r, .G, .b)
        End With
    Next x
Next y
ResPIC.Refresh







'histo
''''''''''''''''''''''''''''''''''''''''''
If CustomPalette.Value = Unchecked Then
    EffQuantizeFreeImage
Else
    EFFQuantizeMy
End If


For y = 0 To ResPIC.Height - 1
    For x = 0 To ResPIC.Width - 1
        With QuantizedPic(x, y)
            .C = GetPixel(ResPIC.hDC, x, y)
            LongToRGB .C, .r, .G, .b
            
        End With
    Next x
Next y
''''''''''''''''''''''''''''''''''''''''

''' old ''''''''''''''''''''''''''''''''''''
'EFFQuantize
'For y = 0 To ResPIC.Height - 1
'    For x = 0 To ResPIC.Width - 1
'        With QuantizedPic(x, y)
'        SetPixel ResPIC.hDC, x, y, RGB(.r, .G, .b)
'        End With
'    Next x
'Next y
'ResPIC.Refresh
''''''''''''''''''''''''''''''''''''''''''''''''

For indexc = 0 To maxInd
    DoColor (indexc)
Next indexc

For indexc = 0 To maxInd
    POTRACE "OUT" & indexc, Pic.Width, 30
Next


'Stop

'MsgBox "POTRACE DONE! "

SavePAL (MFN)

GoOutSub:

TimerProc.Enabled = True

fine:


End Sub

Private Sub Command2_Click()
Dim Te As String

'PIC.Cls
'PIC.Refresh
If chONLYcontour.Value = Checked Then GoTo contoHERE

For indexc = 0 To maxInd
    Me.Caption = "ADDING color " & indexc & " of " & maxInd
    DoEvents
    DrawPGM2 "OUT" & indexc, indexc
    Pic.Refresh
Next

'Call SetStretchBltMode(PIC.hdc, STRETCHMODE)
'Call StretchBlt(PIC.hdc, 0, 0, PIC.Width, PIC.Height, _
ResPIC.hdc, 0, 0, ResPIC.Width - 1, ResPIC.Height - 1, vbSrcCopy)
'PIC.Refresh

'Stop
contoHERE:

DrawPGM_C "contour"
DoEvents
If slBLEND.Value > 0 Then EFFBlend slBLEND.Value / 100

'SavePicture PIC.Image, App.Path & "\TOON\" & NameOUT & ".BMP"
Te = "  " & nX & "x" & nY & "  " & _
        BColorScale & "=" & ColorScale & "  " & _
        bCONTOscale & "=" & ContoScale & "  NoC:" & maxInd & "+1  ToTOON by Roberto Mior"
Te = Te & vbCrLf & " Satur " & chSaturation & " Bright " & Bright.Value & " QM = " & ChQM
Te = Te & "   Blend = " & slBLEND.Value / 100
Pic.Refresh
Pic.ForeColor = RGB(0, 0, 0)
Pic.CurrentX = 3 / 1000
Pic.CurrentY = 3 / 1000
Pic.Print Te
Pic.ForeColor = RGB(255, 255, 64)
Pic.CurrentX = 0.5 / 1000
Pic.CurrentY = 0.5 / 1000
Pic.Print Te
Pic.Refresh

If chkMINI.Value = Checked Then
''''''''''''''''''''''''''''''''''''' CREA MINIATURA
PicQ.Visible = False
PicQ = LoadPicture(MFN)

Dim miniScala
Dim PalHpix
miniScala = 1 / 6
PalHpix = 2 'draw palette pixels height

Call SetStretchBltMode(Pic.hDC, STRETCHMODE)
Call StretchBlt(Pic.hDC, 0, Pic.Height - Pic.Height * miniScala - PalHpix, _
        Pic.Width * miniScala, Pic.Height * miniScala, _
        PicQ.hDC, 0, 0, PicQ.Width - 1, PicQ.Height - 1, vbSrcCopy)
        
Call SetStretchBltMode(Pic.hDC, STRETCHMODE)
Call StretchBlt(Pic.hDC, 0, Pic.Height - PalHpix, _
        Pic.Width * miniScala, PalHpix, _
        PicPAL.hDC, 0, 0, PicPAL.Width - 1, PicPAL.Height - 1, vbSrcCopy)
Pic.Refresh
''''''''''''''''''''''''''''''''''''''''''''''''''
''''''''''''''''''''''''''''''''''''''''''''''''''
End If


SaveJPG Pic.Image, App.path & "\TOON\" & NameOUT & ".JPG", 95 ' 98


Me.Caption = "DONE!"

DOING = False

End Sub

Function Readline(StopCHR As Byte) As String
Dim SS As String
SS = vbNullString
Dim b As Byte

Do
    Get #1, , b
    SS = SS + Chr(b)
    
Loop While b <> StopCHR

Readline = SS

End Function

Sub EFFQuantize()
'Stop
Dim Tempo

Dim VV As Integer

Dim x As Integer
Dim y As Integer
Dim iR As Integer
Dim iG As Integer
Dim iB As Integer

Dim I As Integer
Dim D As Long
Dim Shortest As Long
Dim Ind As Integer
Dim Col As Integer

Dim Interation As Integer

Dim Conta As Long

Dim dR As Long
Dim dG As Long
Dim dB As Long

Dim Continua As Boolean

Dim iii As Integer
Dim CCC As Integer



'For Y = 0 To AVIin.H_out - 1
'For X = 0 To AVIin.W_out - 1
'QuantizedPic(X, Y) = CopiaPic(X, Y)
'Next X
'Next Y
'For VV = 1 To 25 '50
VV = 1
AltroPassaggio:

'''''''''''''''''''''''''''''''''
'''''''''' ADJUST      ''''''''''
'''''''''''''''''''''''''''''''''
'
Me.Caption = "quantizing ... " & VV
DoEvents

For I = 0 To maxInd
    'Resamples the index based on the input values
    If CntTbl(I) >= 1 Then '<>0
        Pale(0, I) = AvgTbl(0, I) \ CntTbl(I)
        Pale(1, I) = AvgTbl(1, I) \ CntTbl(I)
        Pale(2, I) = AvgTbl(2, I) \ CntTbl(I)
    Else
        'colore non usato --> resetta
        Pale(0, I) = 127 + I * 3 'Int(Rnd * 256)  'BlurPic(X, Y).R 'colorval And 255
        Pale(1, I) = 127 + I * 2 'Int(Rnd * 256)  'BlurPic(X, Y).G '(colorval \ 256) And 255
        Pale(2, I) = 127 - I 'Int(Rnd * 256)  'BlurPic(X, Y).B '(colorval \ 65536) And 255
        
    End If
    
    AvgTbl(0, I) = 0
    AvgTbl(1, I) = 0
    AvgTbl(2, I) = 0
    CntTbl(I) = 0
Next I
''''''''''' ADJUST

Conta = 0
For y = 3 To ResPIC.Height - 1 - 3 'Step VV
    For x = 3 To ResPIC.Width - 1 - 3 'Step VV
        Conta = Conta + 1
        'Get the colors and find nearest index
        With BlurPic(x, y)
            iR = .r
            iG = .G
            iB = .b
        End With
        
        Shortest = 9999999 '442 'sqr( 195075)
        'Shortest = 765 'Maximum distance
        
        For I = 0 To maxInd
            'D = Abs(iR - Pale(0, I)) + Abs(iG - Pale(1, I)) + Abs(iB - Pale(2, I))
            dR = iR - Pale(0, I)
            dG = iG - Pale(1, I)
            dB = iB - Pale(2, I)
            
            D = Sqr(FastPower(dR) + FastPower(dG) + FastPower(dB))
            
            ' D = FastRoot(FastPower(dR) + FastPower(dG) + FastPower(dB))
            'D = Sqr(dR * dR + dG * dG + dB * dB)
            If D < Shortest Then
                '    Stop
                
                Shortest = D
                Ind = I
            End If
        Next I
        Col = Ind
        ''''''
        'Used for adjustments
        AvgTbl(0, Col) = AvgTbl(0, Col) + iR
        AvgTbl(1, Col) = AvgTbl(1, Col) + iG
        AvgTbl(2, Col) = AvgTbl(2, Col) + iB
        CntTbl(Col) = CntTbl(Col) + 1
        ''''
        'Generate output
        With QuantizedPic(x, y)
            .r = Pale(0, Col)
            .G = Pale(1, Col)
            .b = Pale(2, Col)
        End With
        
        
        
    Next x
Next y


Continua = False
For CCC = 0 To 2
    For iii = 0 To maxInd 'avgtbl
        
        If Not Continua Then ''faster??
            If AvgPREC(CCC, iii) - Pale(CCC, iii) - AvgTbl(CCC, iii) <> 0 Then
                Continua = True
            End If
        End If ''faster??
        
        AvgPREC(CCC, iii) = Pale(CCC, iii) + AvgTbl(CCC, iii)
    Next iii
Next CCC

Debug.Print VV & " " & 1 & " " & AvgTbl(0, 1) & " - " & Continua
Debug.Print VV & " " & 1 & " " & Pale(0, 1) & " - " & Continua

VV = VV + 1

DoEvents

If Continua Then GoTo AltroPassaggio




End Sub

Sub EffQuantizeFreeImage()
Dim palI As Integer

Dim PAL() As RGBQUAD

Dim Qmode As FREE_IMAGE_QUANTIZE


Me.Caption = "quantizing ... "
DoEvents

SavePicture ResPIC.Image, App.path & "\Blurred.BMP"

FIdib = FreeImage_Load(FIF_BMP, App.path & "\Blurred.BMP", 0)


If ChQM = Checked Then Qmode = FIQ_NNQUANT Else: Qmode = FIQ_WUQUANT

'                                        FIQ_NNQUANT 'seems better
FIdibQ = FreeImage_ColorQuantizeEx(FIdib, Qmode, maxInd + 1, 0, 0)

FreeImage_Save FIF_BMP, FIdibQ, App.path & "\blurredQ.BMP", 0

ResPIC = LoadPicture(App.path & "\blurredQ.BMP")


PAL = FreeImage_GetPaletteEx(FIdibQ)

For palI = 0 To maxInd
    
    Pale(0, palI) = PAL(palI).rgbRed
    Pale(1, palI) = PAL(palI).rgbGreen
    Pale(2, palI) = PAL(palI).rgbBlue
    
    PicPAL.Line (palI * PicPAL.Width / (maxInd + 1), 0)- _
            ((palI + 1) * PicPAL.Width / (maxInd + 1), PicPAL.Height), _
            RGB(PAL(palI).rgbRed, PAL(palI).rgbGreen, PAL(palI).rgbBlue), BF
    
Next
PicPAL.Refresh
'Stop




FreeImage_Unload (FIdib)
FreeImage_Unload (FIdibQ)
Erase PAL
End Sub


Sub LongToRGB(RGBcol As Long, ByRef r As Byte, ByRef G As Byte, ByRef b As Byte)

'If RGBcol < 0 Then RGBcol = 0: ' Stop


r = RGBcol And &HFF ' set red
G = (RGBcol And &H100FF00) / &H100 ' set green
b = (RGBcol And &HFF0000) / &H10000 ' set blue

End Sub


Sub DrawPGM(fName As String)
Dim s As String
Dim C As Byte
Stop

Open App.path & "\" & fName & ".pgm" For Binary Access Read As 1
Readline 10
Readline 10
w = CInt(Readline(Asc(" ")))
h = CInt(Readline(Asc(" ")))
Readline 10
Pic.Width = w
Pic.Height = h

For y = 0 To h - 1
    For x = 0 To w - 1
        Get #1, , C
        SetPixel Pic.hDC, x, y, RGB(C, C, C)
    Next
Next




'Set bmp = New cDIB

'If bmp.CreateFromFile(App.Path & "\PIC.bmp") <> True Then
'        MsgBox "Could not load first bitmap file in list!", vbExclamation, App.Title
'     'GoTo Error
'End If


Close 1
End Sub
Sub DrawPGM2(fName As String, Col)
Dim s As String
Dim C As Byte
Dim NewR As Integer
Dim NewG As Integer
Dim NewB As Integer
Dim CC As Long

Dim sR As Byte
Dim sG As Byte
Dim sB As Byte

Dim C1 As Single
Dim C2 As Single

Dim InFile() As Byte
Dim Pos As Integer
Dim G As Long



Open App.path & "\" & fName & ".pgm" For Binary Access Read As 1


Readline 10
Readline 10
w = CInt(Readline(Asc(" ")))
h = CInt(Readline(Asc(" ")))
Readline 10
Pic.Width = w
Pic.Height = h


ReDim InFile(w * h)
Get #1, , InFile
'For CC = 0 To w * h
'Debug.Print InFile(CC);
'Next


G = 0
For y = 0 To h - 1
    For x = 0 To w - 1
        G = G + 1
        C = InFile(G)
        '        Get #1, , C
        If C = 0 Then
            'NewR = Pale(0, Col) '
            'NewG = Pale(1, Col) '
            'NewB = Pale(2, Col) '
            SetPixel Pic.hDC, x, y, RGB(Pale(0, Col), Pale(1, Col), Pale(2, Col))
        Else
            If C < 255 Then
                
                C1 = C / 255
                C2 = 1 - C1
                
                CC = GetPixel(Pic.hDC, x, y)
                LongToRGB CC, sR, sG, sB
                
                NewR = Pale(0, Col) '
                NewG = Pale(1, Col) '
                NewB = Pale(2, Col) '
                
                NewR = CInt(NewR) * C2 + sR * C1
                NewG = CInt(NewG) * C2 + sG * C1
                NewB = CInt(NewB) * C2 + sB * C1
                
                If NewR < 0 Then NewR = 0
                If NewG < 0 Then NewG = 0
                If NewB < 0 Then NewB = 0
                '        NewR = ((255 - C) / 255) * NewR
                '        NewG = ((255 - C) / 255) * NewG
                '        NewB = ((255 - C) / 255) * NewB
                
                SetPixel Pic.hDC, x, y, RGB(NewR, NewG, NewB)
                
            End If
        End If
    Next x
Next y


'Set bmp = New cDIB

'If bmp.CreateFromFile(App.Path & "\PIC.bmp") <> True Then
'        MsgBox "Could not load first bitmap file in list!", vbExclamation, App.Title
'     'GoTo Error
'End If


Close 1
End Sub
Sub DrawPGM_C(fName As String)
Dim s As String
Dim C As Byte
Dim CC As Long

Dim NewR As Integer
Dim NewG As Integer
Dim NewB As Integer

Dim sR As Byte
Dim sG As Byte
Dim sB As Byte

Dim InFile() As Byte
Dim Pos As Integer
Dim G As Long


Open App.path & "\" & fName & ".pgm" For Binary Access Read As 1
Readline 10
Readline 10
w = CInt(Readline(Asc(" ")))
h = CInt(Readline(Asc(" ")))
Readline 10
Pic.Width = w
Pic.Height = h

ReDim InFile(w * h)
Get #1, , InFile
G = 0
For y = 0 To h - 1
    For x = 0 To w - 1
        G = G + 1
        C = InFile(G)
        
        '        Get #1, , C
        '        Stop
        If C < 255 Then
            
            
            CC = GetPixel(Pic.hDC, x, y)
            LongToRGB CC, sR, sG, sB
            
            NewR = CInt(sR) - (256 - C)
            NewG = CInt(sG) - (256 - C)
            NewB = CInt(sB) - (256 - C)
            
            If NewR < 0 Then NewR = 0
            If NewG < 0 Then NewG = 0
            If NewB < 0 Then NewB = 0
            
            SetPixel Pic.hDC, x, y, RGB(NewR, NewG, NewB)
            
        End If
        
    Next x
Next y

Close 1
End Sub
Sub POTRACE(Filename As String, Larghezza As Integer, Optional ByVal Turdsize As Single = 25, Optional ByVal GammaAntiA As Single = 2.2, Optional ByVal TurnPolicy As String = "min")
'g 1.5 t 25


Me.Caption = "creating files PGM (portable Gray Map) " & Filename

'Shell App.Path & "\mkbitmap.exe " & FileName & ".bmp -f 4 -s 2 -t 0.40"

'-t 50 meno fitto -t 20 piu fitto
'Shell App.Path & "\potrace.exe " & filename & ".bmp -g -G 1.5 -t 30  -W " & Larghezza, vbHide
'Shell App.Path & "\potrace.exe " & filename & ".bmp -g -z white -G 1.5 -t 25  -W " & Larghezza, vbHide
'pgm
Shell App.path & "\potrace.exe " & Filename & ".bmp -g " & _
        " -z " & TurnPolicy & _
        " -G " & GammaAntiA & _
        " -t " & Turdsize & _
        " -W " & Larghezza, vbHide
'svg
'Shell App.path & "\potrace.exe " & Filename & ".bmp -s " & _
        " -z " & TurnPolicy & _
        " -G " & GammaAntiA & _
        " -t " & Turdsize & _
        " -W " & Larghezza, vbHide
'eps
'Shell App.path & "\potrace.exe " & Filename & ".bmp -e -c " & _
        " -z " & TurnPolicy & _
        " -G " & GammaAntiA & _
        " -t " & Turdsize & _
        " -W " & Larghezza, vbHide


End Sub






Private Sub DOALL_Click()

PicToDo = 0
TimerDOALL.Enabled = True
DOingALL = True

'Dim mi As Integer
'For mi = 0 To listF.ListCount - 1 Step listSTEP

'listF.ListIndex = mi

'PIC.Cls
'PIC.Refresh
'PicQ.Cls
'PicQ.Refresh
'MFN = MainPath & "\" & listF
'PIC = LoadPicture(MFN)

'Command1_Click


'Do
'DoEvents
'Loop While DOING

'Next mi

End Sub

Private Sub Form_Unload(Cancel As Integer)
Unload frmHISTO

End Sub

Private Sub listDIR_Click()
MainPath = listDIR
UpdateFlist
curPATH = MainPath

End Sub

Private Sub Form_Load()
MyBackColor = RGB(255, 255, 255)


InitFastRoot
InitFastPower
InitFastAVG

If FS.FolderExists(App.path & "\TOON") = False Then FS.CreateFolder App.path & "\TOON"



ListF2.Pattern = "*.jpg;*.bmp"


InitFastPower
InitFastAVG

maxInd = CInt(MAXindBAR.Value)
ReDim Pale(0 To 2, 0 To maxInd + 1) As Integer

'ReDim Pal(maxInd)

ReDim AvgTbl(0 To 2, 0 To maxInd) ' As Long
ReDim AvgPREC(0 To 2, 0 To maxInd) ' As Long

ReDim CntTbl(0 To maxInd) 'As Long


Debug.Print "____BLUR_________"

KmulBlurD = 0

Me.Line (ResPIC.Width + ResPIC.Left + 20 + -4 * 4, -4 * 4 + ResPIC.Top)- _
        (ResPIC.Width + ResPIC.Left + 20 + (4 + 1) * 4, (4 + 1) * 4 + ResPIC.Top), RGB(255 * KmulBLUR(x, y), 255 * KmulBLUR(x, y), 255 * KmulBLUR(x, y)), BF



For x = -3 To 3
    For y = -3 To 3
        'KmulBLUR(x, y) = Round(4.6 - Sqr(x * x + y * y)) 'xy -3 to 3
        
        'KmulBLUR(x, y) = Cos((Abs(x) + Abs(y)) / 6 * 1.57) * 1  '4
        KmulBLUR(x, y) = Cos((Sqr(x * x + y * y)) / Sqr(3 * 3 + 3 * 3) * 1.57) * 1
        
        
        If KmulBLUR(x, y) < 0 Then KmulBLUR(x, y) = 0
        
        Me.Line (ResPIC.Width + ResPIC.Left + 20 + x * 4, y * 4 + ResPIC.Top)- _
                (ResPIC.Width + ResPIC.Left + 20 + (x + 1) * 4, (y + 1) * 4 + ResPIC.Top), RGB(255 * KmulBLUR(x, y), 255 * KmulBLUR(x, y), 255 * KmulBLUR(x, y)), BF
        
        
        'KmulBLUR(x, y) = Round(4 - Sqr(x * x + y * y))   'xy -2 to 2
        'KmulBLUR(x, y) = Round(1 - Sqr(x * x + y * y)) 'xy -1 to 1
        
        Debug.Print KmulBLUR(x, y)
        KmulBlurD = KmulBlurD + KmulBLUR(x, y)
    Next
    Debug.Print
Next



Kmul(-1, -1) = 1: Kmul(0, -1) = 1: Kmul(1, -1) = 1
Kmul(-1, 0) = 1:  Kmul(0, 0) = 5:  Kmul(1, 0) = 1
Kmul(-1, 1) = 1:  Kmul(0, 1) = 1:  Kmul(1, 1) = 1



MainPath = "C:\" '\Roberto" '\Photos" 'App.Path
UpdateFlist

ProcessPrioritySet , , ppidle 'ppbelownormal ' So While is Computing You Can to Other

DOING = False
DOingALL = False
MaxWH = Val(tMAXwh)


'-15,-10 800 W
'-10 -5
ChQM.Value = Unchecked

BColorScale = -10 '0 '-15 '-15
BColorScale_Scroll

bCONTOscale = -10 '-5 '0 '6'-5 '-10
bCONTOscale_Scroll


MAXindBAR = 5 '3 '7
MAXindBAR_Scroll
End Sub


Sub EFFblur()
Dim Tempo
Dim x As Integer
Dim y As Integer

Dim Rt As Single 'integer
Dim Gt As Single
Dim Bt As Single
Dim IX As Integer
Dim IY As Integer
Dim Y2 As Integer
Dim x2 As Integer

Me.Caption = "BLURing..."
DoEvents


For y = 3 To ResPIC.Height - 4
    For x = 3 To ResPIC.Width - 4
        Rt = 0
        Gt = 0
        Bt = 0
        For IY = -3 To 3
            Y2 = y + IY
            For IX = -3 To 3
                'With mPic(x + IX, Y2)
                x2 = x + IX
                Rt = Rt + mPic(x2, Y2).r * KmulBLUR(IX, IY)
                Gt = Gt + mPic(x2, Y2).G * KmulBLUR(IX, IY)
                Bt = Bt + mPic(x2, Y2).b * KmulBLUR(IX, IY)
                'End With
            Next IX
        Next IY
        Rt = Rt / KmulBlurD '\ for rt integer
        Gt = Gt / KmulBlurD
        Bt = Bt / KmulBlurD
        
     '   If chSaturation = Checked Then Saturation Rt, Gt, Bt, SS '* SS
     '   Brightness Rt, Gt, Bt
        
        BlurPic(x, y).r = Rt
        BlurPic(x, y).G = Gt
        BlurPic(x, y).b = Bt
        ' mPIC(X, Y).C = RGB(Rt, Gt, Bt)
    Next x
    DoEvents
Next y
End Sub
Sub EFFBlackWhite()
Dim vR As Long
Dim vG As Long
Dim vB As Long
Dim x As Integer
Dim y As Integer

CopyMemory copiaPIC(0, 0), mPic(0, 0), memL
CopyMemory contoPIC(0, 0), mPic(0, 0), memL

For y = 1 To ResPIC.Height - 1
    For x = 1 To ResPIC.Width - 1
    
        vR = copiaPIC(x, y).r
        vG = copiaPIC(x, y).G
        vB = copiaPIC(x, y).b
        
        If vR + vG + vB + Bright.Value * 3 > 381 Then
            vR = 255
            vG = 255
            vB = 255
            
        Else
            vR = 0
            vG = 0
            vB = 0
        End If
        
        With contoPIC(x, y)
            .r = vR
            .G = vG
            .b = vB
        End With
    
    
    Next x
Next y


End Sub
Sub effblurFREEImage()
'Set ResPIC.Picture = FreeImage_RescaleByPercentIOP(ResPIC.Picture, 100, 100, FILTER_BSPLINE, True)
'
'Stop






End Sub

Sub Saturation(ByRef iR As Single, ByRef iG As Single, ByRef iB As Single, sF)
Dim V As Integer




V = FastAVG(iB + iG + iR)
'iB = iB + sF * (iB - V)
'iG = iG + sF * (iG - V)
'iR = iR + sF * (iR - V)
iB = V + (iB - V) * sF
iG = V + (iG - V) * sF
iR = V + (iR - V) * sF
'iB = (V + iB) / 2 + (iB - V) * sF
'iG = (V + iG) / 2 + (iG - V) * sF
'iR = (V + iR) / 2 + (iR - V) * sF
If iR > 255 Then iR = 255
If iR < 0 Then iR = 0
If iG > 255 Then iG = 255
If iG < 0 Then iG = 0
If iB > 255 Then iB = 255
If iB < 0 Then iB = 0




End Sub

Sub Brightness(ByRef iR As Single, ByRef iG As Single, ByRef iB As Single)

'brightness
iR = iR + Bright '20
iG = iG + Bright '20
iB = iB + Bright '20
If iR > 255 Then iR = 255
If iG > 255 Then iG = 255
If iB > 255 Then iB = 255
End Sub


Private Sub ListDIr2_Change()
ListF2 = ListDIr2
MainPath = ListDIr2

curPATH = MainPath

End Sub

Private Sub listF_Click()

Pic.Cls
Pic.Refresh
PicQ.Cls
PicQ.Refresh


MFN = MainPath & "\" & listF
Pic = LoadPicture(MFN)






End Sub

Sub DoColor(Col As Integer)
Dim C As Long
Dim r As Byte
Dim G As Byte
Dim b As Byte
Dim RGB1 As Long
Dim RGB2 As Long

Me.Caption = "Separating color " & Col & " of " & maxInd
DoEvents

RGB1 = RGB(Pale(0, Col), Pale(1, Col), Pale(2, Col))

For y = 0 To ResPIC.Height - 1
    For x = 0 To ResPIC.Width - 1
        'C = Abs(GetPixel(PIC.hdc, x, Y))
        'LongToRGB C, R, G, B
        
        
        '        If .r = Pale(0, Col) Then
        '            If .G = Pale(1, Col) Then
        '                If .b = Pale(2, Col) Then
        If QuantizedPic(x, y).C = RGB1 Then
            '                    SetPixel PicQ.hdc, x, y, RGB(R, G, B)
            
            SetPixel PicQ.hDC, x, y, RGB(0, 0, 0)
        Else
            SetPixel PicQ.hDC, x, y, RGB(255, 255, 255)
        End If
        
        
    Next x
Next y
PicQ.Refresh

SavePicture PicQ.Image, App.path & "\OUT" & Col & ".bmp"

'Stop

End Sub

Sub SavePAL(Filename As String)
Dim C

'Open App.Path & "\" & FileName & ".pale" For Output As 3
'For C = 0 To maxInd
'Print #3, Pale(0, C)
'Print #3, Pale(1, C)
'Print #3, Pale(2, C)
'Next C

'Close 3

End Sub

Sub EFFcontour()
Dim Tempo

Dim x As Integer
Dim y As Integer

Dim Rt As Integer
Dim Gt As Integer
Dim Bt As Integer
Dim IX As Integer
Dim IY As Integer
Dim vMinR As Long
Dim vR As Long
Dim vMinG As Long
Dim vG As Long
Dim vMinB As Long
Dim vB As Long

Tempo = Timer


'For y = 0 To AVIin.H_out - 1
'For x = 0 To AVIin.W_out - 1
'ContoPic(x, y) = CopiaPic(x, y)
'Next x
'Next y
CopyMemory copiaPIC(0, 0), mPic(0, 0), memL
CopyMemory contoPIC(0, 0), mPic(0, 0), memL


For y = 1 To ResPIC.Height - 1
    For x = 1 To ResPIC.Width - 1
        vMinR = 255
        vMinG = 255
        vMinB = 255
        '    Stop
        
        For IX = -1 To 1
            For IY = -1 To 1
                '            Stop
                
                'If IX <> 0 And IY <> 0 Then
                vR = copiaPIC(x + IX, y + IY).r
                If vR < vMinR Then vMinR = vR
                
                vG = copiaPIC(x + IX, y + IY).G
                If vG < vMinG Then vMinG = vG
                
                vB = copiaPIC(x + IX, y + IY).b
                If vB < vMinB Then vMinB = vB
                'End If
                
            Next IY
        Next IX
        
        With contoPIC(x, y)
            .r = .r - vMinR
            .G = .G - vMinG
            .b = .b - vMinB
            
            
        End With
        
        
    Next x
Next y

'TEMPI = TEMPI & "Contour " & Timer - Tempo & vbCrLf


End Sub

Sub EffBlurConto()
Dim Kconto As Single

Dim x As Integer
Dim y As Integer

Dim Rt As Integer
Dim Gt As Integer
Dim Bt As Integer
Dim IX As Integer
Dim IY As Integer
Dim Tempo
Dim x2 As Integer

Kconto = 2 '4

CopyMemory copiaPIC(0, 0), contoPIC(0, 0), memL


For y = 0 + 2 To ResPIC.Height - 1 - 2
    For x = 0 + 2 To ResPIC.Width - 1 - 2
        Rt = 0
        Gt = 0
        Bt = 0
        
        For IX = -1 To 1
            x2 = x + IX
            For IY = -1 To 1
                With copiaPIC(x2, y + IY)
                    Rt = Rt + .r * Kmul(IX, IY)
                    Gt = Gt + .G * Kmul(IX, IY)
                    Bt = Bt + .b * Kmul(IX, IY)
                End With
            Next IY
        Next IX
        
        Rt = Rt \ 13 '21'17 ' 9 '25 '21 '25 '9
        Gt = Gt \ 13 '21 '16 '17 '9 '25 '21 '25 '9
        Bt = Bt \ 13 ' 21 '16 '17 '9 '25 '21 '25 '9
        
        ''''''''''''''
        Rt = (255 - Rt * Kconto)
        Gt = (255 - Gt * Kconto)
        Bt = (255 - Bt * Kconto)
        
        If Rt < 0 Then Rt = 0
        If Gt < 0 Then Gt = 0
        If Bt < 0 Then Bt = 0
        ''''''''''''''''
        
        Rt = FastAVG(Rt + Gt + Bt)
        Gt = Rt
        Bt = Rt
        
        
        contoPIC(x, y).r = Rt
        contoPIC(x, y).G = Gt
        contoPIC(x, y).b = Bt
        ' mPIC(X, Y).C = RGB(Rt, Gt, Bt)
    Next x
Next y

'TEMPI = TEMPI & "Blur C " & Timer - Tempo & vbCrLf
End Sub

Sub effADJUSTconto()
'Stop

Dim Kconto As Single

Dim x As Integer
Dim y As Integer

Dim Rt As Integer
Dim Gt As Integer
Dim Bt As Integer
Dim IX As Integer
Dim IY As Integer
Dim Tempo
Dim x2 As Integer
Dim r As Single
Dim a As Single

Dim CCC As Long
Dim Conta As Long

'Stop


r = 5

CopyMemory copiaPIC(0, 0), contoPIC(0, 0), memL


For y = 0 + r To ResPIC.Height - 1 - r
    For x = 0 + r To ResPIC.Width - 1 - r
        CCC = 0
        Conta = 0
        For r = 4 To 4
            For a = 0 To 3.14 * 2 Step (3.14 * 2) / 16
                Conta = Conta + 1
                
                
                
                With copiaPIC(x + r * Cos(a), y + r * Sin(a))
                    
                    CCC = CCC + .r + .G + .b
                End With
            Next a
        Next r
        '        MsgBox CCC & " " & CCC / Conta
        If CCC / 3 / Conta > 23 Then
            '       Stop
            
            With copiaPIC(x, y)
                contoPIC(x, y).r = .r \ 4 '0
                contoPIC(x, y).G = .G \ 4
                contoPIC(x, y).b = .b \ 4
            End With
        End If
    Next x
Next y


End Sub

Sub UpdateFlist()


ListDIr2 = MainPath

'Set FO = FS.GetFolder((MainPath) & "\")
'Set foS = FO.SubFolders
'For Each FO In FO.SubFolders
'    listDIR.AddItem FO
'Next
'If listDIR.ListCount = 0 And MainPath <> "C:" Then
'Set FO = FS.GetFolder(BackDIR(MainPath) & "\")
'Set foS = FO.SubFolders
'For Each FO In FO.SubFolders
'    listDIR.AddItem FO
'Next
'End If


'Set FO = FS.GetFolder(MainPath & "\")
'For Each picFILE In FO.Files
'If LCase(Right$(picFILE, 4)) = ".bmp" Or LCase(Right$(picFILE, 4)) = ".jpg" Then

'    listF.AddItem picFILE.Name

'End If
'Next


End Sub

Function BackDIR(s As String) As String

I = InStrRev(s, "\")
BackDIR = Left$(s, I - 1)

End Function

Private Sub ListF2_Click()
Pic.Cls
Pic.Refresh
PicQ.Cls
PicQ.Refresh

MFN = MainPath & "\" & ListF2
Me.Caption = MFN
Me.Refresh

Pic = LoadPicture(MFN)

End Sub

Private Sub LoadP_Click()
LoadPale
End Sub

Private Sub MAXindBAR_Scroll()
maxInd = CInt(MAXindBAR.Value)
ReDim Pale(0 To 2, 0 To maxInd + 1) As Integer
ReDim AvgTbl(0 To 2, 0 To maxInd) ' As Long
ReDim AvgPREC(0 To 2, 0 To maxInd) ' As Long
ReDim CntTbl(0 To maxInd) 'As Long

'ReDim Pal(maxInd)
End Sub

Private Sub PicPAL_MouseDown(Button As Integer, Shift As Integer, x As Single, y As Single)
Dim C As Long
Dim P As Integer
Dim r As Byte
Dim G As Byte
Dim b As Byte

C = ShowColor(Me.hWnd, CC_FULLOPEN Or CC_RGBINIT)


P = Round((x / PicPAL.Width) * (maxInd + 1) + 0.5) - 1

If C <> -1 Then
LongToRGB C, r, G, b

Pale(0, P) = r
Pale(1, P) = G
Pale(2, P) = b
'PAL(P).rgbRed = R
'PAL(P).rgbGreen = G
'PAL(P).rgbBlue = B

drawPALE
End If
End Sub

Private Sub Satura_MouseUp(Button As Integer, Shift As Integer, x As Single, y As Single)
Satura.ToolTipText = "Saturation = " & SS / 10 * CSng(Satura)
End Sub

Private Sub Satura_Scroll()
Satura.ToolTipText = "Saturation = " & SS / 10 * CSng(Satura)
End Sub

Private Sub SaveP_Click()
SavePale
End Sub

Private Sub TimerDOALL_Timer()
If DOING = False Then
    ListF2.ListIndex = PicToDo
    
    Pic.Cls
    Pic.Refresh
    PicQ.Cls
    PicQ.Refresh
    ResPIC.Cls
    ResPIC.Refresh
    MFN = MainPath & "\" & ListF2
    Pic = LoadPicture(MFN)
    If chGray.Value = Checked Then GrayScale Pic
    
    Command1_Click
    
    PicToDo = PicToDo + listSTEP
    If PicToDo > ListF2.ListCount - 1 Then TimerDOALL.Enabled = False
    
End If


End Sub

Private Sub TimerProc_Timer()

If IsProcessRunning("potrace.exe") = False Then
    TimerProc.Enabled = False
    Command2_Click
End If

End Sub
Sub ResetValues()
Dim CC As Long
Dim r As Byte
Dim G As Byte
Dim b As Byte
' USELESS!!!!!!!!!!!

'''''' RESET VALUES
Randomize Rnd * Timer
For I = 0 To maxInd
    AvgTbl(0, I) = 0
    AvgTbl(1, I) = 0
    AvgTbl(2, I) = 0
    CntTbl(I) = 0
    'sample a random point on the original or each index in table
    'x = Int(Rnd * (PIC.Width - 10)) + 5
    'y = Int(Rnd * (PIC.Height - 10)) + 5
    
    'CC = GetPixel(PIC.hdc, x, y)
    'LongToRGB CC, R, G, B
    'Pale(0, i) = R
    'Pale(1, i) = G
    'Pale(2, i) = B
    
    Pale(0, I) = 127 + I * 3
    Pale(1, I) = 127 + I * 2
    Pale(2, I) = 127 - I
    
    
    ' Pale(0, i) = Int(Rnd * 256)  'BlurPic(X, Y).R 'colorval And 255
    ' Pale(1, i) = Int(Rnd * 256)  'BlurPic(X, Y).G '(colorval \ 256) And 255
    ' Pale(2, i) = Int(Rnd * 256)  'BlurPic(X, Y).B '(colorval \ 65536) And 255
    
Next I
''''''''''''''''
'''''''''''''''

End Sub

Private Sub tMAXwh_Change()
MaxWH = Val(tMAXwh)
BColorScale_Scroll
bCONTOscale_Scroll

End Sub

Sub histo()
Dim iR As Integer
Dim iG As Integer
Dim iB As Integer
Dim cR(255) As Long
Dim cG(255) As Long
Dim cB(255) As Long
Dim maxR As Long
Dim maxG As Long
Dim maxB As Long
Dim Omax As Long

Dim C As Long

Const kH = 130


Load frmHISTO
frmHISTO.Visible = True
frmHISTO.Pic.Cls

maxR = 0
maxG = 0
maxB = 0

For x = 0 To 255
    cR(x) = 0
    cG(x) = 0
    cB(x) = 0
Next

For y = 3 To ResPIC.Height - 1 - 3 'Step VV
    For x = 3 To ResPIC.Width - 1 - 3 'Step VV
        With BlurPic(x, y)
            iR = .r
            iG = .G
            iB = .b
        End With
        cR(iR) = cR(iR) + 1
        cG(iG) = cG(iG) + 1
        cB(iB) = cB(iB) + 1
        If cR(iR) > maxR Then maxR = cR(iR)
        If cG(iG) > maxG Then maxG = cG(iG)
        If cB(iB) > maxB Then maxB = cB(iB)
        
    Next x
Next y

Omax = 0

If maxR > Omax Then Omax = maxR
If maxG > Omax Then Omax = maxG
If maxB > Omax Then Omax = maxB

For x = 0 To 255
    
    With frmHISTO
        
        .Pic.Line (x, kH)-(x, kH - cR(x) * kH / Omax), RGB(255, 0, 0)
        .Pic.Line (x, kH * 2)-(x, kH * 2 - cG(x) * kH / Omax), RGB(0, 255, 0)
        .Pic.Line (x, kH * 3)-(x, kH * 3 - cB(x) * kH / Omax), RGB(0, 0, 255)
        
        
        
    End With
    
    
Next


For x = 0 To 255
    For y = 0 To 255
        
        'C = (cR(x) + cB(y) + cB((x + y) / 2)) / (Omax * 3) * 255
        'C = RGB(C, C, C)
        
        C = RGB(cR(x) / Omax * 255, cB(y) / Omax * 255, cB((x + y) / 2) / Omax * 255)
        
        
        frmHISTO.Pic.PSet (260 + x, 10 + y), C
        
    Next
Next

'frmHISTO.SetFocus

End Sub


Sub GrayScale(ByRef pg As PictureBox)
Dim x
Dim y
Dim r As Byte
Dim G As Byte
Dim b As Byte
Dim C As Long
Dim Gg As Integer

For x = 0 To pg.Width - 1
For y = 0 To pg.Height - 1

C = GetPixel(pg.hDC, x, y)
LongToRGB C, r, G, b

Gg = (CInt(r) + CInt(G) + CInt(b)) / 3

SetPixel pg.hDC, x, y, RGB(Gg, Gg, Gg)

Next
Next


End Sub
Sub EFFBlend(Bvalue As Single)
Dim B2Value As Single

Dim x As Integer
Dim y As Integer
Dim C As Long
Dim C2 As Long

Dim r As Byte
Dim G As Byte
Dim b As Byte
Dim R2 As Byte
Dim G2 As Byte
Dim B2 As Byte

B2Value = 1 - Bvalue
Me.Caption = "BLENDing..."
DoEvents

'PicQ = LoadPicture(MFN)
'Stop

For y = 0 To Pic.Height - 2
For x = 0 To Pic.Width - 2

C = GetPixel(Pic.hDC, x, y)
LongToRGB C, r, G, b
R2 = CByte(r * B2Value + ResizedPic(x, y).r * Bvalue)
G2 = CByte(G * B2Value + ResizedPic(x, y).G * Bvalue)
B2 = CByte(b * B2Value + ResizedPic(x, y).b * Bvalue)
'
'C2 = GetPixel(PicQ.hDC, x, y)
'LongToRGB C2, R2, G2, B2
'
'R2 = CByte(r * B2Value + R2 * Bvalue)
'G2 = CByte(G * B2Value + G2 * Bvalue)
'B2 = CByte(b * B2Value + B2 * Bvalue)


SetPixel Pic.hDC, x, y, RGB(R2, G2, B2)


Next
Next
fineBLEND:

End Sub
Sub drawPALE()
Dim palI
For palI = 0 To maxInd
    
    
    PicPAL.Line (palI * PicPAL.Width / (maxInd + 1), 0)- _
            ((palI + 1) * PicPAL.Width / (maxInd + 1), PicPAL.Height), _
            RGB(Pale(0, palI), Pale(1, palI), Pale(2, palI)), BF
    
Next
PicPAL.Refresh
End Sub

Sub EFFQuantizeMy()
'Stop

Dim minD
Dim C As Long
Dim r As Byte
Dim G As Byte
Dim b As Byte
Dim x
Dim y
Dim P
Dim dR
Dim dG
Dim dB
Dim D
Dim Dmin
Dim Imin
Dim palI
Me.Caption = "quantizing ...  my .... "
DoEvents

For x = 0 To ResPIC.Width - 1
    For y = 0 To ResPIC.Height - 1
        Dmin = 99999999999999#
        
        'r = BlurPic(X, y).r
        'G = BlurPic(X, y).G
        'b = BlurPic(X, y).b
        r = BlurPic(x, y).r
        G = BlurPic(x, y).G
        b = BlurPic(x, y).b
    '    If b <> 0 Then Stop
        
        For P = 0 To maxInd
            dR = r - Pale(0, P)
            dG = G - Pale(1, P)
            dB = b - Pale(2, P)
            D = FastRoot(FastPower(dR) + FastPower(dG) + FastPower(dB))
            If D < Dmin Then Dmin = D: Imin = P
        Next P
'        Stop
        
        SetPixel ResPIC.hDC, x, y, RGB(Pale(0, Imin), Pale(1, Imin), Pale(2, Imin))
        'Stop
        
    Next y
'    Stop
    
Next x


For palI = 0 To maxInd
    
    
    PicPAL.Line (palI * PicPAL.Width / (maxInd + 1), 0)- _
            ((palI + 1) * PicPAL.Width / (maxInd + 1), PicPAL.Height), _
            RGB(Pale(0, palI), Pale(1, palI), Pale(2, palI)), BF
    
Next
PicPAL.Refresh

End Sub
Sub SavePale(Optional fileN = "pale.txt")
Dim C
Dim I
fileN = App.path & "\" & fileN

Open fileN For Output As 1
Print #1, maxInd
For C = 0 To 2
    For I = 0 To maxInd
        Print #1, Pale(C, I)
    Next
Next
Close 1


End Sub

Sub LoadPale(Optional fileN = "pale.txt")
Dim C
Dim I

fileN = App.path & "\" & fileN

Open fileN For Input As 1
Input #1, maxInd
MAXindBAR.Value = maxInd
MAXindBAR_Scroll

For C = 0 To 2
    For I = 0 To maxInd
        Input #1, Pale(C, I)
    Next
Next
Close 1
drawPALE

End Sub
