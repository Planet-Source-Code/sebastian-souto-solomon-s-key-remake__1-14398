VERSION 5.00
Begin VB.MDIForm MDIForm1 
   BackColor       =   &H8000000C&
   Caption         =   "MDIForm1"
   ClientHeight    =   5895
   ClientLeft      =   165
   ClientTop       =   735
   ClientWidth     =   7365
   LinkTopic       =   "MDIForm1"
   StartUpPosition =   3  'Windows Default
   Begin VB.Menu mnuFile 
      Caption         =   "File"
      Begin VB.Menu mnuNewLevel 
         Caption         =   "New Level"
      End
      Begin VB.Menu mnuOpenLevel 
         Caption         =   "Open Level"
      End
      Begin VB.Menu mnuSaveLevelas 
         Caption         =   "Save Level as.."
      End
      Begin VB.Menu mnuSaveLevel 
         Caption         =   "Save"
      End
      Begin VB.Menu mnuQuit 
         Caption         =   "Quit"
      End
   End
End
Attribute VB_Name = "MDIForm1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub MDIForm_Load()
    Load ToolBox
End Sub

Private Sub mnuNewLevel_Click()
    Load Form1
End Sub
