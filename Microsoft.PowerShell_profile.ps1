Set-Alias curl "C:\curl\bin\CURL.EXE"

function touch()
{
  New-Item $args[0] -itemType File
}
