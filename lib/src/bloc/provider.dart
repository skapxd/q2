

import 'package:flutter/material.dart';
import 'package:q2/src/bloc/perros_ingredientes_bloc.dart';
import 'hamburgesa_ingredientes_bloc.dart';
import 'login_bloc.dart';
import 'producto_bloc.dart';




class Providers extends InheritedWidget {

  static Providers _instancia;

  factory Providers ({ Key key, Widget child }) {

    if ( _instancia == null ) {
      _instancia = new Providers._internal( key: key, child: child );
    }

    return _instancia;
  }

  Providers._internal( {Key key, Widget child} )
    : super( key: key, child: child);

  final loginBloc                  = LoginBloc();
  final productoBloc               = ProductoBloc();
  final hamburgesaIngredientesBloc = HamburgesaIngredientesBloc();
  final perroIngredienteBloc       = PerrosIngredientesBloc();

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;

  static LoginBloc of ( BuildContext context ) {

    return ( context.inheritFromWidgetOfExactType(Providers) as Providers).loginBloc;
  }

  static ProductoBloc ofProducto ( BuildContext context ) {

    return ( context.inheritFromWidgetOfExactType(Providers) as Providers).productoBloc;
  }

  static HamburgesaIngredientesBloc ofHamburgesasIngredientes ( BuildContext context ) {

    return ( context.inheritFromWidgetOfExactType(Providers) as Providers).hamburgesaIngredientesBloc;
  }

  static PerrosIngredientesBloc ofPerrosIngredientes ( BuildContext context ) {

    return ( context.inheritFromWidgetOfExactType(Providers) as Providers).perroIngredienteBloc;
  }
}