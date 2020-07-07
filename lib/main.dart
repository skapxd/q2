
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:q2/src/pages/confirmacion_domicilio_page.dart';
import 'package:q2/src/pages/datos_domicilio.dart';
import 'package:q2/src/pages/esperando_confirmacion_page.dart';
import 'package:q2/src/pages/introducir_codigo.dart';
import 'package:q2/src/pages/zona_de_producto.dart';
import 'package:q2/src/providers/lista_perros_provider.dart';
import 'package:q2/src/providers/lista_hamburgesas_provider.dart';


import 'src/bloc/provider.dart';
import 'src/pages/domis_recibidos_page.dart';
import 'src/pages/hambur_ingrediestes_page.dart';
import 'src/pages/home_page.dart';
import 'src/pages/info_del_domi_recibido_page.dart';
import 'src/pages/login_page.dart';
import 'src/pages/pedido_page.dart';
import 'src/pages/perros_ingredientes_page.dart';
import 'src/pages/sing_in_pages.dart';
import 'src/service/authservice.dart';
import 'src/widgets/productos_page.dart';
// import 'src/pages/productos_page.dart';

void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(builder: (context) => ListaHamburguesas(), create: (BuildContext context) => ListaHamburguesas(),),
        ChangeNotifierProvider(builder: (context) => ListaPerro(), create: (BuildContext context) => ListaPerro(),)
      ],
      child: StreamProvider.value(
        value: FirebaseAuth.instance.onAuthStateChanged,
        child: Providers(
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Material App',
            // home: AuthService().handleAuth(),
            home: AuthService().handleAuth(),
            routes: {
              'login'                : (BuildContext context ) => LoginPage(),
              'header'               : (BuildContext context ) => HeaderProductos(),
              'home'                 : (BuildContext context ) => HomePage(),
              'sing in'              : (BuildContext context ) => SingInPage(),
              'domis'                : (BuildContext context ) => DomisRecibidosPage(),
              'productos'            : (BuildContext context ) => ProductosPage(),
              'info domi'            : (BuildContext context ) => InfoDomiPage(),
              'pedido'               : (BuildContext context ) => PedidoPage(),
              'ingredientes hambur'  : (BuildContext context ) => HamburgesasIngredientesPage(),
              'ingredientes perro'   : (BuildContext context ) => PerrosIngredientesPage(),
              'datosDomisilio'       : (BuildContext context ) => DatosDomicilio(),
              'confirmacionDomicilio': (BuildContext context ) => ConfirmacionDomicilio(),
              'esperandoConfirmacion': (BuildContext context ) => EsperandoConfimacionPage(),
              'introducirCodigo'     : (BuildContext context ) => IntroducirCodigoMsj()
            },
            theme: ThemeData(
              // primaryColor:  Color.fromRGBO(239 , 184, 16, 1),
              primaryColor: Colors.yellow
            ),
          )
        ),
      ),
    ); 
  }
}