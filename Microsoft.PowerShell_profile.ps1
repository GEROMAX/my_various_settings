#powershellのプロファイルのパスはps上で$profileで確認できる

#curlのエイリアス設定(DL & 配置済みが条件)
Set-Alias curl "C:\curl\bin\CURL.EXE"

#touchコマンドの再現
function touch()
{
  New-Item $args[0] -itemType File
}
