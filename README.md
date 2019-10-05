# Manual de usuario

![npm package](https://img.shields.io/badge/npm%20package-v1-brightgreen.svg)
[![Build Status](https://travis-ci.org/joemccann/dillinger.svg?branch=master)](https://travis-ci.org/joemccann/dillinger)

##### Table of Contents  
[Sobre el programa](#headers)  
[TDA Player](#tdaplayer)  
[TDA Scene](#tdascene)  
[TDA Shoot](#tdashoot)  
[Tecnología](#technology)  
[Instalación](#instalation)  

<a name="headers"/>
## Sobre el programa

lab1-worms es la recreación de un antiguo videojuego de Worms.
  - Consiste en posicionar jugadores en un mapa
  - Disparar y vencer a los demás

<a name="tdaplayer"/>
### TDA Player
Es el TDA del jugador, permite almacenar sus posiciones dentro de un mapa y se considera su vida y turno para la continuidad del juego.

<a name="tdascene"/>
### TDA Scene
El mapa donde se posicionan los jugadores, los enemigos no pueden ser mas de lo que espacio posee.

<a name="tdashoot"/>
### TDA Shoot
El disparo considera el ángulo y la fuerza con que se trazará el proyecto.

<a name="tech"/>
## Tecnología

lab1-worms usa los siguientes proyectos para trabajar correctamente:

* [markdown-it] - Markdown para llevar a caso la documentación;
* [drRacket] - Para la ejecución del programa

<a name="instalation"/>
### Instalación

lab-1-worms requiere [drRacket] R5RS para correr.

Instala las dependencias y comienza con el juego.
```sh
$ cd /TomaAsistenciaCIChile/backoffice/
$ npm install -d
```

Para ambientes en Windows, descargar en su página web.


[//]: # (These are reference links used in the body of this note and get stripped out when the markdown processor does its job. There is no need to format nicely because it shouldn't be seen. Thanks SO - http://stackoverflow.com/questions/4823468/store-comments-in-markdown-syntax)


   [dill]: <https://github.com/joemccann/dillinger>
   [git-repo-url]: <https://github.com/joemccann/dillinger.git>
   [john gruber]: <http://daringfireball.net>
   [df1]: <http://daringfireball.net/projects/markdown/>
   [markdown-it]: <https://github.com/markdown-it/markdown-it>
   [Ace Editor]: <http://ace.ajax.org>
   [node.js]: <http://nodejs.org>
   [Twitter Bootstrap]: <http://twitter.github.com/bootstrap/>
   [jQuery]: <http://jquery.com>
   [@tjholowaychuk]: <http://twitter.com/tjholowaychuk>
   [express]: <http://expressjs.com>
   [AngularJS]: <http://angularjs.org>
   [Gulp]: <http://gulpjs.com>
[React]: <https://es.reactjs.org/>
   [PlDb]: <https://github.com/joemccann/dillinger/tree/master/plugins/dropbox/README.md>
   [PlGh]: <https://github.com/joemccann/dillinger/tree/master/plugins/github/README.md>
   [PlGd]: <https://github.com/joemccann/dillinger/tree/master/plugins/googledrive/README.md>
   [PlOd]: <https://github.com/joemccann/dillinger/tree/master/plugins/onedrive/README.md>
   [PlMe]: <https://github.com/joemccann/dillinger/tree/master/plugins/medium/README.md>
   [PlGa]: <https://github.com/RahulHP/dillinger/blob/master/plugins/googleanalytics/README.md>
    [drRacket]: <https://racket-lang.org/>