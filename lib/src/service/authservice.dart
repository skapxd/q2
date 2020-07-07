import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:q2/src/pages/login_page.dart';
import 'package:q2/src/pages/zona_de_producto.dart';

class AuthService {

  FirebaseUser userCredential;
  
  handleAuth() {

    return StreamBuilder(
      stream: FirebaseAuth.instance.onAuthStateChanged ,
      builder: (BuildContext context, AsyncSnapshot snapshot){
         
        if (snapshot.hasData) {

          print('Header ${snapshot.hasData}');

          // Navigator.pushReplacementNamed(context, 'header');
          return HeaderProductos();
        } else {

          print('Login ${snapshot.hasData}');

          return LoginPage();
        }

        // return LoginPage(state: snapshot.hasData,);      
      },
    );
  }

  //SignIn
  signIn(AuthCredential authCreds)  {
    FirebaseAuth.instance.signInWithCredential(authCreds);

    // AuthResult result = await FirebaseAuth.instance.signInWithCredential(authCreds);
    // this.userCredential = result.user;
    
  }



  //Sign out
  signOut() {
    FirebaseAuth.instance.signOut();
  }

  signInWithOTP(smsCode, verId) {

    AuthCredential authCreds = PhoneAuthProvider.getCredential(
        verificationId: verId, smsCode: smsCode);

    signIn(authCreds);
  }
}