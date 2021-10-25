## Proyecto Defunciones

### Requisitos

1. Tener instalado xampp con php 7.3.13 y mysql 5.7
  https://www.apachefriends.org/xampp-files/7.3.31/xampp-windows-x64-7.3.31-3-VC15-installer.exe
2. Tener instalado la ultima version de composer
  https://getcomposer.org/Composer-Setup.exe
3. Haber instalado Microsoft Visual Studio Code
  https://code.visualstudio.com/docs/?dv=win
4. Instalar Git 
  https://git-scm.com/download/win
5. Instalar Symfony version 5
  https://get.symfony.com/cli/setup.exe
  
### Ejecución del proyecto

1. Definir la ubicacion en donde se va a clonar el repositorio de git
2. Dentro de esa carpeta, abrir una terminal de powrshell o git bash
3. ejecutar el comando git clone https://github.com/leidyGomezCala/defProy.git
4. Abrir el programa Xampp e iniciar el servidor apache y el mysql
5. Dentro de la carpeta del proyecto se encuenta un archivo llamado defunciones.sql, el cual debe importarse a una base de datos con el mismo nombre dentro del phpmyadmin.
6. Ubicar el archivo .env del proyecto y buscar la linea 20 donde estan las credenciales de mysql, guiarse de la linea 26 para asignar las credenciales de su servidor.
7. En la terminal que se abrio con anterioridad, entrar en la carpeta del proyecto y ejecutar el comando symfony server:start el cual habilitara la direccion http://127.0.0.1:8000/ para visualizar el proyecto
