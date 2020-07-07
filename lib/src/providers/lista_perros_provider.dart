import 'package:flutter/material.dart';

class ListaPerro with ChangeNotifier {

  // Perro Grande Con Tocineta
  
    // Ingredientes
    List<int> _perroGrandeTocinetaIngredienteEnsalada       = List.filled(10, 2);
    List<int> _perroGrandeTocinetaIngredienteRipio          = List.filled(10, 2);
    List<int> _perroGrandeTocinetaIngredienteTocineta       = List.filled(10, 2);
    List<int> _perroGrandeTocinetaIngredienteQueso          = List.filled(10, 2);

    // Adiciones
    List<int> _perroGrandeTocinetaAdicionTocineta           = List.filled(11, 0);
    List<int> _perroGrandeTocinetaAdicionQueso              = List.filled(11, 0);
    List<int> _perroGrandeTocinetaAdicionEnsalada           = List.filled(11, 0);

    List<int> _perroGrandeTocinetaAdicionSalchichaGrande    = List.filled(11, 0);
    List<int> _perroGrandeTocinetaAdicionSalchichaPequegna  = List.filled(11, 0);

    // Obtener Ingredientes 
    get perroGrandeTocinetaIngredienteEnsalada => _perroGrandeTocinetaIngredienteEnsalada;

    get perroGrandeTocinetaIngredienteRipio => _perroGrandeTocinetaIngredienteRipio;

    get perroGrandeTocinetaIngredienteTocineta => _perroGrandeTocinetaIngredienteTocineta;

    get perroGrandeTocinetaIngredienteQueso => _perroGrandeTocinetaIngredienteQueso;

    // Obtener Adiciones
    get perroGrandeTocinetaAdicionTocineta => _perroGrandeTocinetaAdicionTocineta;

    get perroGrandeTocinetaAdicionQueso => _perroGrandeTocinetaAdicionQueso;

    get perroGrandeTocinetaAdicionEnsalada => _perroGrandeTocinetaAdicionEnsalada;

    get perroGrandeTocinetaAdicionSalchichaGrande => _perroGrandeTocinetaAdicionSalchichaGrande;

    get perroGrandeTocinetaAdicionSalchichaPequegna => _perroGrandeTocinetaAdicionSalchichaPequegna;
 
    // Insertar Ingredientes
    set perroGrandeTocinetaIngredienteEnsalada(  List<int> ingredientes  ) {
      
      this._perroGrandeTocinetaIngredienteEnsalada = ingredientes;
      notifyListeners();

    }        
    
    set perroGrandeTocinetaIngredienteRipio( List<int> ingredientes  ) {
      
      this._perroGrandeTocinetaIngredienteRipio = ingredientes;
      notifyListeners();

    }        
    
    set perroGrandeTocinetaIngredienteTocineta(  List<int> ingredientes  ) {
      
      this._perroGrandeTocinetaIngredienteTocineta = ingredientes;
      notifyListeners();

    }        

    set perroGrandeTocinetaIngredienteQueso( List<int> ingredientes  ) {
      
      this._perroGrandeTocinetaIngredienteQueso = ingredientes;
      notifyListeners();
    }        

    // Insertar Adiciones
    set perroGrandeTocinetaAdicionTocineta(  List<int> adiciones  ) {
      
      this._perroGrandeTocinetaAdicionTocineta = adiciones;
      notifyListeners();
    }        
    
    set perroGrandeTocinetaAdicionEnsalada( List<int> adiciones  ) {
      
      this._perroGrandeTocinetaAdicionEnsalada = adiciones;
      notifyListeners();
    }        
    
    set perroGrandeTocinetaAdicionQueso(  List<int> adiciones  ) {
      
      this._perroGrandeTocinetaAdicionQueso = adiciones;
      notifyListeners();
  }         

    set perroGrandeTocinetaAdicionSalchichaGrande( List<int> adiciones ) {

      this._perroGrandeTocinetaAdicionSalchichaGrande = adiciones;
      notifyListeners();
    }

    set perroGrandeTocinetaAdicionSalchichaPequegna( List<int> adiciones) {

      this._perroGrandeTocinetaAdicionSalchichaPequegna = adiciones;
      notifyListeners();
    }

  // Perro Grande
    // Ingredientes
    List<int> _perroGrandeIngredienteEnsalada       = List.filled(10, 2);
    List<int> _perroGrandeIngredienteRipio          = List.filled(10, 2);
    List<int> _perroGrandeIngredienteTocineta       = List.filled(10, 2);
    List<int> _perroGrandeIngredienteQueso          = List.filled(10, 2);

    // Adiciones
    List<int> _perroGrandeAdicionTocineta           = List.filled(11, 0);
    List<int> _perroGrandeAdicionQueso              = List.filled(11, 0);
    List<int> _perroGrandeAdicionEnsalada           = List.filled(11, 0);

    List<int> _perroGrandeAdicionSalchichaGrande    = List.filled(11, 0);
    List<int> _perroGrandeAdicionSalchichaPequegna  = List.filled(11, 0);

    // Obtener Ingredientes 
    get perroGrandeIngredienteEnsalada => _perroGrandeIngredienteEnsalada;

    get perroGrandeIngredienteRipio => _perroGrandeIngredienteRipio;

    get perroGrandeIngredienteTocineta => _perroGrandeIngredienteTocineta;

    get perroGrandeIngredienteQueso => _perroGrandeIngredienteQueso;

    // Obtener Adiciones
    get perroGrandeAdicionTocineta => _perroGrandeAdicionTocineta;

    get perroGrandeAdicionQueso => _perroGrandeAdicionQueso;

    get perroGrandeAdicionEnsalada => _perroGrandeAdicionEnsalada;

    get perroGrandeAdicionSalchichaGrande => _perroGrandeAdicionSalchichaGrande;

    get perroGrandeAdicionSalchichaPequegna => _perroGrandeAdicionSalchichaPequegna;

    // Insertar Ingredientes
    set perroGrandeIngredienteEnsalada(  List<int> ingredientes  ) {
      
      this._perroGrandeIngredienteEnsalada = ingredientes;
      notifyListeners();

    }        
    
    set perroGrandeIngredienteRipio( List<int> ingredientes  ) {
      
      this._perroGrandeIngredienteRipio = ingredientes;
      notifyListeners();

    }        
    
    set perroGrandeIngredienteTocineta(  List<int> ingredientes  ) {
      
      this._perroGrandeIngredienteTocineta = ingredientes;
      notifyListeners();

    }        

    set perroGrandeIngredienteQueso( List<int> ingredientes  ) {
      
      this._perroGrandeIngredienteQueso = ingredientes;
      notifyListeners();
    }        

    // Insertar Adiciones
    set perroGrandeAdicionTocineta(  List<int> adiciones  ) {
      
      this._perroGrandeAdicionTocineta = adiciones;
      notifyListeners();
    }        
    
    set perroGrandeAdicionEnsalada( List<int> adiciones  ) {
      
      this._perroGrandeAdicionEnsalada = adiciones;
      notifyListeners();
    }        
    
    set perroGrandeAdicionQueso(  List<int> adiciones  ) {
      
      this._perroGrandeAdicionQueso = adiciones;
      notifyListeners();
  }         

    set perroGrandeAdicionSalchichaGrande( List<int> adiciones ) {

      this._perroGrandeAdicionSalchichaGrande = adiciones;
      notifyListeners();
    }

    set perroGrandeAdicionSalchichaPequegna( List<int> adiciones) {

      this._perroGrandeAdicionSalchichaPequegna = adiciones;
      notifyListeners();
    }
// Perro Pequeño Con Tocineta
    // Ingredientes
    List<int> _perroPequegnoTocinetaIngredienteEnsalada       = List.filled(10, 2);
    List<int> _perroPequegnoTocinetaIngredienteRipio          = List.filled(10, 2);
    List<int> _perroPequegnoTocinetaIngredienteTocineta       = List.filled(10, 2);
    List<int> _perroPequegnoTocinetaIngredienteQueso          = List.filled(10, 2);

    // Adiciones
    List<int> _perroPequegnoTocinetaAdicionTocineta           =  List.filled(11, 0);
    List<int> _perroPequegnoTocinetaAdicionQueso              =  List.filled(11, 0);
    List<int> _perroPequegnoTocinetaAdicionEnsalada           =  List.filled(11, 0);

    List<int> _perroPequegnoTocinetaAdicionSalchichaGrande    = List.filled(11, 0);
    List<int> _perroPequegnoTocinetaAdicionSalchichaPequegna  = List.filled(11, 0);

    // Obtener Ingredientes 
    get perroPequegnoTocinetaIngredienteEnsalada => _perroPequegnoTocinetaIngredienteEnsalada;

    get perroPequegnoTocinetaIngredienteRipio => _perroPequegnoTocinetaIngredienteRipio;

    get perroPequegnoTocinetaIngredienteTocineta => _perroPequegnoTocinetaIngredienteTocineta;

    get perroPequegnoTocinetaIngredienteQueso => _perroPequegnoTocinetaIngredienteQueso;

    // Obtener Adiciones

    get perroPequegnoTocinetaAdicionTocineta => _perroPequegnoTocinetaAdicionTocineta;

    get perroPequegnoTocinetaAdicionQueso => _perroPequegnoTocinetaAdicionQueso;

    get perroPequegnoTocinetaAdicionEnsalada => _perroPequegnoTocinetaAdicionEnsalada;

    get perroPequegnoTocinetaAdicionSalchichaGrande => _perroPequegnoTocinetaAdicionSalchichaGrande;

    get perroPequegnoTocinetaAdicionSalchichaPequegna => _perroPequegnoTocinetaAdicionSalchichaPequegna;

    // Insertar Ingredientes
    set perroPequegnoTocinetaIngredienteEnsalada(  List<int> ingredientes  ) {
      
      this._perroPequegnoTocinetaIngredienteEnsalada = ingredientes;
      notifyListeners();
    }        
    
    set perroPequegnoTocinetaIngredienteRipio( List<int> ingredientes  ) {
      
      this._perroPequegnoTocinetaIngredienteRipio = ingredientes;
      notifyListeners();
    }        
    
    set perroPequegnoTocinetaIngredienteTocineta(  List<int> ingredientes  ) {
      
      this._perroPequegnoTocinetaIngredienteTocineta = ingredientes;
      notifyListeners();
    }        

    set perroPequegnoTocinetaIngredienteQueso( List<int> ingredientes  ) {
      
      this._perroPequegnoTocinetaIngredienteQueso = ingredientes;
      notifyListeners();
    }        

    // Insertar Adiciones
    set perroPequegnoTocinetaAdicionTocineta(  List<int> adiciones  ) {
      
      this._perroPequegnoTocinetaAdicionTocineta = adiciones;
      notifyListeners();
    }        
    
    set perroPequegnoTocinetaAdicionEnsalada( List<int> adiciones  ) {
      
      this._perroPequegnoTocinetaAdicionEnsalada = adiciones;
      notifyListeners();
    }        
    
    set perroPequegnoTocinetaAdicionQueso(  List<int> adiciones  ) {
      
      this._perroPequegnoTocinetaAdicionQueso = adiciones;
      notifyListeners();
  }         

    set perroPequegnoTocinetaAdicionSalchichaGrande( List<int> adiciones ) {

      this._perroPequegnoTocinetaAdicionSalchichaGrande = adiciones;
      notifyListeners();
    }

    set perroPequegnoTocinetaAdicionSalchichaPequegna( List<int> adiciones) {

      this._perroPequegnoTocinetaAdicionSalchichaPequegna = adiciones;
      notifyListeners();
    }

// Perro Pequegno
    // Ingredientes
    List<int> _perroPequegnoIngredienteEnsalada       = List.filled(10, 2);
    List<int> _perroPequegnoIngredienteRipio          = List.filled(10, 2);
    List<int> _perroPequegnoIngredienteTocineta       = List.filled(10, 2);
    List<int> _perroPequegnoIngredienteQueso          = List.filled(10, 2);

    // Adiciones
    List<int> _perroPequegnoAdicionTocineta           = List.filled(11, 0);
    List<int> _perroPequegnoAdicionQueso              = List.filled(11, 0);
    List<int> _perroPequegnoAdicionEnsalada           = List.filled(11, 0);

    List<int> _perroPequegnoAdicionSalchichaGrande    = List.filled(11, 0);
    List<int> _perroPequegnoAdicionSalchichaPequegna  = List.filled(11, 0);

    // Obtener Ingredientes 
    get perroPequegnoIngredienteEnsalada => _perroPequegnoIngredienteEnsalada;

    get perroPequegnoIngredienteRipio => _perroPequegnoIngredienteRipio;

    get perroPequegnoIngredienteTocineta => _perroPequegnoIngredienteTocineta;

    get perroPequegnoIngredienteQueso => _perroPequegnoIngredienteQueso;

    // Obtener Adiciones

    get perroPequegnoAdicionTocineta => _perroPequegnoAdicionTocineta;

    get perroPequegnoAdicionQueso => _perroPequegnoAdicionQueso;

    get perroPequegnoAdicionEnsalada => _perroPequegnoAdicionEnsalada;

    get perroPequegnoAdicionSalchichaGrande => _perroPequegnoAdicionSalchichaGrande;

    get perroPequegnoAdicionSalchichaPequegna => _perroPequegnoAdicionSalchichaPequegna;

    // Insertar Ingredientes
    set perroPequegnoIngredienteEnsalada(  List<int> ingredientes  ) {
      
      this._perroPequegnoIngredienteEnsalada = ingredientes;
      notifyListeners();
    }        
    
    set perroPequegnoIngredienteRipio( List<int> ingredientes  ) {
      
      this._perroPequegnoIngredienteRipio = ingredientes;
      notifyListeners();
    }        
    
    set perroPequegnoIngredienteTocineta(  List<int> ingredientes  ) {
      
      this._perroPequegnoIngredienteTocineta = ingredientes;
      notifyListeners();
    }        

    set perroPequegnoIngredienteQueso( List<int> ingredientes  ) {
      
      this._perroPequegnoIngredienteQueso = ingredientes;
      notifyListeners();
    }        

    // Insertar Adiciones
    
    set perroPequegnoAdicionTocineta(  List<int> adiciones  ) {
      
      this._perroPequegnoAdicionTocineta = adiciones;
      notifyListeners();
    }        
    
    set perroPequegnoAdicionEnsalada( List<int> adiciones  ) {
      
      this._perroPequegnoAdicionEnsalada = adiciones;
      notifyListeners();
    }        
    
    set perroPequegnoAdicionQueso(  List<int> adiciones  ) {
      
      this._perroPequegnoAdicionQueso = adiciones;
      notifyListeners();
    }         

    set perroPequegnoAdicionSalchichaGrande( List<int> adiciones ) {

      this._perroPequegnoAdicionSalchichaGrande = adiciones;
      notifyListeners();
    }

    set perroPequegnoAdicionSalchichaPequegna( List<int> adiciones) {

      this._perroPequegnoAdicionSalchichaPequegna = adiciones;
      notifyListeners();
    }

// Perra Grande
    // Ingredientes
    List<int> _perraGrandeIngredienteEnsalada       = List.filled(10, 2);
    List<int> _perraGrandeIngredienteRipio          = List.filled(10, 2);
    List<int> _perraGrandeIngredienteQueso          = List.filled(10, 2);

    // Adiciones
    List<int> _perraGrandeAdicionTocineta           = List.filled(11, 0);
    List<int> _perraGrandeAdicionQueso              = List.filled(11, 0);
    List<int> _perraGrandeAdicionEnsalada           = List.filled(11, 0);

    List<int> _perraGrandeAdicionSalchichaGrande    = List.filled(11, 0);
    List<int> _perraGrandeAdicionSalchichaPequegna  = List.filled(11, 0);

    // Obtener Ingredientes 
    get perraGrandeIngredienteEnsalada => _perraGrandeIngredienteEnsalada;

    get perraGrandeIngredienteRipio => _perraGrandeIngredienteRipio;

    get perraGrandeIngredienteQueso => _perraGrandeIngredienteQueso;

    // Obtener Adiciones
    get perraGrandeAdicionTocineta => _perraGrandeAdicionTocineta;

    get perraGrandeAdicionQueso => _perraGrandeAdicionQueso;

    get perraGrandeAdicionEnsalada => _perraGrandeAdicionEnsalada;

    get perraGrandeAdicionSalchichaGrande => _perraGrandeAdicionSalchichaGrande;

    get perraGrandeAdicionSalchichaPequegna => _perraGrandeAdicionSalchichaPequegna;

    // Insertar Ingredientes
    set perraGrandeIngredienteEnsalada(  List<int> ingredientes  ) {
      
      this._perraGrandeIngredienteEnsalada = ingredientes;
      notifyListeners();
    }        
    
    set perraGrandeIngredienteRipio( List<int> ingredientes  ) {
      
      this._perraGrandeIngredienteRipio = ingredientes;
      notifyListeners();
    }        

    set perraGrandeIngredienteQueso( List<int> ingredientes  ) {
      
      this._perraGrandeIngredienteQueso = ingredientes;
      notifyListeners();
    }        

    // Insertar Adiciones
    
    set perraGrandeAdicionTocineta(  List<int> adiciones  ) {
      
      this._perraGrandeAdicionTocineta = adiciones;
      notifyListeners();
    }        
    
    set perraGrandeAdicionEnsalada( List<int> adiciones  ) {
      
      this._perraGrandeAdicionEnsalada = adiciones;
      notifyListeners();
    }        
    
    set perraGrandeAdicionQueso(  List<int> adiciones  ) {
      
      this._perraGrandeAdicionQueso = adiciones;
      notifyListeners();
    }         

    set perraGrandeAdicionSalchichaGrande( List<int> adiciones ) {

      this._perraGrandeAdicionSalchichaGrande = adiciones;
      notifyListeners();
    }

    set perraGrandeAdicionSalchichaPequegna( List<int> adiciones) {

      this._perraGrandeAdicionSalchichaPequegna = adiciones;
      notifyListeners();
    }

  
// Perra Pequeña
    // Ingredientes
    List<int> _perraPequegnaIngredienteEnsalada       = List.filled(10, 2);
    List<int> _perraPequegnaIngredienteRipio          = List.filled(10, 2);
    List<int> _perraPequegnaIngredienteQueso          = List.filled(10, 2);

    // Adiciones
    List<int> _perraPequegnaAdicionTocineta           = List.filled(11, 0);
    List<int> _perraPequegnaAdicionQueso              = List.filled(11, 0);
    List<int> _perraPequegnaAdicionEnsalada           = List.filled(11, 0);

    List<int> _perraPequegnaAdicionSalchichaGrande    = List.filled(11, 0);
    List<int> _perraPequegnaAdicionSalchichaPequegna  = List.filled(11, 0);

    // Obtener Ingredientes 
    get perraPequegnaIngredienteEnsalada => _perraPequegnaIngredienteEnsalada;

    get perraPequegnaIngredienteRipio => _perraPequegnaIngredienteRipio;

    get perraPequegnaIngredienteQueso => _perraPequegnaIngredienteQueso;

    // Obtener Adiciones
    get perraPequegnaAdicionTocineta => _perraPequegnaAdicionTocineta;

    get perraPequegnaAdicionQueso => _perraPequegnaAdicionQueso;

    get perraPequegnaAdicionEnsalada => _perraPequegnaAdicionEnsalada;

    get perraPequegnaAdicionSalchichaGrande => _perraPequegnaAdicionSalchichaGrande;

    get perraPequegnaAdicionSalchichaPequegna => _perraPequegnaAdicionSalchichaPequegna;

    // Insertar Ingredientes
    set perraPequegnaIngredienteEnsalada(  List<int> ingredientes  ) {
      
      this._perraPequegnaIngredienteEnsalada = ingredientes;
      notifyListeners();
    }        
    
    set perraPequegnaIngredienteRipio( List<int> ingredientes  ) {
      
      this._perraPequegnaIngredienteRipio = ingredientes;
      notifyListeners();
    }        

    set perraPequegnaIngredienteQueso( List<int> ingredientes  ) {
      
      this._perraPequegnaIngredienteQueso = ingredientes;
      notifyListeners();
    }        

    // Insertar Adiciones
    set perraPequegnaAdicionTocineta(  List<int> adiciones  ) {
      
      this._perraPequegnaAdicionTocineta = adiciones;
      notifyListeners();
    }        
    
    set perraPequegnaAdicionEnsalada( List<int> adiciones  ) {
      
      this._perraPequegnaAdicionEnsalada = adiciones;
      notifyListeners();
    }        
    
    set perraPequegnaAdicionQueso(  List<int> adiciones  ) {
      
      this._perraPequegnaAdicionQueso = adiciones;
      notifyListeners();
    }         

    set perraPequegnaAdicionSalchichaGrande( List<int> adiciones ) {

      this._perraPequegnaAdicionSalchichaGrande = adiciones;
      notifyListeners();
    }

    set perraPequegnaAdicionSalchichaPequegna( List<int> adiciones) {

      this._perraPequegnaAdicionSalchichaPequegna = adiciones;
      notifyListeners();
    }


}