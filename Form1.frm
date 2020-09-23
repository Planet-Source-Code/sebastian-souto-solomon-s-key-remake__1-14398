VERSION 5.00
Object = "{27395F88-0C0C-101B-A3C9-08002B2F49FB}#1.1#0"; "PICCLP32.OCX"
Begin VB.Form Form1 
   AutoRedraw      =   -1  'True
   BorderStyle     =   1  'Fixed Single
   Caption         =   "New Level"
   ClientHeight    =   7200
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   9600
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   480
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   640
   Visible         =   0   'False
   Begin PicClip.PictureClip PictureClip1 
      Left            =   3420
      Top             =   3090
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
      Picture         =   "Form1.frx":0000
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim draw As Boolean

Private Sub Form_DragOver(Source As Control, X As Single, Y As Single, State As Integer)
    Dim which
    
    which = gettileNumber(X, Y)
    Call settile(ToolBox.selectedtilenum, which)
End Sub

Private Sub Form_Load()
    Me.ScaleMode = 3
    Call Module1.initialize_canvas(Me)
    ToolBox.Show
End Sub

Private Sub Form_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
   ' draw one tile where clicked
   which = gettileNumber(X, Y)
   Call settile(ToolBox.selectedtilenum, which)
   ' and set draw to true so we can draw as we drag
   draw = True
End Sub
Private Sub Form_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    ' stop drawing
    draw = False
End Sub

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Dim which
    ' if were in drawing mode ,,, draw!
    If draw = True Then
        which = gettileNumber(X, Y)
        Call settile(ToolBox.selectedtilenum, which)
    End If
End Sub


