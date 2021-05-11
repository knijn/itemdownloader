; <COMPILER: v1.1.33.02>
SendMode Input
SetWorkingDir %A_ScriptDir%
Version := 2.0.0

;InputBox, URL, %TitleBar%, Please enter the URL you want to download the file from
;InputBox, FileName, %TitleBar%, Please enter the file name you want to have including the file extention
;UrlDownloadToFile, %URL%, %FileName%
;MsgBox,, %TitleBar%, Seems to be downloaded! Have fun :D

Gui, New
Gui, Add, StatusBar,, v%Version%
Gui, Add, Text,, Welcome to the Knijn Item Downloader, This is a program `nthat downloads everything for you.
Gui, Add, Text, x60 y50 w250, Please enter the url to download from:
Gui, Add, Edit,x50 w200 vURL
Gui, Add, Text, x25 y120 w250, Please enter the file to save it as (with file extension):
Gui, Add, Edit,x50 w200 vFile
Gui, Add, Button, Default x75 y200 w150 h50 gdownload, Download

Gui, Show, w300 h300, %TitleBar%
return

download:
    GuiControlGet, URL
    GuiControlGet, File  
    
    ;MsgBox, %URL%
    ;MsgBox, %File%
    
    SB_SetText("Downloading file...")
    UrlDownloadToFile, %URL%, %File%
    Gui, Flash
    SB_SetText("Downloaded File")
    MsgBox, Done with the file download :D
return