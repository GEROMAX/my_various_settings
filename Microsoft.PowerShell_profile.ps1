# powershell�̃v���t�@�C���̃p�X��ps���$profile�Ŋm�F�ł���

# BackSpace����Beep��������
Set-PSReadlineOption -BellStyle None

# curl�̃G�C���A�X�ݒ�(DL & �z�u�ς݂�����)
# Set-Alias curl "C:\curl\bin\CURL.EXE"

# touch�R�}���h�̍Č�
function touch() {
  foreach ($item in $args) {
    New-Item $item -itemType File
  }
}

# PS�̃G���R�[�h��ASCII�֕ύX
function chencascii() {
  Set-Variable -Name "OutputEncoding" -Value ([Text.Encoding]::Ascii) -Scope global
  return $OutputEncoding
}

# PS�̃G���R�[�h��UTF-8�֕ύX
function chencutf8() {
  Set-Variable -Name "OutputEncoding" -Value ([System.Text.Encoding]::GetEncoding('utf-8')) -Scope global
  return $OutputEncoding
}

# PS�̃G���R�[�h��Shift_JIS�֕ύX
function chencshiftjis() {
  Set-Variable -Name "OutputEncoding" -Value ([System.Text.Encoding]::GetEncoding('shift_jis')) -Scope global
  return $OutputEncoding
}

# irb�̒Z�k
function rb() {
  if ($args.Length -le 0) {
    powershell�@-Command  "irb"
  }
  else {
    $cmd = "ruby"
    foreach ($item in $args) {
      $cmd += " " + $item
    }
    powershell�@-Command $cmd
  }
}