

import 'package:flutter/material.dart';
import 'package:q2/src/bloc/login_bloc.dart';
import 'package:q2/src/bloc/provider.dart';

class SingInPage extends StatelessWidget {
  const SingInPage({Key key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    final bloc = Providers.of(context);

    return Scaffold(
      
      appBar: AppBar(
        title: Text('Iniciar sesión'),
        backgroundColor: Colors.white,
        elevation: 0.5,
        
      ),
      body: ListView(
        padding: EdgeInsets.symmetric( horizontal: 20, vertical: 20),
        children: <Widget>[

          _crearEmail( bloc ),
          _crearPassword( bloc ),

          Center(
            heightFactor: 5,
            child: _crearBoton( bloc ))
        ],
      )
    );
  }


  Widget _crearEmail( LoginBloc bloc,  ) {

    return StreamBuilder(
      stream: bloc.emailStream ,
      builder: (BuildContext context, AsyncSnapshot snapshot){
        
        return Container(
        padding: EdgeInsets.symmetric( horizontal: 20 ),
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          autofocus: false,
          decoration: InputDecoration(
            icon: Icon( Icons.alternate_email, color: Color.fromRGBO(161, 35, 18, 1)),
            hintText: 'Q2Mas-Queso@correo.com',
            labelText: 'Correo Electronico',
            counterText: snapshot.data,
            errorText: snapshot.error
          ),
          onChanged: bloc.changeEmail ,
         ),
        );
      },
    );
  } 


  Widget _crearPassword( LoginBloc bloc ) {

    

    return StreamBuilder(
      stream: bloc.passwordStream ,
      builder: (BuildContext context, AsyncSnapshot snapshot){
        return Container(
          padding: EdgeInsets.symmetric( horizontal: 20 ),
          
          child: TextField(
            autofocus: false,
            obscureText: true,
            decoration: InputDecoration(
              icon: Icon( Icons.lock_outline, color: Color.fromRGBO(161, 35, 18, 1)),
              labelText: 'Contraseña',
              errorText: snapshot.error//'No es una contraseña valida'
            ),
            onChanged: bloc.changePassword,
          ),
        );
      },
    );


    
  }


  Widget _crearBoton( LoginBloc bloc ) {

    return StreamBuilder(
      stream: bloc.fromValidStreamSingIn ,
      builder: (BuildContext context, AsyncSnapshot snapshot){

        return RaisedButton(
          onPressed: snapshot.hasData ? () => _login( bloc, context ) : null,
          child: Container(
            padding: EdgeInsets.symmetric( horizontal: 80.0, vertical: 15 ),
            child: Text('Ingresar'),
          ),

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5)
          ),

          elevation: 0.0,
          color: Colors.black12,
          textColor: Color.fromRGBO(161, 35, 18, 1),
        );
      },
    );
  }

    _login( LoginBloc bloc, BuildContext context ) {
    
    // print('=' *  10);
    // print('Email: ${ bloc.email }');
    // print('Password: ${ bloc.password }');
    // print('=' *  10);


    Navigator.pushNamed(context, 'domis');
  }
}