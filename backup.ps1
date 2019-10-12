Class DirToBackup
{
    [String]$path
    DirToBackup([String]$path) {
      $this.path = $path
    }
}
$pathFromPrefix = "C:\Users*\Desktop"
$pathToPrefix = "C:\Users\*\Desktop\12\"
$dirsToBackup = @(
    New-Object DirToBackup "\23"
)
$dirsToBackup | ForEach-Object {
    mkdir -Path $($pathToPrefix + $_.path) -Force
    xcopy $($pathFromPrefix + $_.path) $($pathToPrefix + $_.path) /D /S /Y /H 
}
pause
