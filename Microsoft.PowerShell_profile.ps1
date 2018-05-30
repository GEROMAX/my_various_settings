#powershellのプロファイルのパスはps上で$profileで確認できる

#curlのエイリアス設定(DL & 配置済みが条件)
Set-Alias curl "C:\curl\bin\CURL.EXE"

#rubyの短縮
Set-Alias rb "C:\Ruby25-x64\bin\ruby.exe"

#touchコマンドの再現
function touch()
{
  foreach ($item in $args) {
    New-Item $item -itemType File
  }
}
