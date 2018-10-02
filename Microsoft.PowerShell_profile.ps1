# powershellのプロファイルのパスはps上で$profileで確認できる

# BackSpace字のBeep音を消す
Set-PSReadlineOption -BellStyle None

# curlのエイリアス設定(DL & 配置済みが条件)
# Set-Alias curl "C:\curl\bin\CURL.EXE"

# touchコマンドの再現
function touch() {
  foreach ($item in $args) {
    New-Item $item -itemType File
  }
}

# PSのエンコードをASCIIへ変更
function chencascii() {
  Set-Variable -Name "OutputEncoding" -Value ([Text.Encoding]::Ascii) -Scope global
  return $OutputEncoding
}

# PSのエンコードをUTF-8へ変更
function chencutf8() {
  Set-Variable -Name "OutputEncoding" -Value ([System.Text.Encoding]::GetEncoding('utf-8')) -Scope global
  return $OutputEncoding
}

# PSのエンコードをShift_JISへ変更
function chencshiftjis() {
  Set-Variable -Name "OutputEncoding" -Value ([System.Text.Encoding]::GetEncoding('shift_jis')) -Scope global
  return $OutputEncoding
}

# irbの短縮
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