
import 'package:flutter/material.dart';
import 'package:q2/src/bloc/login_bloc.dart';
import 'package:q2/src/bloc/provider.dart';
import 'package:q2/src/models/cliente_model.dart';

class DatosDomicilio extends StatefulWidget {
  @override
  _DatosDomicilioState createState() => _DatosDomicilioState();
}

class _DatosDomicilioState extends State<DatosDomicilio> {

  final formKey = GlobalKey<FormState>();
  ClienteModel cliente = new ClienteModel();

  bool info = false;

  String _opcionSeleccionada = '';
  List<String> _municipios = ['', 'La Ceja', 'Rionegro', 'Marinilla'];

  @override
  Widget build(BuildContext context) {

    final bloc = Providers.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Datos de domicilio'),
        backgroundColor: Colors.white,
        elevation: 0.5,
        leading: IconButton(
          icon: Icon(Icons.arrow_back), 
          onPressed: () {
            Navigator.pop(context);
            // bloc.dispouseForm();
          }
        ),
      ),

      floatingActionButton: StreamBuilder<Object>(
        stream: bloc.fromValidStreamDomicilio,
        builder: (context, snapshot) {

          return FloatingActionButton(

            // onPressed: null,
            onPressed: snapshot.hasData ? (){



              Navigator.pushNamed(context, 'confirmacionDomicilio');
              _guardarDatosDomicilio(bloc);
              // print(ClienteModel().getnombre);

            } : null,
            backgroundColor: snapshot.hasData ? Color.fromRGBO(161, 35, 18, 1) : Colors.blueGrey,
            child: Icon(
              Icons.navigate_next,
              size: 50,
            ),
          );
        }
      ),
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
          primary: false,
          child: Column(
            children: <Widget>[

              _recibirNombre(bloc),

              _recibirMunicipio(bloc),

              _recibirDireccion(bloc),

              _recibirBarrio(bloc),

              _recibirMensajeOpcional(bloc)
              
            ],
          ),
        ) 
      )
    );
  }



  Widget _recibirNombre( LoginBloc bloc,  ) {

    return StreamBuilder(
      stream: bloc.nombreUsuario ,
      builder: (BuildContext context, AsyncSnapshot snapshot){
        
        return Container(
          padding: EdgeInsets.symmetric( horizontal: 25 ),
          child: Column(
            children: <Widget>[

              SizedBox(height: 10,),
              
              TextFormField(
                enableInteractiveSelection: false,
                keyboardType: TextInputType.text,
                autofocus: false,
                decoration: InputDecoration(
                  icon: Icon( Icons.person, color: Color.fromRGBO(161, 35, 18, 1)),
                  labelText: 'Nombre',
                  errorText: snapshot.error
                ),

                onSaved: ( value ) => cliente.nombre = value,
                // onChanged: bloc.changeNombre ,
                onChanged: (val) {

                  bloc.changeNombre(val);

                },
              ),

              SizedBox(height: 20,),
            ],
          ),
        );
      },
    );
  }

  _guardarDatosDomicilio(LoginBloc bloc){

    // return ClienteModel(
    //   nombre:           bloc.nombre,
    //   municipio:        bloc.municipio,
    //   direccion:        bloc.direccion,
    //   barrio:           bloc.barrio,
    //   mensajeOpcional:  bloc.mensaje,

    // );

  }



  Widget _recibirMunicipio(LoginBloc bloc) {

    return StreamBuilder<Object>(
      stream: bloc.municipioUsuario,
      builder: (context, snapshot) {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: <Widget>[
              Icon(Icons.toc, color: Color.fromRGBO(161, 35, 18, 1)),
              SizedBox(width: 30.0,),
              Expanded(
                child: DropdownButton(
                  value: _opcionSeleccionada,
                  isExpanded: true,
                  items: getOpcionesDropdown(), 
                  onChanged: (opt) {
                    setState(() {
                      _opcionSeleccionada = opt;
                      bloc.changeMunicipio(opt);
                      print(opt);
                    });
                  },

                ),
              ),
            ],
          ),
        );
      }
    );
  }



  Widget _recibirDireccion(LoginBloc bloc) {

    return StreamBuilder(
      stream: bloc.direccionUsuario ,
      builder: (BuildContext context, AsyncSnapshot snapshot){
        
        return Container(
        padding: EdgeInsets.symmetric( horizontal: 20 ),
        child: Column(
          children: <Widget>[
            SizedBox(height: 10,),
            TextFormField(
              keyboardType: TextInputType.text,
              autofocus: false,
              decoration: InputDecoration(
                icon: Icon( Icons.pin_drop, color: Color.fromRGBO(161, 35, 18, 1)),
                labelText: 'Direccion',
                hintText: 'Cll ó Cr 00 # 00-00',
                // counterText: snapshot.data,
                errorText: snapshot.error
              ),

              onSaved: ( value ) => cliente.direccion = value,
              onChanged: bloc.changeDireccion ,
            ),

            SizedBox(height: 10,),
          ],
        ),
        );
      },
    );    
  }



  Widget _recibirBarrio(LoginBloc bloc) {

    return StreamBuilder(
      stream: bloc.barrioUsuario ,
      builder: (BuildContext context, AsyncSnapshot snapshot){
        
        return Column(
          
          children: <Widget>[
            SizedBox(height: 10,),
            Container(
            padding: EdgeInsets.symmetric( horizontal: 20 ),
            child: TextFormField(
              keyboardType: TextInputType.text,
              autofocus: false,
              decoration: InputDecoration(
                icon: Icon( Icons.not_listed_location, color: Color.fromRGBO(161, 35, 18, 1)),
                labelText: 'Barrio',
                hintText: 'Nombre del barrio',
                // counterText: snapshot.data,
                errorText: snapshot.error
              ),

              onSaved: ( value ) => cliente.barrio = value,
              onChanged: bloc.changeBarrio,
             ),
            ),

            SizedBox(height: 10,),
          ],
        );
      },
    );
  }



  Widget _recibirMensajeOpcional( LoginBloc bloc ) {

    return StreamBuilder(
      stream: bloc.mensajeOpcionalUsuario ,
      builder: (BuildContext context, AsyncSnapshot snapshot){
        
        return Container(
        padding: EdgeInsets.symmetric( horizontal: 20 ),
        child: TextFormField(
          maxLines: null,
          keyboardType: TextInputType.multiline,
          autofocus: false,
          decoration: InputDecoration(
            icon: Icon( Icons.textsms, color: Color.fromRGBO(161, 35, 18, 1)),
            labelText: 'Mensaje Opcional',
            // errorText: snapshot.error
          ),

          onSaved: ( value ) => cliente.mensajeOpcional = value,
          onChanged: bloc.changeMensajeOpcional ,
         ),
        );
      },
    );   
  }



  List<DropdownMenuItem<String>> getOpcionesDropdown() {

    List<DropdownMenuItem<String>> lista = new List();

    _municipios.forEach( (poder) {

      lista.add( DropdownMenuItem(
        child: Text(poder),
        value: poder,

      ));

    });

    return lista;
  }

}