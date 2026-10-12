1. GET:
El metodo get se utiliza para hacer una solicitud de informacion a un  servidor para consultar o recuperar informacion sin modificarla

Si realizamos un get a https://jsonplaceholder.typicode.com/posts nos devolveria:

URL: https://jsonplaceholder.typicode.com/posts
Body de peticion:No se envia informacion
Body de respuesta: 
```json
[
  {
    "userId": 1,
    "id": 1,
    "title": "sunt aut facere repellat provident occaecati excepturi optio reprehenderit",
    "body": "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto"
  },
  {
    "userId": 1,
    "id": 2,
    "title": "qui est esse",
    "body": "est rerum tempore vitae\nsequi sint nihil reprehenderit dolor beatae ea dolores neque\nfugiat blanditiis voluptate porro vel nihil molestiae ut reiciendis\nqui aperiam non debitis possimus qui neque nisi nulla"
  },
  ...
]
```
Codigo de estado: 200 OK

2. POST:
El metodo post crea una nueva publicacion que se envia al servidor.

Si realizamos una peticion post a https://jsonplaceholder.typicode.com/posts nos devolveria:

URL: https://jsonplaceholder.typicode.com/posts
Body de peticion:
```json
{
    "userId": 4,
    "title": "Prueba de envio",
    "body": "un mensaje de prueba de envio al servidor"
}

```
Body de respuesta:
```json
{
  "userId": 4,
  "title": "Prueba de envio",
  "body": "un mensaje de prueba de envio al servidor",
  "id": 101
}
```
Codigo de estado: 201 Created


3. PUT:
El metodo de put modifica un elemento del servidor por completo, si se omiten campos del recurso que se pretende reemplazar, estos pueden perderse o quedar ausentes.

Si realizamos una peticion put a https://jsonplaceholder.typicode.com/posts/2 nos devolveria:

URL: https://jsonplaceholder.typicode.com/posts/2
Body de peticion:
```json 
{
    "userId": 1,
    "title": "Prueba de modificacion",
    "body": "un mensaje de prueba de modificacion de un parametror"
}
```
Body de respuesta:
```json
{
  "userId": 1,
  "title": "Prueba de modificacion",
  "body": "un mensaje de prueba de modificacion de un parametror",
  "id": 2
}
```
Codigo de estado: 200 OK.

4. PATCH: 
El metodo patch modifica parcialemente un recurso, esto permite modificar atributos especificos

Si realizamos una peticion patch a https://jsonplaceholder.typicode.com/posts/2 nos devolveria:

URL: https://jsonplaceholder.typicode.com/posts/2
Body de peticion:
```json
{
    "body": "un mensaje de prueba de modificacion de un parametror"
}
```
Body de respuesta:
```json
{
  "userId": 1,
  "id": 2,
  "title": "qui est esse",
  "body": "un mensaje de prueba de modificacion de un parametror"
}
```
Codigo de estado: 200 OK.

5. DELETE:
El metodo delete se encarga de eliminar un recurso por completo

Si realizamos un DELETE a https://jsonplaceholder.typicode.com/posts/2 nos devolveria:

Body de peticion: Normalmente no lo tiene
Body de respuesta:
```json
{}
```
Codigo de estado: 200 OK.


DIFERENCIAS ENTRE PUT Y PATCH:
Los metodos put y patch modifican recursos del servidor, pero la diferencia esta en que tanto lo hacen, el put se encarga de modificar todo el recurso completo haciendo que los apartados que no se llenen se pierdan, el patch por otra parte solo modifica atributos especificos del recurso, lo cual nos permite modificar los atributos necesarios sin tener que especificar todos sus atributos.
