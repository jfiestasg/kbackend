Autor: Jose Martin Fiestas Guarniz
Descripción: test de backend a https://serverest.dev/usuario basado en el dominio Usuario
Documentacion de APIS: https://serverest.dev
Escenarios:

• GET /usuarios - Listar usuarios
• POST /usuarios - Registrar usuario
• GET /usuarios/{_id} - Buscar usuario por ID
• PUT /usuarios/{_id} - Actualizar usuario
• DELETE /usuarios/{_id} - Eliminar usuario


Ejecución:
mvn clean test

Salida Reporte

{Ruta}/kbackend/target/karate-reports/karate-summary.html

