# Tutorial de Godot

> Hecho por Mapachana

## Información del tutorial y repositorio

En este repositorio se encuentra un tutorial de Godot básico, donde se van a explicar los aspectos y conceptos básicos del motor, así como cómo realizar un juego.

Para este tutorial se ha usado la versión 4.3 de Godot.

La estructura del repositorio consiste en un fichero README que contiene el tutorial (el que estás leyendo ahora mismo, sí), una carpeta `img` para contener las capturas de este documento y la carpeta `tutorialbasico` con los ficheros del proyecto del juego.

Dentro de la carpeta `tutorialbasico` se encuentran los ficheros de configuración y 3 carpetas para la organización del proyecto: `escenas`, `graficos` y `musica`, que se explicarán en profundidad más adelante, pero en general, se tiene:

- `escenas`: Escenas y scripts del proyecto.
- `graficos`: Sprites, fondos, etc. del proyecto.
- `musica`: Música y efectos de sonido del proyecto.

## ¿Qué es Godot? ¿Por qué iba yo a usar Godot?

![](./img/Godot_icon.svg.png)

[Godot](https://godotengine.org/) es un motor de videojuegos que ofrece una interfaz sencilla y herramientas para desarrollar videojuegos de forma intuitiva.

Entre los motivos para usar este motor destacamos:

- Motor ligero.
- Intuitivo.
- Es software libre.
- Disponible para Windows, Linux, Mac, Android y Web.
- Permite desarrollar videojuegos para ordenador, móvil y Web.
- Tiene documentación amplia y detallada.

## Instalando Godot

Instalar Godot es realmente sencillo. En este tutorial vamos a instalar la última versión estable. Para ello, accedemos [aquí](https://godotengine.org/download/windows/), a la página de descargas de Godot.

Pulsamos descargar la última estable en nuestro sistema operativo, y se nos descarga un archivo comprimido. Descomprimimos el archivo y listo, ya está instalado.

Pulsamos en el ejecutable sin consola, y se abrirá Godot.

> Nota: Si estás en linux puede que necesites darle permisos de ejecución, para ello usa `chmod +x archivo`.

## Creando un proyecto

Al hacer doble click en el ejecutable de Godot, se nos abre la primera ventana, relativa a proyectos.

![](./img/godot_proyecto.png)

En esta ventana vemos listados todos los proyectos de Godot, y para cada uno se indica su nombre, un icono del mismo, la ruta de dónde está guardado este proyecto, para qué versión de Godot se desarrolló y la última fecha de acceso.

En la parte de arriba, encontramos, de derecha a izquierda, botones para crear un nuevo proyecto, importarlo o escanear en busca de más proyectos. También tenemos una barra de búsqueda y en qué orden se muestran.

En la barra lateral de la derecha encontramos qué acción queremos realizar con el proyecto seleccionado, editarlo, ejecutarlo, renombrarlo, cambiarle las etiquetas o borrarlo.

Para crear el proyecto, pulsamos en el botón `Crear`.

Se nos muestra la siguiente pantalla:

![](./img/godot_proyecto2.png)

En esta ventana indicamos el nombre del proyecto, en este caso `tutorialGodot` y especificamos donde se va a guardar el proyecto. Podemos escribir la ruta o pulsar en `Examinar` y seleccionar la carpeta. Es importante que se trabaje en una carpeta vacía.

Finalmente, nos fijamos en que Godot tiene integrado el uso de control de versiones, en este caso se va a usar `Git`.

Finalmente pulsamos `Crear y editar`, y ya tenemos creado el proyecto.

Una vez creado el proyecto, vamos a abrir la carpeta donde se ha creado y, además de los ficheros automáticos que genera godot, vamos a crear una pequeña estructura de carpetas para organizar los ficheros necesarios.

La estructura de carpetas es algo personal, y puedes realizarla como prefieras. Para este tutorial vamos a crear las siguientes carpetas:

- escenas: En esta carpeta vamos a guardar todos los ficheros de escenas y sus scripts.
- graficos: En esta carpeta se guardan todos los gráficos y sprites del juego.
- musica: En esta carpeta se guardarán la música y efectos de sonido.

## La interfaz

Al crear el proyecto, se nos abre la siguiente ventana:

![](./img/interfaz1.png)

Vamos a hablar, en general, de las partes que vemos en esta interfaz:

En la parte superior izquierda, vemos unos desplegables `Escena`, `Proyecto`, `Depurar`, `Editor` y `Ayuda`. En el desplegable de `Escena` podemos crear escenas, en los demás desplegables tenemos la configuración del proyecto, depuración, el editor y la pestaña de ayuda.

En la parte superior derecha vemos unos iconos que son los que usaremos para ejecutar el juego, pausarlo, detenerlo, exportarlo, ejecutar la escena actual, ejecutar una escena específica o cambiar el renderizado del juego.

En el centro se van a mostrar los elementos gráficos (personajes, niveles, etc.) tanto en 2D, 3D y el código. Se cambia la visión seleccionando qué visor se quiere en cada momento en la parte de arriba. Además arriba en las pestañas se mostrarán las escenas abiertas.

En el panel lateral izquierdo distinguimos dos partes:

En el lateral izquierdo arriba se muestra la estructura de nodos de dicha escena y el menú de importación de imágenes, para cambiar las propiedades de importación de diferentes elementos.

En el lateral izquierdo abajo se muestra la estructura de ficheros del proyecto.

En el panel lateral derecho se van a mostrar las propiedades de los nodos para editarlo, los listeners y el historial.

La parte inferior muestra la consola de salida y depurador, así como los menús de animaciones, sonidos y shaders cuando sea pertinente.

## Escenas y nodos

En Godot trabajamos con escenas y nodos. Debemos tener en cuenta que es programación orientada a objetos a la hora de comprender estos conceptos.

Los nodos son las unidades básicas de Godot, cada nodo tiene una funcionalidad específica, como contener sprites, reproducir música, realizar animaciones o colisionadores.

Las escenas son conjuntos de nodos jerárquicamente organizados en un árbol que pueden reutilizarse e instanciarse en otras escenas. Una escena puede ser un personaje, un obstáculo, la pantalla de menús inicial del juego o el nivel.

En este tutorial el juego a desarrollar va a realizarse en 2D, pero (prácticamente) todo nodo 2D tiene su equivalente en 3D.

### Escena de jugador

Vamos a ir creando, poco a poco, un pequeño juego para aterrizar todos los conceptos y uso del motor que estamos viendo. El videojuego que vamos a desarrollar va a ser un PseudoMario, pues va a ser una versión ligeramente simplificada del mismo.

Vamos a comenzar el proyecto creando la escena del jugador, que llamamos `personaje.tscn` y almacenamos en la carpeta `escenas`. Para ello, en el menú lateral izquierda vamos a comenzar añadiendo el nodo raíz de la escena.

Dado que es un personaje y por tanto tendrá colisiones y se mueve, pulsamos en `Otro Nodo`, seleccionamos `CharacterBody2D` y le damos a `Crear`:

![](./img/escena_perso1.png)

Una vez añadido, vemos que el nodo aparece en el panel izquierdo y se muestra una exclamación de advertencia, ya que el nodo `CharacterBody2D` está preparado para comprobar las colisiones, y por tanto necesida que se le indique la forma del colisionador.

![](./img/escena_perso2.png)

Seleccionamos el nodo que acabamos de crear y pulsamos el `+` de la parte superior del panel para crear un nodo hijo. Seleccionamos un `CollisionShape2D` para indicar la forma del colisionador.

Este nuevo nodo vuelve a tener un signo de exclamación, pues aunque tenemos un nodo para almacenar la forma de la colisión, no le hemos indicado cuál es. Seleccionamos el nodo y en el panel derecho se muestran las propiedades de dicho nodo. Buscamos la propiedad `Shape` y en dicho desplegable indicaremos qué forma tiene el colisionador. Normalmente se usan rectángulos (`Nuevo RectangleShape2D`) o cápsulas (`Nuevo CapsuleShape2D`).

![](./img/escena_perso3.png)

Una vez seleccionada la forma ya podemos ajustarla al tamaño que queramos usando el editor gráfico en la parte central de la pantalla, y tendremos un colisionador funcionando.

El tamaño del colisionador deberá ser el tamaño del sprite o imagen de nuestro personaje.

Vamos a añadir el al nodo raíz un nuevo nodo hijo `Sprite2D` y en la barra de la derecha, pulsamos en la propiedad `texture` para indicar cuál debe usar pulsando en `Cargar` y seleccionando de nuestra carpeta de gráficos `elfo.png`.

![](./img/escena_perso4.png)

![](./img/escena_perso5.png)

Dado que nuestro personaje tiene una spritesheet, debemos indicarle que solo coja uno de los elfos, para ello iremos a la propiedad `hframes` y `vframes` de `Animation`, que indica cuántos frames verticales y horizontales tiene el spritesheet cargado. En este caso hay 23 elfos en línea, así basta ajustar los valores como se ve:

![](./img/escena_perso6.png)

Sin embargo nuestro pixelart se ve borroso, para corregir esto iremos a `Proyecto` -> `Configuración del proyecto` -> `Renderizado` -> `Texturas` y en lugar de `Linear` seleccionamos `Nearest.`

![](./img/escena_perso7.png)

Aunque todavía no vayamos a hacer las animaciones, vamos a dejar añadido un nodo `AnimationPlayer` como hijo de `Sprite2D`.

Finalmente ajustamos nuestro colisionador para que quede centrado y alineado con el sprite con el ratón.

![](./img/escena_perso8.png)

> Nota: En general, se suelen tener colisiones cuando trabajamos con un jugador, por eso se ha usado `CharacterBody2D`, pero si no queremos que colisione y nos basta con que detecte que algo ha entrado en su área o región, por ejemplo para proyectiles o zonas en las que debe ocurrir un evento, se usa el nodo,  `Area2D`. 

### Escena de monedas

Esta escena va a tener una estructura muy similar a la del jugador, pero el nodo raíz será un `Area2D`, ya que no necesita colisiones ni desplazarse.

Así, tendremos un `Area2D` que tiene por hijos un `CollisionShape2D` y un `Sprite2D`, teniendo este último un hijo `AnimationPlayer`. Cargamos además los gráficos de la moneda de manera análoga a como lo hicimos el elfo, teniendo la moneda 6 frames.

## Scripts

Los scripts son ficheros de código que suelen ir asociados a escenas, aunque no siempre.

Para programar en godot podemos usar dos lenguajes: c# y gdscript, que es el lenguaje propio de godot y es muy similar a python.

No debemos olvidar que godot nos ofrece métodos ya preparados para por ejemplo colisionar, moverse o reproducir animaciones.

En este tutorial vamos a programar empleando gdscript.

### Script de personaje

Vamos a continuar desarrollando nuestro personaje añadiendo controles para poder moverlo. Para ello vamos a añadir un script a su escena pulsando sobre el pergamino con el + que se ve en el panel izquierdo:

![](./img/script_perso1.png)

Le damos a crear y nos aparece un fichero con código ya hecho como el siguiente:

```python
extends CharacterBody2D 


const SPEED = 300.0
const JUMP_VELOCITY = -400.0


func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
```

En este código ya tenemos muchos aspectos básicos, por ejemplo la primera línea nos indica cuál es el nodo raíz de la escena.

Después tenemos el equivalente a atributos de la clase, que además son constantes, `SPEED` y `JUMP_VELOCITY`, velocidades fijas que usaremos para el movimiento.

A continuación encontramos la función `_physics_process(delta: float)` que es una función que tiene en cuenta físicas y se ejecuta cada frame. Recibe como argumento `delta` que es el tiempo entre dos frames. Esta función se ejecuta continuamente.

Sin embargo, nosotros no vamos a usar físicas realistas, así que vamos a quitar esa función y en su lugar usar `process(delta)`.

Godot tiene ya incorporadas diversos métodos para los nodos `CharacterBody2D`, como por ejemplo `is_on_floor()`, que comprueba si el nodo está en el suelo o `move_and_slide()` para desplazar al personaje.


## Animaciones

Crear una animación consiste básicamente en indicarle al editor qué propiedades debe cambiar y en qué momento.

Las animaciones más usuales son por ejemplo las de andar o saltar, pero también pueden ser explosiones u otros detalles.

Para realizar animaciones, usaremos los nodos pertinentes para ellas.

### Animación de personaje



## Musiquita

Para añadir música al juego, ya sea música de fondo o efectos de sonidos que se escuchan al ocurrir determinados eventos, usaremos los nodos de música.

### Música de fondo para el nivel



## Menús e Interfaces

Vamos a distinguir dos apartados: por un lado menús, como los que encontramos en las pantallas de comienzo y fin del juego, y por otro la interfaz del usuario, como son contadores de monedas, de vida o de tiempo.

En ambos casos usaremos etiquetas, pero en los menús usaremos botones mientras que en la interfaz con el usuario usaremos sprites u otros elementos para mostrar iconos.

### Contador de monedas



### Menú de inicio



## Publicando tu obra maestra