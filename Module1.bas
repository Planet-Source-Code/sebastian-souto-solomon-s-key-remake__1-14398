Attribute VB_Name = "Module1"
Global Const ScreenWidthx As Integer = 640
Global Const ScreenHeightx As Integer = 480
Global Const TileWidth_Height As Integer = 32
Global Const TileMaxPerRow = 20
Global Const TileMaxPerCol = 15
Global Const TileMax = 300

Private Type tile
    X As Integer
    Y As Integer
    solid As Boolean
    picindex As Integer
End Type

Public Tiles(TileMax) As tile


Public Function initialize_canvas(ByRef frm As Form)
    Dim X
    Dim Y
    Dim Index
    
    Index = 0
   ' frm.ScaleMode = 3
   ' frm.Width = ScreenWidthx
    'frm.Height = ScreenHeightx
        
    For Y = 0 To 448 Step 32
        For X = 0 To 608 Step 32
            Tiles(Index).X = X
            Tiles(Index).Y = Y
            Tiles(Index).picindex = 0
            Tiles(Index).solid = False
            frm.PaintPicture ToolBox.TilesPalette(Tiles(Index).picindex).Picture, X, Y
            Index = Index + 1
        Next X
    Next Y
'frm.Point (10,10)
    'MsgBox (frm.Width)
End Function

Public Function gettileNumber(X, Y) As Integer
    Dim i
    
    For i = 0 To TileMax
        If X >= Tiles(i).X And X < (Tiles(i).X + 32) And Y >= Tiles(i).Y And Y < (Tiles(i).Y + 32) Then
            gettileNumber = i
        End If
    Next i
End Function

Public Function settile(pic, tile)
    Tiles(tile).picindex = pic
    Form1.PaintPicture ToolBox.TilesPalette(Tiles(tile).picindex).Picture, Tiles(tile).X, Tiles(tile).Y
End Function
