Utilizando la API disponible en World Time API, crea una aplicación Flutter que cumpla con los siguientes requisitos:


1. ListView Inicial:
El primer ítem del ListView debe mostrar la zona horaria, la hora y la fecha del usuario actual.
Título: "$Timezone"
Subtítulo: $DateTimeFromApi en el formato (YYYY-DD-MM hh am/pm)

2. Agregar Nuevos Ítems:
Implementa un PopupMenuButton que liste todas las zonas horarias obtenidas de la API.
Al seleccionar una zona horaria del menú, debe agregarse como un nuevo ítem al ListView.

3. Vista de Detalles:
Al presionar cualquier ítem en el ListView, debe abrirse una vista de detalles que muestre la siguiente información:
Día y hora
Zona horaria
Día de la semana
Día del año
Número de la semana
Abreviación
Tiempo Unix

4. El usuario debe tener la opción de cambiar la zona horaria actual por una diferente, siempre y cuando no esté ya incluida en la lista.

5. También debe ser posible eliminar cualquier ítem de la lista desde esta vista de detalles, previa confirmación.

6. Eliminar Ítems desde la Vista Principal:
Permite la eliminación de ítems directamente desde la vista principal, también con confirmación.

7. Implementar un buscador local:
Permite buscar elementos dentro de la lista usando el nombre de la zona horaria.

8. Manejadores de Estados y Arquitectura:
Utiliza manejadores de estados (State Management) y aplica conceptos de arquitectura como MVC, MVVM o preferiblemente Clean Code.

Notas adicionales:
Se valorará el uso de buenas prácticas de desarrollo y la claridad en el código. 
 