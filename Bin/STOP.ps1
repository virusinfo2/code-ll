# Obtenir le processus parent
$parentProcess = Get-Process -Name 'Code-llLoader'

# Si le processus parent existe
if ($parentProcess) {
    # Obtenir tous les sous-processus du processus parent
    $childProcesses = Get-WmiObject Win32_Process | Where-Object { $_.ParentProcessId -eq $parentProcess.Id }

    # Arrêter tous les sous-processus
    foreach ($process in $childProcesses) {
        Stop-Process -Id $process.ProcessId -Force
    }

    # Arrêter le processus parent
    Stop-Process -Id $parentProcess.Id -Force
}
else {
    Write-Host "Le processus Code-llLoader n'est pas en cours d'exécution."
}
