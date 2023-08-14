# Guía para Instalar Controladores de Forma Correcta y Segura

![Controladores](imagen_controladores.jpg)

## Cómo Obtener el ID de Hardware de un Dispositivo en Windows

**Paso 1:** Abrir el Administrador de Dispositivos

- Presiona las teclas Win + X en tu teclado o haz clic derecho en el botón "Inicio" en la barra de tareas.
- Selecciona "Administrador de Dispositivos" en el menú desplegable.

**Paso 2:** Identificar el Dispositivo

- En la ventana del Administrador de Dispositivos, busca y haz clic en la categoría que corresponde al dispositivo para el que deseas obtener el ID de hardware, como "Adaptadores de red".

**Paso 3:** Obtener el ID de Hardware

- Haz clic derecho en el dispositivo específico y selecciona "Propiedades".
- Ve a la pestaña "Detalles" y elige "Id. de hardware" en el menú desplegable.
- En la sección "Valor", encontrarás códigos como "PCI\VEN_..." o "USB\VID_..."; estos son los ID de hardware del dispositivo.

**Paso 4:** Copiar el ID de Hardware

- Haz clic en un código de ID para resaltarlo.
- Haz clic derecho y selecciona "Copiar".

## Cómo Colocar el ID de Hardware en la Página de Descarga de Controladores

1. Abre tu navegador web y visita [https://driverpack.io/es/catalog](https://driverpack.io/es/catalog).
2. En la barra de búsqueda del sitio web, pega el ID de hardware copiado seguido de la palabra "drivers" (por ejemplo: "IDHardware drivers").
3. Explora los resultados de búsqueda y navega a la página de descarga de controladores correspondiente.

## Cómo Descargar, Descomprimir 

1. En la página de [https://driverpack.io/es/catalog](https://driverpack.io/es/catalog)., busca y descarga los controladores necesarios para tu sistema operativo.
2. Navega hasta la ubicación donde descargaste el archivo ZIP y descomprímelo. Puedes hacer clic derecho en el archivo ZIP y seleccionar "Extraer aquí" o usar un programa de descompresión como WinRAR o 7-Zip.

## Cómo Instalar Controladores Utilizando el Asistente de Actualización de Hardware de Windows

1. Presiona Win + X y selecciona "Administrador de Dispositivos".
2. Encuentra el dispositivo para el cual deseas instalar el controlador. Debe estar etiquetado con un triángulo amarillo (indicando que no tiene un controlador instalado).
3. Haz clic derecho en el dispositivo y selecciona "Actualizar controlador".
4. Selecciona "Buscar software de controlador en el equipo".
5. Selecciona "Elegir en una lista de controladores de dispositivo en el equipo".
6. Haz clic en "Examinar" y navega a la ubicación donde descomprimiste los controladores.
7. Selecciona la carpeta que contiene los archivos de controlador descomprimidos y haz clic en "Aceptar".

## Cómo Obtener el Modelo de la Placa Base con CPU-Z

1. Descarga e instala CPU-Z desde [https://www.cpuid.com/softwares/cpu-z.html](https://www.cpuid.com/softwares/cpu-z.html).
2. Abre CPU-Z y ve a la pestaña "Mainboard" (Placa base).
3. Anota el "Model" (Modelo) de tu placa base.

Luego, utiliza el modelo anotado y agrégalo al buscador de tu elección junto con la palabra "drivers". Por ejemplo, si tu modelo de placa base es "ABC123", busca "ABC123 drivers". Esto te llevará directamente al sitio web del fabricante donde podrás descargar los controladores más recientes y compatibles para tu placa base.

## Otra Forma de Instalar Controladores Correctamente

Una alternativa adicional para instalar controladores de manera segura es seguir estos pasos:

1. Descarga los controladores necesarios directamente desde el sitio web oficial del fabricante de tu dispositivo.
2. Instala los controladores descargados siguiendo las instrucciones proporcionadas por el fabricante.
3. Luego de instalar los controladores del fabricante, puedes utilizar Windows Update para buscar actualizaciones adicionales de controladores.
4. Ve a "Configuración" > "Actualización y seguridad" > "Windows Update" y selecciona "Buscar actualizaciones".

Recuerda que es crucial realizar primero la instalación desde el sitio web del fabricante para asegurarte de obtener los controladores más adecuados para tu hardware y sistema operativo. Posteriormente, utilizar Windows Update te permitirá obtener actualizaciones adicionales que puedan mejorar aún más el rendimiento y la compatibilidad de tu sistema.

## Importante

**No descargues ni actualices automáticamente controladores utilizando herramientas de terceros.** Las bases de datos de estas herramientas no siempre están actualizadas y pueden instalar controladores incorrectos que afectan negativamente al rendimiento y estabilidad de tu PC. Es preferible buscar la opción para descargar el archivo ZIP del controlador directamente desde el sitio web del fabricante, donde encontrarás las versiones más recientes y compatibles con tu hardware y sistema operativo.

**Nota:** Si en la página del fabricante no encuentras los controladores o no aparece tu modelo de dispositivo, puedes utilizar el método de obtener el ID de hardware y buscar controladores en el sitio web [https://driverpack.io/es/catalog](https://driverpack.io/es/catalog). Sin embargo, siempre es preferible descargar los controladores directamente desde los sitios web oficiales de los fabricantes para garantizar la compatibilidad y la seguridad de tu sistema.

# Automatización de la Instalación de Controladores con el Asistente de Actualización de Hardware de Windows

## Instrucciones de Uso

1. **Descarga los archivos .bat**

   - Descarga los archivos .bat desde este repositorio a tu computadora.

2. **Método 1: Ingreso Manual de Ruta**

   - Ejecuta el archivo `InstalarControladores.bat`.
   - Sigue las instrucciones en pantalla:
     - Ingresa la ruta de la carpeta donde descomprimiste los controladores.
     - El script instalará automáticamente los controladores detectados en la carpeta especificada.

3. **Método 2: Detección Automática de Ruta**

   - Ejecuta el archivo `InstalarControladoresAuto.bat`.
   - El script obtendrá automáticamente la ubicación del archivo .bat y usará esta ubicación como la carpeta de controladores.
   - Los controladores detectados en la carpeta se instalarán automáticamente.

## Recomendación de Herramienta: DriverEasy

Si prefieres una solución más sencilla y automatizada, te recomendamos utilizar la herramienta [DriverEasy](https://www.drivereasy.com/). DriverEasy es una aplicación confiable que puede escanear, descargar e instalar automáticamente los controladores necesarios para tu sistema.

## Lista de Algunos Fabricantes Comunes

1. **Controladores de AMD**: [Descargar controladores de AMD](https://www.amd.com/es/support)

2. **Controladores de Intel**: [Descargar controladores de Intel](https://downloadcenter.intel.com/es/download/last)

3. **Controladores de NVIDIA**: [Descargar controladores de NVIDIA](https://www.nvidia.com/Download/index.aspx)

4. **Controladores de Realtek**: [Descargar controladores de Realtek](https://www.realtek.com/en/component/zoo/category/network-interface-controllers-10-100-1000m-gigabit-ethernet-pci-express-software)

5. **Controladores de Logitech**: [Descargar controladores de Logitech](https://support.logi.com/hc/en-us/categories/360001595913-Downloads)

6. **Controladores de HP**: [Descargar controladores de HP](https://support.hp.com/us-en/drivers)

7. **Controladores de Dell**: [Descargar controladores de Dell](https://www.dell.com/support/home/en-us?app=drivers)

8. **Controladores de Lenovo**: [Descargar controladores de Lenovo](https://pcsupport.lenovo.com/us/en/products/laptops-and-netbooks/)

9. **Controladores de ASUS**: [Descargar controladores de ASUS](https://www.asus.com/support/Download-Center/)

10. **Controladores de Acer**: [Descargar controladores de Acer](https://www.acer.com/ac/en/US/content/drivers)

## Licencia

Este proyecto está bajo la licencia [Creative Commons Attribution 4.0 International License](https://creativecommons.org/licenses/by/4.0/). Puedes compartir, adaptar y utilizar estos archivos siempre que des el crédito correspondiente al autor original.

Si tienes alguna pregunta o necesitas ayuda para encontrar un controlador específico, no dudes en preguntar.
