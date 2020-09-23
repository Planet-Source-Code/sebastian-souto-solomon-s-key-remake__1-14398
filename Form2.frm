VERSION 5.00
Begin VB.Form ToolBox 
   BorderStyle     =   4  'Fixed ToolWindow
   ClientHeight    =   3195
   ClientLeft      =   45
   ClientTop       =   285
   ClientWidth     =   1920
   ClipControls    =   0   'False
   DrawMode        =   6  'Mask Pen Not
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   213
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   128
   ShowInTaskbar   =   0   'False
   Visible         =   0   'False
   Begin VB.PictureBox TilesPalette 
      DrawMode        =   5  'Not Copy Pen
      Height          =   525
      Index           =   7
      Left            =   690
      Picture         =   "Form2.frx":0000
      ScaleHeight     =   465
      ScaleWidth      =   495
      TabIndex        =   10
      Top             =   1140
      Width           =   555
   End
   Begin VB.CommandButton snapcmd 
      Caption         =   "snap"
      Height          =   345
      Left            =   840
      TabIndex        =   9
      Top             =   2400
      Width           =   825
   End
   Begin VB.PictureBox TilesPalette 
      Height          =   525
      Index           =   6
      Left            =   120
      Picture         =   "Form2.frx":049E
      ScaleHeight     =   465
      ScaleWidth      =   495
      TabIndex        =   8
      Top             =   1140
      Width           =   555
   End
   Begin VB.PictureBox TilesPalette 
      DrawMode        =   9  'Not Mask Pen
      Height          =   525
      Index           =   5
      Left            =   1260
      Picture         =   "Form2.frx":0AAA
      ScaleHeight     =   465
      ScaleWidth      =   495
      TabIndex        =   7
      Top             =   600
      Width           =   555
   End
   Begin VB.PictureBox TilesPalette 
      Height          =   525
      Index           =   4
      Left            =   690
      Picture         =   "Form2.frx":0EA2
      ScaleHeight     =   465
      ScaleWidth      =   495
      TabIndex        =   6
      Top             =   600
      Width           =   555
   End
   Begin VB.PictureBox TilesPalette 
      Height          =   525
      Index           =   3
      Left            =   120
      Picture         =   "Form2.frx":1577
      ScaleHeight     =   465
      ScaleWidth      =   495
      TabIndex        =   5
      Top             =   600
      Width           =   555
   End
   Begin VB.PictureBox selectedtile 
      Height          =   645
      Left            =   120
      ScaleHeight     =   585
      ScaleWidth      =   615
      TabIndex        =   3
      Top             =   2400
      Width           =   675
   End
   Begin VB.PictureBox TilesPalette 
      Height          =   525
      Index           =   2
      Left            =   1260
      Picture         =   "Form2.frx":1933
      ScaleHeight     =   465
      ScaleWidth      =   495
      TabIndex        =   2
      Top             =   60
      Width           =   555
   End
   Begin VB.PictureBox TilesPalette 
      DrawMode        =   9  'Not Mask Pen
      Height          =   525
      Index           =   1
      Left            =   690
      Picture         =   "Form2.frx":1B55
      ScaleHeight     =   465
      ScaleWidth      =   495
      TabIndex        =   1
      Top             =   60
      Width           =   555
   End
   Begin VB.PictureBox TilesPalette 
      Height          =   525
      Index           =   0
      Left            =   120
      Picture         =   "Form2.frx":200C
      ScaleHeight     =   465
      ScaleWidth      =   495
      TabIndex        =   0
      Top             =   60
      Width           =   555
   End
   Begin VB.Label selectedtilenum 
      Height          =   285
      Left            =   870
      TabIndex        =   4
      Top             =   2790
      Width           =   765
   End
End
Attribute VB_Name = "ToolBox"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub TilesPalette_Click(Index As Integer)
    selectedtile.Picture = TilesPalette(Index).Picture
    selectedtilenum = Index
End Sub
