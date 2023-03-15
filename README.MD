# Tech Talk: AWS Lambda con Swift

Este es el repositorio con todo el código mostrado en la Tech Talk de Globant en que hablamos sobre el uso del lenguaje Swift para desarrollar Amazon Web Services Lambdas.

## Organización

Dentro de este repositorio encontrarás los siguientes proyectos

* Carpeta **App**
    * **GlobantPlus**. Es la aplicación desarrollada para tvOS que sirve de guía en la charla. Hace las llamadas a las Lambdas que almacenan los favoritos y el tracking del usuario mientras usa la aplicación
* Carpeta **Lambdas**
    * **AWSLambdaBasic** La Lambda más básica.
    * **AWSLambdaBackend** Se encanrga de los eventos `POST` y `DELETE` recibidos por AWS API Gateway y los inserta en una base de datos DynamoDB
    * **AWSLambdaTracking** Recibe un evento de una cola de mensaje AWS SQS.
    * **AWSMultipleFunctions** Varias Lambdas dentro de un mismo Swift Package.

## Documentación

## Contacto

