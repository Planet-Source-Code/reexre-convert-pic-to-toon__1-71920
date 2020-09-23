Attribute VB_Name = "Module1"


Public Type tRGBcol
    r As Byte
    G As Byte
    b As Byte
    
    C As Long
    
End Type



Public mPic() As tRGBcol
Public copiaPIC() As tRGBcol
Public contoPIC() As tRGBcol
Public BlurPic() As tRGBcol
Public QuantizedPic() As tRGBcol
Public ResizedPic() As tRGBcol

Public maxInd As Integer

Public Pale() As Integer 'Index of colors
Public AvgTbl() As Long 'Summation of pixels for each index
Public AvgPREC() As Long 'Summation of pixels for each index
Public CntTbl() As Long 'Number of pixels belonging to each index



Public Kmul(-2 To 2, -2 To 2) As Integer
Public KmulBLUR(-3 To 3, -3 To 3) As Single 'integer
Public KmulBlurD As Single 'Integer

'Public Const SS As Single = 1.61803 '* 1.61803 '* 2 '* 1.61803
Public Const SS As Single = 1.61803 * 2

Public X As Integer
Public y As Integer


'Public FastPower(-255 To 255) As Long
'Public FastAVG(765) As Integer
Public FastAVG(765 + 200) As Integer
Public FastPower(-255 To 255) As Long
Public FastRoot(0 To 195075) As Integer


Public NearEst() As Long

Public Declare Function GetPixel Lib "gdi32" (ByVal hDC As Long, ByVal X As Long, ByVal y As Long) As Long
Public Declare Function SetPixel Lib "gdi32" (ByVal hDC As Long, ByVal X As Long, ByVal y As Long, ByVal crColor As Long) As Long

Public Declare Sub CopyMemory Lib "kernel32.dll" Alias "RtlMoveMemory" (ByRef dest As Any, ByRef src As Any, ByVal dwLen As Long)


Public Declare Function StretchBlt Lib "gdi32" (ByVal hDC As Long, ByVal X As Long, ByVal y As Long, ByVal nWidth As Long, ByVal nHeight As Long, ByVal hSrcDC As Long, ByVal xSrc As Long, ByVal ySrc As Long, ByVal nSrcWidth As Long, ByVal nSrcHeight As Long, ByVal dwRop As Long) As Long
Public Declare Function SetStretchBltMode Lib "gdi32" (ByVal hDC As Long, ByVal hStretchMode As Long) As Long

Public Const STRETCHMODE = vbPaletteModeNone 'You can find other modes in the "PaletteModeConstants" section of your Object Browser

Sub InitFastAVG()
Dim I As Integer
For I = 0 To 765 + 200
    FastAVG(I) = I \ 3
Next I
End Sub

Sub InitFastPower()
Dim I As Integer
For I = -255 To 255
    FastPower(I) = CLng(I) * CLng(I)
    Debug.Print FastPower(I)
    
Next
'Stop
End Sub

Sub InitFastRoot()
Dim I As Long
For I = 0 To 195075
    FastRoot(I) = Round(Sqr(I))
Next

End Sub
