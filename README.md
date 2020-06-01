# Case2-Bankex-SPM

## Secciones

- [General](#general)
- [Primeros pasos](#primeros_pasos)
- [Uso](#uso)
- [Contribución](#contribucion)

## General <a name = "general"></a>

Este repositorio forma parte del proyecto correspondiente a mi Trabajo de Fin de Grado del Grado en Ingeniería de Tecnologías y Servicios de la Telecomunicación en la Universidad Politécnica de Madrid: Desarrollo de un servicio de gestión de asignaturas basado en Blockchain e implementación de clientes nativos para dispositivos iOS. Mi tutor durante el desarrollo del trabajo, defendido en junio de 2020, ha sido Santiago Pavón.

En concreto, Case2-Bankex-SPM es una aplicación iOS desarrollada con Xcode que busca la comunicación con una red de tipo Blockchain con Ganache. Esta aplicación es nativa en Swift, que utiliza la librería [web3swift](https://github.com/BANKEX/web3swift) para acceder al nodo de Ganache.

**IMPORTANTE: Aplicación experimental sin resultados exitosos.**

## Primeros pasos <a name = "primeros_pasos"></a>

Se debe clonar el repositorio. Este proyecto ya contiene la librería [web3swift](https://github.com/BANKEX/web3swift) incluida, por lo que no es necesaria ninguna configuración adicional.

### Prerrequisitos

Se debe haber instalado y configurado el proyecto Contador-Contracts disponible en [este repositorio](https://github.com/pcentenerab/Contador-Contract).

### Instalación

Para instalar el proyecto en el entorno, hay que ejecutar el siguiente comando desde un terminal.

```
$ git clone https://github.com/pcentenerab/Case2-Bankex-SPM
```

Además, se debe consultar la dirección en la que está desplegado el contrato en la red propia de Ganache para introducirla en la clase ViewController (línea 43). También debe tenerse la frase mnemónica de la wallet de Ganache. Se debe introducir en esta misma clase en la línea 29. 


## Uso <a name = "uso"></a>

A partir de aquí, ya se tiene la aplicación instalada. Como este proyecto no ha tenido resultados exitosos, no se puede ejecutar correctamente. Abriendo el proyecto Xcode se pueden realizar las modificaciones que se estimen oportunas.


## Contribución <a name = "contribucion"></a>

Este repositorio se enmarca en el proyecto ya mencionado, que proporciona una guía de desarrollo disponible para toda la comunidad de desarrolladores. Estaré encantada de recibir contribuciones al respecto para poder mejorar el potencial de la investigación.