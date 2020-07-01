
import 'dart:convert';

HamburguesaModel hamburguesaModelFromJson(String str) => HamburguesaModel.fromJson(json.decode(str));

String hamburguesaModelToJson(HamburguesaModel data) => json.encode(data.toJson());

class HamburguesaModel {
    int especial;
    int superespecial;
    int trisuper;
    bool tomate;
    bool ensalada;
    bool ripio;
    bool tocineta;
    bool salsa;
    bool carne;
    bool queso;

    HamburguesaModel({
        this.especial,
        this.superespecial,
        this.trisuper,
        this.tomate,
        this.ensalada,
        this.ripio,
        this.tocineta,
        this.salsa,
        this.carne,
        this.queso,
    });

    factory HamburguesaModel.fromJson(Map<String, dynamic> json) => HamburguesaModel(
        especial     : json["especial"],
        superespecial: json["superespecial"],
        trisuper     : json["trisuper"],
        tomate       : json["tomate"],
        ensalada     : json["ensalada"],
        ripio        : json["ripio"],
        tocineta     : json["tocineta"],
        salsa        : json["salsa"],
        carne        : json["carne"],
        queso        : json["queso"],
    );

    Map<String, dynamic> toJson() => {
        "especial"     : especial,
        "superespecial": superespecial,
        "trisuper"     : trisuper,
        "tomate"       : tomate,
        "ensalada"     : ensalada,
        "ripio"        : ripio,
        "tocineta"     : tocineta,
        "salsa"        : salsa,
        "carne"        : carne,
        "queso"        : queso,
    };
}
