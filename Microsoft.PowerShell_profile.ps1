#powershell�̃v���t�@�C���̃p�X��ps���$profile�Ŋm�F�ł���

#curl�̃G�C���A�X�ݒ�(DL & �z�u�ς݂�����)
Set-Alias curl "C:\curl\bin\CURL.EXE"

#touch�R�}���h�̍Č�
function touch()
{
  New-Item $args[0] -itemType File
}
