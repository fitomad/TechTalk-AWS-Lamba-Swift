
Debemos abrir la aplicación **Terminal** y situarnos en la carpeta con el Swift Package que queremos compilar y generar su paquete y ejecutar el siguiente comando.

```zsh
swift package --disable-sandbox archive 
```

Si queremos que el empaquetedo se genere en una ruta determinada se debe usar el parámetro `--output-path`

```zsh
swift package --disable-sandbox archive --output-path /Users/JohnAppleseed/Desktop --verbose 2
```

Para una información más detallada sobre los parámetros que acepta el nuevo comando `archive` visita la sección [Deploy to AWS Lambda](https://github.com/swift-server/swift-aws-lambda-runtime#deploying-to-aws-lambda) del proyecto [Swift AWS Lambda runtime](https://github.com/swift-server/swift-aws-lambda-runtime)
