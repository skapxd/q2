
// import 'package:flutter/material.dart';
// import 'package:q2/src/bloc/login_bloc.dart';

// class TextFormField {
  
  
//   Widget _recibirNombre( LoginBloc bloc,  ) {

    // return StreamBuilder(
//       stream: bloc.nombreUsuario ,
//       builder: (BuildContext context, AsyncSnapshot snapshot){
        
//         return Container(
//         padding: EdgeInsets.symmetric( horizontal: 20 ),
//         child: SingleChildScrollView(
//           child: TextFormField(
//             enableInteractiveSelection: false,
//             keyboardType: TextInputType.text,
//             autofocus: false,
//             decoration: InputDecoration(
//               icon: Icon( Icons.person, color: Color.fromRGBO(161, 35, 18, 1)),
//               labelText: 'Nombre',
//               errorText: snapshot.error
//             ),

//             onSaved: ( value ) => cliente.nombre = value,
//             onChanged: bloc.changeNombre ,
//            ),
//         ),
//         );
//       },
//     );

  
//   Widget _recibirDireccion(LoginBloc bloc) {

//     return StreamBuilder(
//       stream: bloc.direccionUsuario ,
//       builder: (BuildContext context, AsyncSnapshot snapshot){
        
//         return Container(
//         padding: EdgeInsets.symmetric( horizontal: 20 ),
//         child: TextFormField(
//           keyboardType: TextInputType.text,
//           autofocus: false,
//           decoration: InputDecoration(
//             icon: Icon( Icons.pin_drop, color: Color.fromRGBO(161, 35, 18, 1)),
//             labelText: 'Direccion',
//             hintText: 'Cll ó Cr 00 # 00-00',
//             counterText: snapshot.data,
//             errorText: snapshot.error
//           ),

//           onSaved: ( value ) => cliente.direccion = value,
//           onChanged: bloc.changeDireccion ,
//          ),
//         );
//       },
//     );    
//   }

//   Widget _recibirBarrio(LoginBloc bloc) {

//     return StreamBuilder(
//       stream: bloc.barrioUsuario ,
//       builder: (BuildContext context, AsyncSnapshot snapshot){
        
//         return Container(
//         padding: EdgeInsets.symmetric( horizontal: 20 ),
//         child: TextFormField(
//           keyboardType: TextInputType.text,
//           autofocus: false,
//           decoration: InputDecoration(
//             icon: Icon( Icons.not_listed_location, color: Color.fromRGBO(161, 35, 18, 1)),
//             labelText: 'Barrio',
//             hintText: 'Nombre del barrio',
//             counterText: snapshot.data,
//             errorText: snapshot.error
//           ),

//           onSaved: ( value ) => cliente.barrio = value,
//           onChanged: bloc.changeBarrio,
//          ),
//         );
//       },
//     );
//   }

//   Widget _recibirDireccionOpcional(LoginBloc bloc) {

//     return StreamBuilder(
//       stream: bloc.emailStream ,
//       builder: (BuildContext context, AsyncSnapshot snapshot){
        
//         return Container(
//         padding: EdgeInsets.symmetric( horizontal: 20 ),
//         child: TextFormField(
//           keyboardType: TextInputType.text,
//           autofocus: false,
//           decoration: InputDecoration(
//             icon: Icon( Icons.home, color: Color.fromRGBO(161, 35, 18, 1)),
//             labelText: 'Nomenclatura Opcional',
//             hintText: 'Nombre y nomenclatura',
//             // errorText: snapshot.error
//           ),

//           onSaved: ( value ) => cliente.direccionOpcional = value,
//           onChanged: bloc.changeEmail ,
//          ),
//         );
//       },
//     );    
//   }

//   Widget _recibirMensajeOpcional( LoginBloc bloc ) {

//     return StreamBuilder(
//       stream: bloc.mensajeOpcionalUsuario ,
//       builder: (BuildContext context, AsyncSnapshot snapshot){
        
//         return Container(
//         padding: EdgeInsets.symmetric( horizontal: 20 ),
//         child: TextFormField(
//           maxLines: null,
//           keyboardType: TextInputType.multiline,
//           autofocus: false,
//           decoration: InputDecoration(
//             icon: Icon( Icons.textsms, color: Color.fromRGBO(161, 35, 18, 1)),
//             labelText: 'Mensaje Opcional',
//             // errorText: snapshot.error
//           ),

//           onSaved: ( value ) => cliente.mensajeOpcional = value,
//           onChanged: bloc.changeEmail ,
//          ),
//         );
//       },
//     );   
//   }


//   Widget _recibirTelefono( LoginBloc bloc ) {

//     return StreamBuilder(
//       stream: bloc.telefonoUsuario ,
//       builder: (BuildContext context, AsyncSnapshot snapshot){
//         return Container(
//           padding: EdgeInsets.symmetric( horizontal: 20 ),
          
//           child: TextFormField(
//             keyboardType: TextInputType.phone,
//             autofocus: false,
//             decoration: InputDecoration(
//               icon: Icon( Icons.add_call, color: Color.fromRGBO(161, 35, 18, 1)),
//               labelText: 'Teléfono',
//               hintText: '300 000 00 00',
//               errorText: snapshot.error,//'No es una contraseña valida'
//               counterText: snapshot.data,
//             ),

//             onSaved: ( value ) {

//               setState(() {
                
//               });

//               // cliente.telefono = value;
//               phoneNo = value;
//             },
//             onChanged: bloc.changeTelefono,
//           ),
//         );
//       },
//     );
//   }



// }