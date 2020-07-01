
class HamburgesasIngredientesModels {

  List<HamburgesaIngredienteModel> items = new List();

  HamburgesasIngredientesModels();

  HamburgesasIngredientesModels.fromBoolList( List<dynamic> boolList ) {

    // if ( boolList == null ) return;

    // for ( var item in boolList ) {

    //   final model = new
    // }

  }
}


class HamburgesaIngredienteModel {

  List<bool> tomate ;
  List<bool> ensalda;
  List<bool> ripio; 
  List<bool> tocineta;
  List<bool> salsas;
  List<bool> queso;

  HamburgesaIngredienteModel({

    this.tomate,
    this.ensalda,
    this.ripio,
    this.tocineta,
    this.salsas,
    this.queso

  });

  // HamburgesaIngredienteModel.fromBoolList(  )

}