# En el caso de que aparezca este error cuando es ejecutado: 
# ./misfuturostextos.ps1 : No se puede cargar el archivo
# C:\Users\usuario\Desktop\misfuturostextos.ps1 porque la ejecución de scripts está
# deshabilitada en este sistema. Para obtener más información, consulta el tema about_Execution_Policies en
# https:/go.microsoft.com/fwlink/?LinkID=135170.
# En línea: 1 Carácter: 1
# + ./misfuturostextos.ps1
# + ~~~~~~~~~~~~~~~~~~~~~~
#     + CategoryInfo          : SecurityError: (:) [], PSSecurityException
#     + FullyQualifiedErrorId : UnauthorizedAccess

# Ejecuta en PowerShell la siguiente linea:

# Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope Process

# Luego aparecerá el mensaje de: Cambio de directiva de ejecución.

# La directiva de ejecución te ayuda a protegerte de scripts en los que no confías. Si cambias dicha directiva, podrías
# exponerte a los riesgos de seguridad descritos en el tema de la Ayuda about_Execution_Policies en
# https:/go.microsoft.com/fwlink/?LinkID=135170. ¿Quieres cambiar la directiva de ejecución?
# [S] Sí  [O] Sí a todo  [N] No  [T] No a todo  [U] Suspender  [?] Ayuda (el valor predeterminado es "N"):

# Dale a sí o a Sí a todo (elige la que quieras bajo tu responsabilidad).

# Y luego vuelve a ejecutar el script con ./misfuturostextos.ps1 y se ejecutará perfectamente.

# Después para revertir el cambio, puedes ejecutar el siguiente comando:

# Set-ExecutionPolicy -Scope LocalMachine -ExecutionPolicy Restricted

# Y para ver siempre la política actual de las ejecuciones en el sistema solamente tienes que ejecutar: 

# Get-ExecutionPolicy -Scope LocalMachine 

# -----------------------------------------------------------------------------------------------------------------------------

$basePath = "C:\misfuturostextos"

New-Item -Path $basePath -ItemType Directory -Force

$months = @{
    "Enero" = 31
    "Febrero" = 28 # Cambia manualmente a 29 si es año bisiesto
    "Marzo" = 31
    "Abril" = 30
    "Mayo" = 31
    "Junio" = 30
    "Julio" = 31
    "Agosto" = 31
    "Septiembre" = 30
    "Octubre" = 31
    "Noviembre" = 30
    "Diciembre" = 31
}

foreach ($month in $months.Keys) {
    # Ruta de la carpeta del mes
    $monthPath = Join-Path -Path $basePath -ChildPath $month
    New-Item -Path $monthPath -ItemType Directory -Force

    # Crear archivos .odt para cada día del mes
    for ($day = 1; $day -le $months[$month]; $day++) {
        # Nombre del archivo (día del mes)
        $fileName = "{0:00}.odt" -f $day
        $filePath = Join-Path -Path $monthPath -ChildPath $fileName

        # Crear el archivo vacío
        New-Item -Path $filePath -ItemType File -Force
    }
}

Write-Host "Estructura creada exitosamente en $basePath"