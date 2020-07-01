import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:q2/src/models/cliente.dart';

class DatabaseService {

  final String tlf;
  DatabaseService({ this.tlf });
  
  // collection reference
  CollectionReference cejaCollection = Firestore.instance.collection('La ceja');

  // Future deleteUserData() async{

  //   await cejaCollection.document(tlf).
  // }


  // Subir datos
  Future updateUserData({
    int especial      ,
    int superespecial ,
    int trisuper      ,
    // perro
    int perroGrandeTocineta    ,
    int perroGrande            ,
    int perroPequegnoTocineta  ,
    int perroPequegno          ,
    // perra
    int grandePerra   ,
    int pequegnaPerra ,
    // datos domicilio
    String nombre,
    String direccion,
    String barrio, 
    String mensaje,
    String telefono

  }) async {
    await cejaCollection.document(tlf).setData({
      'especial': especial,
      'super'   : superespecial,
      'trisuper': trisuper,
      // perro
      'perroGrandeTocineta'  :  perroGrandeTocineta,
      'perroGrande'          :  perroGrande,
      'perroPequegnoTocineta':  perroPequegnoTocineta,
      'perroPequegno'        :  perroPequegno,
      // perra
      'grandePerra'  : grandePerra,
      'pequegnaPerra': pequegnaPerra,
      // datos domicilio
      'nombre'    : nombre,
      'dirección' : direccion,
      'barrio'    : barrio,
      'mensaje'   : mensaje,
      'telefono'  : telefono
    });
  }

  // Extraer datos
  List<Cliente> _listaDeProductosCliente(QuerySnapshot snapshot) {

    return snapshot.documents.map((doc){
      return Cliente(
        especial      : doc.data['especial'] ?? 0,
        superespecial : doc.data['super'] ?? 0,
        trisuper      : doc.data['trisuper'] ?? 0,
        // perros
        perroGrandeTocineta   : doc.data['perroGrandeTocineta'] ?? 0,
        perroGrande           : doc.data['perroGrande'] ?? 0,
        perroPequegnoTocineta : doc.data['perroPequegnoTocineta'] ?? 0,
        perroPequegno         : doc.data['perroPequegno'] ?? 0,
        // perra
        grandePerra   : doc.data['grandePerra'] ?? 0,
        pequegnaPerra : doc.data['pequegnaPerra'] ?? 0,
        // datos domicilio
        nombre    : doc.data['nombre'] ?? '',
        direccion : doc.data['dirección'] ?? '',
        barrio    : doc.data['barrio'] ?? '',
        mensaje   : doc.data['mensaje'] ?? '',
        telefono  : doc.data['telefono'] 
      );
    }).toList();
  }

  Stream<List<Cliente>> get clientesCeja {

    return cejaCollection.snapshots()
      .map(_listaDeProductosCliente);
  }
}