Attribute VB_Name = "modParametros_SISTEMA"
Option Explicit
'------------------
Public Const VERSAO                          As String = "02.01.00"
Public Const REG_BACK_COLOR = "HKEY_CURRENT_USER\Software\Microsoft\VBA\7.1\Common\CodeBackColors"
Public Const Reg_FORE_COLOR = "HKEY_CURRENT_USER\Software\Microsoft\VBA\7.1\Common\CodeForeColors"
Public Const BACK_COLOR_BLACK_THEME As String = "4 0 4 7 6 4 4 4 11 4 0 0 0 0 0 0"
Public Const FORE_COLOR_BLACK_THEME As String = "1 0 5 14 1 9 11 15 4 1 0 0 0 0 0 0"
Public Const BACK_COLOR_WHITE_THEME As String = "0 0 0 7 6 0 0 0 0 0 0 0 0 0 0 0"
Public Const FORE_COLOR_WHITE_THEME As String = "0 0 5 0 1 10 14 0 0 0 0 0 0 0 0 0"

Public Enum Language
        PORTUGUES = 1
        ENGLISH
        NOT_DEFINED
End Enum

Public Property Get PT_BR() As Boolean
    If getLenguage = PORTUGUES Then
        PT_BR = True
    End If
End Property


Public Sub setLenguague(LENG As Language)
    Call VBA.SaveSetting(C_APPNAME, "Language", "Language", LENG)
End Sub

Public Function getLenguage() As Language
On Error GoTo f
    getLenguage = VBA.GetSetting(C_APPNAME, "Language", "Language")
Exit Function
f:
    getLenguage = NOT_DEFINED
End Function

