---
sidebar_position: 3
---

# Carga masiva de datos por .csv

Para la carga masiva de datos de alumnos, en primer lugar se tiene que tener una hoja de cálculo con las siguientes columnas:

**rut, dv, generacion_ingreso, generacion_egreso, lidera, categoria, sexo, primer_nombre, segundo_nombre, apellido_paterno, apellido_materno, edad, correo_contacto, fecha_actualizacion, ultimo_editor, fecha_nacimiento, rubro_empresa, cargo, empresa, correo_secretaria, correo_laboral, fono_empresa, region_empresa, comuna_empresa, pais_empresa, direccion_residencia, comuna_residencia, region_residencia, pais_residencia, celular_contacto, correo_personal, nacionalidad, titulo_pregrado, universidad, pais_universidad, postgrado, fallecido, fecha_fallecimiento, observaciones**

Además de esto, los RUTs tienen que ser válidos, de lo contrario el formulario rechazará el documento informando que cédula de identidad es incorrecta.

La carga exige que el archivo sea del tipo csv, usando como separador la tecla **tab**, es decir, si estás trabajando en una hoja de cálculo tienes que guardar el archivo como csv elgiendo como separador **tab**. Puedes encontrar más detalles en [este tutorial de OnlyOffice](https://www.onlyoffice.com/blog/2025/02/csv-delimeter).

Se sugiere que la primera celda de la tabla coincida con la primera celda de la hoja de cálculo a utilizar antes de convertir a csv.

## Formato por columna

A continuación se hace una descripción del formato que tiene que seguir cada columna del archivo a subir:

### rut

En este archivo el RUT se separa en las cifras previas al guión y el dígito verificador. Todas las cifras previas al guión corresponden a esta columna, puede incluir los puntos si estima conveniente, no hace diferencia al momento de subir los datos.

### dv

La columna 'dv' corresponde al dígito verificador, puede estar entre el rango del 1 al 9 o ser la letra k. El dígito verificador tiene que corresponder al número de la columna 'rut' de acuerdo al algoritmo descrito en [este artículo](https://www.biobiochile.cl/noticias/servicios/toma-nota/2024/08/13/como-se-determina-el-digito-verificador-del-rut-en-chile-y-por-que-algunos-terminan-en-k.shtml)

### generacion_ingreso y generacion_egreso

Estos campos corresponden al año de ingreso y egreso respectivamente, por lo cual son números solamente.

### lidera

Este campo corresponde a organizaciones y/o empresas que haya liderado el alumni.

### categoria

Campo utilizado para describir si el alumni es docente o no, puede ser nulo.

### sexo

Este campo corresponde al sexo biológico del alumni, i.e. género asignado al nacer. Puede ser M (Masculino) o F (Femenino).

### primer_nombre, segundo_nombre, apellido_paterno y apellido_materno

Estos campos corresponden textualmente a su nombre, es decir, los nombres y apellidos del alumni.

### edad

La edad de la persona en cuestión, es un número entero.

### correo_contacto, correo_secretaria, correo_laboral y correo_personal

Estos campos deben ser llenados con correos válidos, correspondientes a la etiqueta asignada.

### fecha_actualizacion y ultimo_editor

Estos campos se llenan automáticamente en la plataforma al momento de crear una entrada de alumni o actualizar alguna. Corresponden a la fecha de actualización y el id del último editor. Pueden ser nulos al momento de subir el csv.

### fecha_nacimiento y fecha_fallecimiento

Las fechas tienen que estar en formato año-mes-día. Ejemplo: 1920-04-25.

### fallecido

Este campo puede tomar el valor 'Sí' o un valor nulo.

### titulo_pregrado y postgrado

Estos campos crean automáticamente una entrada de titulo_pregrado y postgrado si es que son distintos a los ya ingresados. Es importante tener esto en consideración al momento de ingresar datos por csv a la plataforma para no tener datos redundantes.

### Resto de campos

Para el resto de campos/columnas no hay mayores restricciones puesto que son columnas de tipo string/ cadena de caracteres. En su mayoría los nombres se explican por si mismos.