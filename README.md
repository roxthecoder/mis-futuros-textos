# mis-futuros-textos
Mis futuros textos es un script creado para PowerShell que te permite crear un documento .odt automáticamente para poder escribir todos los días del año para tu blog, tus historias de Wattpad, preparar un guion para youtube ...sin tener que crear ese documento a diario e incluso preparar textos a futuro. Un script realmente útil para todos los que nos gusta escribir. 

AVISO: En el caso de que aparezca este error cuando es ejecutado: 
./misfuturostextos.ps1 : No se puede cargar el archivo C:\Users\usuario\Desktop\misfuturostextos.ps1 porque la ejecución de scripts está deshabilitada en este sistema. Para obtener más información, consulta el tema about_Execution_Policies en
https:/go.microsoft.com/fwlink/?LinkID=135170.
En línea: 1 Carácter: 1

./misfuturostextos.ps1

   CategoryInfo          : SecurityError: (:) [], PSSecurityException
   FullyQualifiedErrorId : UnauthorizedAccess

Ejecuta en PowerShell la siguiente linea:

Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope Process

Luego aparecerá el mensaje de: Cambio de directiva de ejecución.

La directiva de ejecución te ayuda a protegerte de scripts en los que no confías. Si cambias dicha directiva, podrías
exponerte a los riesgos de seguridad descritos en el tema de la Ayuda about_Execution_Policies en
https:/go.microsoft.com/fwlink/?LinkID=135170. ¿Quieres cambiar la directiva de ejecución?
[S] Sí  [O] Sí a todo  [N] No  [T] No a todo  [U] Suspender  [?] Ayuda (el valor predeterminado es "N"):

Dale a sí o a Sí a todo (elige la que quieras bajo tu responsabilidad).

Y luego vuelve a ejecutar el script con ./misfuturostextos.ps1 y se ejecutará perfectamente.

Después para revertir el cambio, puedes ejecutar el siguiente comando:

Set-ExecutionPolicy -Scope LocalMachine -ExecutionPolicy Restricted

Y para ver siempre la política actual de las ejecuciones en el sistema solamente tienes que ejecutar: 

Get-ExecutionPolicy -Scope LocalMachine 

También puedes seguirnos en nuestras diferentes redes sociales:
 
YouTube: https://www.youtube.com/c/reillyversecorp?sub_confirmation=1 

Twitter: https://twitter.com/guardian_celta

Instagram: https://www.instagram.com/richardreillyotaku/ 

Github: https://github.com/roxthecoder

Y en nuestro podcast en las diferentes plataformas de podcasting:

Ivoox: https://www.ivoox.com/podcast-furia-del-guardian-celta_sq_f123967_1.html

Apple Podcast: https://podcasts.apple.com/es/podcast/la-furia-del-guardi%C3%A1n-celta/id1413896872
