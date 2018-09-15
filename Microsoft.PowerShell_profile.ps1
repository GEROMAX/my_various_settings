#powershellのプロファイルのパスはps上で$profileで確認できる

#Beep音を消す
Set-PSReadlineOption -BellStyle None

#curlのエイリアス設定(DL & 配置済みが条件)
#Set-Alias curl "C:\curl\bin\CURL.EXE"

#touchコマンドの再現
function touch() {
  foreach ($item in $args) {
    New-Item $item -itemType File
  }
}

#rubyの短縮
function rb() {
  if ($args.Length -le 0) {
    powershell　-Command  "irb"
  }
  else {
    $cmd = "ruby"
    foreach ($item in $args) {
      $cmd += " " + $item
    }
    powershell　-Command $cmd
  }
}