

class Cliente {

  int especial;    
    List  especialIngredienteTomate;
    List  especialIngredienteEnsalada;
    List  especialIngredienteRipio;
    List  especialIngredienteTocineta;
    List  especialIngredienteQueso;
    List  especialAdicionCarne;
    List  especialAdicionTocineta;
    List  especialAdicionQueso;
    List  especialAdicionEnsalada;

  int superespecial;
    List  superIngredienteTomate;
    List  superIngredienteEnsalada;
    List  superIngredienteRipio;
    List  superIngredienteTocineta;
    List  superIngredienteQueso;
    List  superAdicionCarne;
    List  superAdicionTocineta;
    List  superAdicionQueso;
    List  superAdicionEnsalada;

  int trisuper;
    List  trisuperIngredienteTomate;
    List  trisuperIngredienteEnsalada;
    List  trisuperIngredienteRipio;
    List  trisuperIngredienteTocineta;
    List  trisuperIngredienteQueso;
    List  trisuperAdicionCarne;
    List  trisuperAdicionTocineta;
    List  trisuperAdicionQueso;
    List  trisuperAdicionEnsalada;    

  // perro
  int perroGrandeTocineta;  
    List  perroGrandeTocinetaIngredienteEnsalada;
    List  perroGrandeTocinetaIngredienteRipio;
    List  perroGrandeTocinetaIngredienteTocineta;
    List  perroGrandeTocinetaIngredienteQueso;
    List  perroGrandeTocinetaAdicionTocineta;
    List  perroGrandeTocinetaAdicionQueso;
    List  perroGrandeTocinetaAdicionEnsalada;
    List  perroGrandeTocinetaAdicionSalchichaGrande;
    List  perroGrandeTocinetaAdicionSalchichaPequegna;

  int perroGrande;       
    List  perroGrandeIngredienteEnsalada;
    List  perroGrandeIngredienteRipio;
    List  perroGrandeIngredienteTocineta;
    List  perroGrandeIngredienteQueso;
    List  perroGrandeAdicionTocineta;
    List  perroGrandeAdicionQueso;
    List  perroGrandeAdicionEnsalada;
    List  perroGrandeAdicionSalchichaGrande;
    List  perroGrandeAdicionSalchichaPequegna;   

  int perroPequegnoTocineta;
    List perroPequegnoTocinetaIngredienteEnsalada;
    List  perroPequegnoTocinetaIngredienteRipio;
    List  perroPequegnoTocinetaIngredienteTocineta;
    List  perroPequegnoTocinetaIngredienteQueso;
    List  perroPequegnoTocinetaAdicionTocineta;
    List  perroPequegnoTocinetaAdicionQueso;
    List  perroPequegnoTocinetaAdicionEnsalada;
    List  perroPequegnoTocinetaAdicionSalchichaGrande;
    List  perroPequegnoTocinetaAdicionSalchichaPequegna; 

  int perroPequegno;    
    List  perroPequegnoIngredienteEnsalada;
    List  perroPequegnoIngredienteRipio;
    List  perroPequegnoIngredienteTocineta;
    List  perroPequegnoIngredienteQueso;
    List  perroPequegnoAdicionTocineta;
    List  perroPequegnoAdicionQueso;
    List  perroPequegnoAdicionEnsalada;
    List  perroPequegnoAdicionSalchichaGrande;
    List  perroPequegnoAdicionSalchichaPequegna;    
  // perra
  int grandePerra; 
    List  perraGrandeIngredienteEnsalada;
    List  perraGrandeIngredienteRipio;
    List  perraGrandeIngredienteQueso;
    List  perraGrandeAdicionTocineta;
    List  perraGrandeAdicionQueso;
    List  perraGrandeAdicionEnsalada;
    List  perraGrandeAdicionSalchichaGrande;
    List  perraGrandeAdicionSalchichaPequegna;

  int pequegnaPerra;
    List  perraPequegnaIngredienteEnsalada;
    List  perraPequegnaIngredienteRipio;
    List  perraPequegnaIngredienteQueso;
    List  perraPequegnaAdicionTocineta;
    List  perraPequegnaAdicionQueso;
    List  perraPequegnaAdicionEnsalada;
    List  perraPequegnaAdicionSalchichaGrande;
    List  perraPequegnaAdicionSalchichaPequegna;

  // datos domicilio
  String nombre ;
  String direccion ;
  String municipio;
  String barrio ; 
  String mensaje ;
  String telefono;

  Cliente({

    this.especial,
      this.especialIngredienteTomate,
      this.especialIngredienteEnsalada,
      this.especialIngredienteRipio,
      this.especialIngredienteTocineta,
      this.especialIngredienteQueso,
      this.especialAdicionCarne,
      this.especialAdicionTocineta,
      this.especialAdicionQueso,
      this.especialAdicionEnsalada,

    this.superespecial,
      this.superIngredienteTomate,
      this.superIngredienteEnsalada,
      this.superIngredienteRipio,
      this.superIngredienteTocineta,
      this.superIngredienteQueso,
      this.superAdicionCarne,
      this.superAdicionTocineta,
      this.superAdicionQueso,
      this.superAdicionEnsalada,
      
    this.trisuper,
      this.trisuperIngredienteTomate,
      this.trisuperIngredienteEnsalada,
      this.trisuperIngredienteRipio,
      this.trisuperIngredienteTocineta,
      this.trisuperIngredienteQueso,
      this.trisuperAdicionCarne,
      this.trisuperAdicionTocineta,
      this.trisuperAdicionQueso,
      this.trisuperAdicionEnsalada,

    this.perroGrandeTocineta,
      this.perroGrandeTocinetaIngredienteEnsalada,
      this.perroGrandeTocinetaIngredienteRipio,
      this.perroGrandeTocinetaIngredienteTocineta,
      this.perroGrandeTocinetaIngredienteQueso,
      this.perroGrandeTocinetaAdicionTocineta,
      this.perroGrandeTocinetaAdicionQueso,
      this.perroGrandeTocinetaAdicionEnsalada,
      this.perroGrandeTocinetaAdicionSalchichaGrande,
      this.perroGrandeTocinetaAdicionSalchichaPequegna,

    this.perroGrande,
      this.perroGrandeIngredienteEnsalada,
      this.perroGrandeIngredienteRipio,
      this.perroGrandeIngredienteTocineta,
      this.perroGrandeIngredienteQueso,
      this.perroGrandeAdicionTocineta,
      this.perroGrandeAdicionQueso,
      this.perroGrandeAdicionEnsalada,
      this.perroGrandeAdicionSalchichaGrande,
      this.perroGrandeAdicionSalchichaPequegna,

    this.perroPequegnoTocineta,
      this.perroPequegnoTocinetaIngredienteEnsalada,
      this.perroPequegnoTocinetaIngredienteRipio,
      this.perroPequegnoTocinetaIngredienteTocineta,
      this.perroPequegnoTocinetaIngredienteQueso,
      this.perroPequegnoTocinetaAdicionTocineta,
      this.perroPequegnoTocinetaAdicionQueso,
      this.perroPequegnoTocinetaAdicionEnsalada,
      this.perroPequegnoTocinetaAdicionSalchichaGrande,
      this.perroPequegnoTocinetaAdicionSalchichaPequegna,

    this.perroPequegno,
      this.perroPequegnoIngredienteEnsalada,
      this.perroPequegnoIngredienteRipio,
      this.perroPequegnoIngredienteTocineta,
      this.perroPequegnoIngredienteQueso,
      this.perroPequegnoAdicionTocineta,
      this.perroPequegnoAdicionQueso,
      this.perroPequegnoAdicionEnsalada,
      this.perroPequegnoAdicionSalchichaGrande,
      this.perroPequegnoAdicionSalchichaPequegna,

    this.grandePerra,
      this.perraGrandeIngredienteEnsalada,
      this.perraGrandeIngredienteRipio,
      this.perraGrandeIngredienteQueso,
      this.perraGrandeAdicionTocineta,
      this.perraGrandeAdicionQueso,
      this.perraGrandeAdicionEnsalada,
      this.perraGrandeAdicionSalchichaGrande,
      this.perraGrandeAdicionSalchichaPequegna,

    this.pequegnaPerra,
      this.perraPequegnaIngredienteEnsalada,
      this.perraPequegnaIngredienteRipio,
      this.perraPequegnaIngredienteQueso,
      this.perraPequegnaAdicionTocineta,
      this.perraPequegnaAdicionQueso,
      this.perraPequegnaAdicionEnsalada,
      this.perraPequegnaAdicionSalchichaGrande,
      this.perraPequegnaAdicionSalchichaPequegna,

    this.nombre,
    this.direccion,
    this.mensaje,
    this.barrio,
    // this.mensaje,
    this.telefono
  });
}