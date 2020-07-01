import 'dart:convert';

ClienteModel clienteModelFromJson(String str) => ClienteModel.fromJson(json.decode(str));

String clienteModelToJson(ClienteModel data) => json.encode(data.toJson());

class ClienteModel {
    String id;
    String nombre;
    String telefono;
    String direccion;
    String barrio;
    String municipio;
    String direccionOpcional;
    String mensajeOpcional;

    ClienteModel({
        this.id,
        this.nombre,
        this.telefono,
        this.direccion,
        this.barrio,
        this.municipio,
        this.direccionOpcional,
        this.mensajeOpcional,
    });

  factory ClienteModel.fromJson(Map<String, dynamic> json) => ClienteModel(
    id                : json["id"], 
    nombre            : json["nombre"],
    telefono          : json["telefono"],
    direccion         : json["direccion"],
    barrio            : json["barrio"],
    direccionOpcional : json["direccionOpcional"],
    mensajeOpcional   : json["mensajeOpcional"],
  );

  Map<String, dynamic> toJson() => {
    "id"                : id,
    "nombre"            : nombre,
    "telefono"          : telefono,
    "direccion"         : direccion,
    "barrio"            : barrio,
    "direccionOpcional" : direccionOpcional,
    "mensajeOpcional"   : mensajeOpcional,
  };

}
