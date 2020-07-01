


import 'dart:async';


class Validator{

  final validarEmail = StreamTransformer<String, String>.fromHandlers(
    handleData: ( email, sink) {

      Pattern pattern = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    
      RegExp regExp = new RegExp(pattern);

      if ( regExp.hasMatch( email ) ) {
        sink.add( email );
      } else {
        sink.addError('Email no es válido');
      }

    }
  );


  final validarPassword = StreamTransformer<String, String>.fromHandlers(
    handleData: ( password, sink) {

      if ( password.length >= 6 ){
        sink.add( password );
      } else {
        sink.addError('Mas de 6 caracteres por favor');
      }

    }
  );


  final validarNombre = StreamTransformer<String, String>.fromHandlers(
    handleData: ( nombre, sink){

      if ( nombre.length > 3 && nombre.length < 20 ) {
        sink.add( nombre );
      } else {
        sink.addError('Nombre invalido');
      }
    }
  );


  final validarTelefono = StreamTransformer<String, String>.fromHandlers(

    handleData: ( telefono, sink) {
      
      if ( telefono.length == 10 && telefono[0] == '3') {
        sink.add( telefono );
      } else {  
        sink.addError('Número invalido - 3000000000');
      }
    }
  );


  final validarDireccion = StreamTransformer<String, String>.fromHandlers(
    handleData: ( direccion, sink ) {

      if ( direccion.length > 1 ) {
        sink.add( direccion );
      } else {
        sink.addError('Direccion invalida');
      }
    }
  );


  final validarBarrio = StreamTransformer<String, String>.fromHandlers(
    handleData: ( barrio, sink ) {

      if ( barrio.length > 1 ) {
        sink.add( barrio );
      } else {
        sink.addError('Barrio invalido');
      }
    }
  );

  final validarMunicipio = StreamTransformer<String, String>.fromHandlers(
    handleData: ( municipio, sink ) {

      if ( municipio != '' ) {
        sink.add( municipio );
      } else {
        sink.addError('municipio invalido');
      }
    }
  );

}