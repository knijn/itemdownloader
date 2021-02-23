; <COMPILER: v1.1.33.02>
SendMode Input
SetWorkingDir %A_ScriptDir%
TitleBar := "Item Downloader - Knijn Patches / v1.0.2"
InputBox, URL, %TitleBar%, Please enter the URL you want to download the file from
InputBox, FileName, %TitleBar%, Please enter the file name you want to have including the file extention
MsgBox, , %TitleBar%, This might take some time depending on the file size and internet speed, please have patience :)
UrlDownloadToFile, %URL%, %FileName%
MsgBox,, %TitleBar%, Seems to be downloaded! Have fun :D