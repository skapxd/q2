
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:q2/src/models/cliente_model.dart';


class ClienteProvider {

  final String _url = 'https://q2-mas-que-queso.firebaseio.com';



  Future<bool> crearCliente ( ClienteModel cliente ) async {

    final url         = '$_url/cliente.json';
    final urlRespaldo = '$_url/respaldo.json';

    final respuesta = await http.post(    url    , body: clienteModelToJson( cliente ));
    final respaldo  = await http.post(urlRespaldo, body: clienteModelToJson( cliente ));


    final decodeData = json.decode(respuesta.body);

    print ( decodeData );

    return true;

  }



  Future<List<ClienteModel>> cargarCliente() async {

    final url  = '$_url/cliente.json';
    final respuesta = await http.get(url);

    final Map<String, dynamic> decodedData = json.decode(respuesta.body);
    final List<ClienteModel> cliente = new List();
    // print(decodedData);

    if ( decodedData == null) return [];

    // el id del forEach hace referencia al identificador de cada cliente guardado
    decodedData.forEach( ( id, info ){ 

      // print(prod);
  
      final clientTemp = ClienteModel.fromJson( info );

      // el id de "clientTemp.id" hace referencia al id del modelo de cliente
      clientTemp.id = id;

      cliente.add( clientTemp );

    });

    // print( cliente[1].id );

    return cliente;
  }



  Future<List<ClienteModel>> cargarRespaldo() async {

    final url  = '$_url/respaldo.json';
    final respuesta = await http.get(url);

    final Map<String, dynamic> decodedData = json.decode(respuesta.body);
    final List<ClienteModel> cliente = new List();
    // print(decodedData);

    if ( decodedData == null) return [];

    // el id del forEach hace referencia al identificador de cada cliente guardado
    decodedData.forEach( ( id, info ){ 

      // print(prod);
  
      final clientTemp = ClienteModel.fromJson( info );

      // el id de "clientTemp.id" hace referencia al id del modelo de cliente
      clientTemp.id = id;

      cliente.add( clientTemp );

    });

    // print( cliente[1].id );

    return cliente;
  }



  Future<int> borrarCliente( String id ) async {

    final url  = '$_url/cliente/$id.json';
    final resp = await http.delete(url);

    // print( json.decode(resp.body) );

    return 1;
  }



    Future<List> borrarRespaldo(  ) async {

    final url  = '$_url/respaldo.json';
    final respuesta = await http.get(url);

    final Map<String, dynamic> decodedData = json.decode(respuesta.body);
    final List<ClienteModel> respaldo = new List();

    if ( decodedData == null) return [];

    // el id del forEach hace referencia al identificador de cada cliente guardado
    decodedData.forEach( ( id, info ) async { 

      final resp = await http.delete(id);

    });

    // print( cliente[1].id );

     return respaldo;
  }
}