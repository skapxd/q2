

import 'dart:async';


import 'package:rxdart/rxdart.dart';

import 'validator.dart';

class LoginBloc with Validator {


  final _emailController             = BehaviorSubject<String>();
  final _passwordController          = BehaviorSubject<String>();
  final _nombreController            = BehaviorSubject<String>();
  final _telefonoController          = BehaviorSubject<String>();
  final _direccionController         = BehaviorSubject<String>();
  final _barrioController            = BehaviorSubject<String>();
  final _direccionOpcionalController = BehaviorSubject<String>();
  final _mensajeOpcionalController   = BehaviorSubject<String>();
  final _municipioController         = BehaviorSubject<String>();



  // Insertar valores al Stream

  Function(String) get changeEmail              => _emailController.sink.add;
  Function(String) get changePassword           => _passwordController.sink.add;
  Function(String) get changeNombre             => _nombreController.sink.add;
  Function(String) get changeTelefono           => _telefonoController.sink.add;
  Function(String) get changeDireccion          => _direccionController.sink.add;
  Function(String) get changeBarrio             => _barrioController.sink.add;
  Function(String) get changeDireccionOpcional  => _direccionOpcionalController.sink.add;
  Function(String) get changeMensajeOpcional    => _mensajeOpcionalController.sink.add;
  Function(String) get changeMunicipio          => _municipioController.sink.add;
  


  // Escuchar los datos del Stream

  Stream<String> get emailStream              => _emailController.stream.            transform( validarEmail );
  Stream<String> get passwordStream           => _passwordController.stream.         transform( validarPassword );
  Stream<String> get nombreUsuario            => _nombreController.stream.           transform( validarNombre );
  Stream<String> get telefonoUsuario          => _telefonoController.stream.         transform( validarTelefono );
  Stream<String> get direccionUsuario         => _direccionController.stream.        transform( validarDireccion );
  Stream<String> get barrioUsuario            => _barrioController.stream.           transform( validarDireccion );
  Stream<String> get municipioUsuario         => _municipioController.stream.        transform( validarMunicipio );
  
  Stream<String> get direccionOpcionalUsuario => _direccionOpcionalController.stream;
  Stream<String> get mensajeOpcionalUsuario   => _mensajeOpcionalController.stream;


  Stream<bool> get fromValidStreamSingIn => 
      Observable.combineLatest2( emailStream, passwordStream, (e, p) => true);

  // Stream<bool> get fromValidStreamDomicilio =>
  //     Observable.combineLatest3( nombreUsuario, direccionUsuario, barrioUsuario, (n, d, b) => true);

  Stream<bool> get fromValidStreamDomicilio => 
      Observable.combineLatest4( 
          nombreUsuario, direccionUsuario, barrioUsuario, municipioUsuario,
          (n, d, b,  mun) => true
      );


  // Obtener el ultimo valor ingresado a los streams
  String get email              => _emailController.value;
  String get password           => _passwordController.value;
  String get nombre             => _nombreController.value;
  String get telefono           => _telefonoController.value;
  String get direccion          => _direccionController.value;
  String get barrio             => _barrioController.value;
  String get municipio          => _municipioController.value;
  String get direccionOpcional  => _direccionOpcionalController.value;
  String get mensaje            => _mensajeOpcionalController.value;



  dispouse() {
    _emailController?.close();
    _passwordController?.close();
    _telefonoController?.close();
    _direccionOpcionalController?.close();

  }

  dispouseForm() {
    _direccionController?.close();
    _barrioController?.close();
    _mensajeOpcionalController?.close();
    _municipioController?.close();
    _nombreController?.close();

  }

}