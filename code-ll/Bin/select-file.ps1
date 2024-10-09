Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

$OpenFileDialog = New-Object System.Windows.Forms.OpenFileDialog
$OpenFileDialog.InitialDirectory = [Environment]::GetFolderPath("Desktop")
$OpenFileDialog.Filter = "All files (*.VICrypt)|*.VICrypt"
$OpenFileDialog.ShowDialog() | Out-Null
$file = $OpenFileDialog.FileName

$tempFile = "temp\selectedFile.txt"
Set-Content -Path $tempFile -Value $file

Write-Output $file