import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:q2/src/bloc/login_bloc.dart';
import 'package:q2/src/bloc/provider.dart';
import 'package:q2/src/models/cliente_model.dart';
import 'package:q2/src/providers/clientes_provider.dart';
import 'package:q2/src/service/authservice.dart';
import 'package:q2/src/widgets/fondo_login.dart';
import 'package:q2/src/widgets/loading.dart';

class LoginPage extends StatefulWidget {

  final state;

  LoginPage({ this.state });

  @override
  _LoginPageState createState() => _LoginPageState( state );
}

class _LoginPageState extends State<LoginPage> {

  final state;
  _LoginPageState( this.state );
  
  ClienteModel cliente = new ClienteModel();


  final formKey = GlobalKey<FormState>();
  final clienteProvider = new ClienteProvider();


  String phoneNo, verificationId, smsCode;
  bool loading = false;
  bool codeSend = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: loading ? Loading() : Stack(
        // body: Stack(
        children: <Widget>[

          FondoLogin().crearFondo(context),
          _loginFrom( context )
        ],
      ),
    );
  }

  Widget _loginFrom( BuildContext context ) {
    
    final bloc = Providers.of(context);
    final size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

          SafeArea(child: Container(
            height: 200,
          )),

          Container(
            width: size.width * 0.85,
            padding: EdgeInsets.symmetric( vertical: 50 ),
            margin: EdgeInsets.symmetric( vertical: 10 ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular( 5 ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 3,
                  offset: Offset( 0.0 , 5),
                  spreadRadius: 3
                )
              ]
            ),

            child: Form(
              key: formKey,
              child: Column(
                children: <Widget>[

                  SizedBox( height:  10,),

                  _recibirTelefono(bloc),

                  SizedBox(height: 10,),

                  codeSend ? Text(
                    'Si el mensajo no llega, revisa el número de tlf', 
                    style: TextStyle(color: Colors.red, fontSize: 13),
                  ) : Container(),

                  codeSend ? Padding(
                  padding: EdgeInsets.only(left: 25.0, right: 25.0),
                  child: TextFormField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      icon: Icon(Icons.message, color: Color.fromRGBO(161, 35, 18, 1)),
                      hintText: 'Introduce el código',
                    ),
                    onChanged: (val) {
                      setState(() {
                        this.smsCode = val;
                      });
                    },
                  )) : Container(),

                  SizedBox( height:  10,),

                  _crearBoton( bloc ),

                  SizedBox(height: 10,),

                  codeSend ? StreamBuilder<Object>(
                    stream: bloc.telefonoUsuario,
                    builder: (context, snapshot) {

                      return RaisedButton(
                        onPressed: snapshot.hasData ? () async {
                          verifyPhone(phoneNo);
                          setState(() {
                            this.loading = true;
                          });
                        } : null,
                        child: Text('Intentar de nuevo'),
                        elevation: 0.0,
                        color: Colors.black12,
                        textColor: Color.fromRGBO(161, 35, 18, 1),
                        focusElevation: 0.0,
                        highlightElevation: 0.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)
                        ),
                      );
                    }
                  ) : Container()
                ],
              ) 
            ),
          ),
        
          SizedBox( height:  20,),

          _singIn( context ),

          SizedBox( height:  30,)
        ],
      ),
    );
  }

  Widget _recibirTelefono( LoginBloc bloc ) {

    return StreamBuilder(
      stream: bloc.telefonoUsuario ,
      builder: (BuildContext context, AsyncSnapshot snapshot){
        return Container(
          padding: EdgeInsets.symmetric( horizontal: 20 ),
          
          child: TextFormField(
            keyboardType: TextInputType.phone,
            autofocus: false,
            decoration: InputDecoration(
              icon: Icon( Icons.add_call, color: Color.fromRGBO(161, 35, 18, 1)),
              labelText: 'Teléfono',
              hintText: '3000000000',
              errorText: snapshot.error,
            ),
            onChanged: (val) {

              setState(() {
                bloc.changeTelefono(val);
                phoneNo = val;
              });
            },
            onSaved: ( value ) => cliente.telefono = value,
          ),
          
        );
      },
    );
  }



  Widget _crearBoton( LoginBloc bloc ) {

    return StreamBuilder(
      stream: bloc.telefonoUsuario ,
      builder: (BuildContext context, AsyncSnapshot snapshot){

        return RaisedButton(
          onPressed: snapshot.hasData ? () async {

            loading = true;

            setState(() {

              codeSend ? AuthService().signInWithOTP(smsCode, verificationId):verifyPhone(phoneNo);
            });
          

          } : null,

          // onPressed: () async{
          //   loading = true;

          //   setState(() {

          //     codeSend ? AuthService().signInWithOTP(smsCode, verificationId):verifyPhone(phoneNo);
          //   });
          // },
          child: Container(
            padding: EdgeInsets.symmetric( horizontal: 50.0, vertical: 15 ),
            child: !codeSend ? Text('Validar') : Text('Introduce el código'),
          ),

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5)
          ),

          elevation: 0.0,
          color: Colors.black12,
          textColor: Color.fromRGBO(161, 35, 18, 1),
          focusElevation: 0.0,
          highlightElevation: 0.0,
        );
      },
    );
  }

  Widget _singIn( BuildContext context ) {

    return InkWell(
      onTap: () => Navigator.pushNamed(context, 'sing in'),

      child: Container(
        width: 300,
        height: 50,
        decoration: BoxDecoration(
          color: Color.fromRGBO(239 , 184, 16, 0.2),
          borderRadius: BorderRadius.circular(5)
        ),

        child: Center(
          child: Text('Iniciar Sesion', style: TextStyle( color: Color.fromRGBO(239 , 184, 16, 1), fontWeight: FontWeight.bold ),)
        )
        // color: Color.fromRGBO(239 , 184, 16, 0.5),
        
      ),
    );
  }



  _mostrarAlert(BuildContext context ) {

    dynamic dialog = showDialog(
      context: context,
      barrierDismissible: true,
      useRootNavigator: true,
       
      builder: (context) {

        return Dialog(
          shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(20)),

          child:

            Row(
            children: <Widget>[
              SizedBox(width: 30,),
              // _retroceder(),
              CircularProgressIndicator(
                backgroundColor: Color.fromRGBO(161, 35, 18, 1), 
                valueColor: new AlwaysStoppedAnimation<Color>(Color.fromRGBO(239 , 184, 16, 1)),
              ), 

              SizedBox(width: 30,),

              Text('cargando', style: TextStyle(color: Colors.blueGrey.withOpacity(0.7)),),

              SizedBox( height: 60,)
              
            ],
          ),
          
        );

      }
    );

    setState(() {
      if (!this.loading) {
        dialog = null;
      }
    });

    return dialog;
  }



  Future<void> verifyPhone(phoneNo) async {

    final PhoneVerificationCompleted verified = (AuthCredential authResult) async {

      // this.result = AuthService().signIn(authResult);

      FirebaseAuth.instance.signInWithCredential(authResult);
      // FirebaseUser user = result.user;
      
    };

    final PhoneVerificationFailed verificationfailed =
        (AuthException authException) {
      print('${authException.message}');
      setState(() {
        this.codeSend = true;
        this.loading  = false;
      });
    };

    final PhoneCodeSent smsSent = (String verId, [int forceResend]) {
      this.verificationId = verId;
      setState(() {
        this.codeSend = true;
        this.loading  = false;
      });
    };

    final PhoneCodeAutoRetrievalTimeout autoTimeout = (String verId) {
      this.verificationId = verId;
    };

    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: '+57'+ phoneNo,
      timeout: const Duration(seconds: 5),
      verificationCompleted: verified,
      verificationFailed: verificationfailed,
      codeSent: smsSent,
      codeAutoRetrievalTimeout: autoTimeout
    );
  }
} 