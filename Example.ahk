#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#include SimpleSQLite.ahk

DB := new SQLite3Connector("C:\Users\vicar\Documents\GitHub\example.db")

Statement = select * from sqlite_sequence
;msgbox % statement
Results := DB.Execute(Statement)

/*
array := {ten: 10, twenty: 20, thirty: 30}
For key, value in array
    MsgBox %key% = %value%
*/

msgbox % Results[0].name Results[0].seq
msgbox Results[0][name]


For key, value in Results
    MsgBox % Results[key].Name   Results[key].Seq 

