import 'package:flutter/material.dart';

class ListaPerro with ChangeNotifier {

  // Perro Grande Con Tocineta
  
    // Ingredientes
    List<int> _perroGrandeTocinetaIngredienteEnsalada = List.filled(10, 2);
    List<int> _perroGrandeTocinetaIngredienteRipio    = List.filled(10, 2);
    List<int> _perroGrandeTocinetaIngredienteTocineta = List.filled(10, 2);
    List<int> _perroGrandeTocinetaIngredienteQueso    = List.filled(10, 2);

    // Adiciones
    List<int> _perroGrandeTocinetaAdicionCarne    = new List.filled(11, 0);
    List<int> _perroGrandeTocinetaAdicionTocineta = new List.filled(11, 0);
    List<int> _perroGrandeTocinetaAdicionQueso    = new List.filled(11, 0);
    List<int> _perroGrandeTocinetaAdicionEnsalada = new List.filled(11, 0);

    // Obtener Ingredientes 
    get perroGrandeTocinetaIngredienteEnsalada => _perroGrandeTocinetaIngredienteEnsalada;

    get perroGrandeTocinetaIngredienteRipio => _perroGrandeTocinetaIngredienteRipio;

    get perroGrandeTocinetaIngredienteTocineta => _perroGrandeTocinetaIngredienteTocineta;

    get perroGrandeTocinetaIngredienteQueso => _perroGrandeTocinetaIngredienteQueso;

    // Obtener Adiciones
    get perroGrandeTocinetaAdicionCarne => _perroGrandeTocinetaAdicionCarne;

    get perroGrandeTocinetaAdicionTocineta => _perroGrandeTocinetaAdicionTocineta;

    get perroGrandeTocinetaAdicionQueso => _perroGrandeTocinetaAdicionQueso;

    get perroGrandeTocinetaAdicionEnsalada => _perroGrandeTocinetaAdicionEnsalada;

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
    set perroGrandeTocinetaAdicionCarne( List<int> adiciones  ) {
      
      this._perroGrandeTocinetaAdicionCarne = adiciones;
      notifyListeners();
    }        
    
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

  // Perro Grande
    // Ingredientes
    List<int> _perroGrandeIngredienteEnsalada = List.filled(10, 2);
    List<int> _perroGrandeIngredienteRipio    = List.filled(10, 2);
    List<int> _perroGrandeIngredienteTocineta = List.filled(10, 2);
    List<int> _perroGrandeIngredienteQueso    = List.filled(10, 2);

    // Adiciones
    List<int> _perroGrandeAdicionCarne    = new List.filled(11, 0);
    List<int> _perroGrandeAdicionTocineta = new List.filled(11, 0);
    List<int> _perroGrandeAdicionQueso    = new List.filled(11, 0);
    List<int> _perroGrandeAdicionEnsalada = new List.filled(11, 0);

    // Obtener Ingredientes 
    get perroGrandeIngredienteEnsalada => _perroGrandeIngredienteEnsalada;

    get perroGrandeIngredienteRipio => _perroGrandeIngredienteRipio;

    get perroGrandeIngredienteTocineta => _perroGrandeIngredienteTocineta;

    get perroGrandeIngredienteQueso => _perroGrandeIngredienteQueso;

    // Obtener Adiciones
    get perroGrandeAdicionCarne => _perroGrandeAdicionCarne;

    get perroGrandeAdicionTocineta => _perroGrandeAdicionTocineta;

    get perroGrandeAdicionQueso => _perroGrandeAdicionQueso;

    get perroGrandeAdicionEnsalada => _perroGrandeAdicionEnsalada;

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
    set perroGrandeAdicionCarne( List<int> adiciones  ) {
      
      this._perroGrandeAdicionCarne = adiciones;
      notifyListeners();
    }        
    
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

// Perro Pequeño Con Tocineta
    // Ingredientes
    List<int> _perroPequegnoTocinetaIngredienteEnsalada = List.filled(10, 2);
    List<int> _perroPequegnoTocinetaIngredienteRipio    = List.filled(10, 2);
    List<int> _perroPequegnoTocinetaIngredienteTocineta = List.filled(10, 2);
    List<int> _perroPequegnoTocinetaIngredienteQueso    = List.filled(10, 2);

    // Adiciones
    List<int> _perroPequegnoTocinetaAdicionCarne    = new List.filled(11, 0);
    List<int> _perroPequegnoTocinetaAdicionTocineta = new List.filled(11, 0);
    List<int> _perroPequegnoTocinetaAdicionQueso    = new List.filled(11, 0);
    List<int> _perroPequegnoTocinetaAdicionEnsalada = new List.filled(11, 0);

    // Obtener Ingredientes 
    get perroPequegnoTocinetaIngredienteEnsalada => _perroPequegnoTocinetaIngredienteEnsalada;

    get perroPequegnoTocinetaIngredienteRipio => _perroPequegnoTocinetaIngredienteRipio;

    get perroPequegnoTocinetaIngredienteTocineta => _perroPequegnoTocinetaIngredienteTocineta;

    get perroPequegnoTocinetaIngredienteQueso => _perroPequegnoTocinetaIngredienteQueso;

    // Obtener Adiciones
    get perroPequegnoTocinetaAdicionCarne => _perroPequegnoTocinetaAdicionCarne;

    get perroPequegnoTocinetaAdicionTocineta => _perroPequegnoTocinetaAdicionTocineta;

    get perroPequegnoTocinetaAdicionQueso => _perroPequegnoTocinetaAdicionQueso;

    get perroPequegnoTocinetaAdicionEnsalada => _perroPequegnoTocinetaAdicionEnsalada;

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
    set perroPequegnoTocinetaAdicionCarne( List<int> adiciones  ) {
      
      this._perroPequegnoTocinetaAdicionCarne = adiciones;
      notifyListeners();
    }        
    
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

// Perro Pequegno
    // Ingredientes
    List<int> _perroPequegnoIngredienteEnsalada = List.filled(10, 2);
    List<int> _perroPequegnoIngredienteRipio    = List.filled(10, 2);
    List<int> _perroPequegnoIngredienteTocineta = List.filled(10, 2);
    List<int> _perroPequegnoIngredienteQueso    = List.filled(10, 2);

    // Adiciones
    List<int> _perroPequegnoAdicionCarne    = new List.filled(11, 0);
    List<int> _perroPequegnoAdicionTocineta = new List.filled(11, 0);
    List<int> _perroPequegnoAdicionQueso    = new List.filled(11, 0);
    List<int> _perroPequegnoAdicionEnsalada = new List.filled(11, 0);

    // Obtener Ingredientes 
    get perroPequegnoIngredienteEnsalada => _perroPequegnoIngredienteEnsalada;

    get perroPequegnoIngredienteRipio => _perroPequegnoIngredienteRipio;

    get perroPequegnoIngredienteTocineta => _perroPequegnoIngredienteTocineta;

    get perroPequegnoIngredienteQueso => _perroPequegnoIngredienteQueso;

    // Obtener Adiciones
    get perroPequegnoAdicionCarne => _perroPequegnoAdicionCarne;

    get perroPequegnoAdicionTocineta => _perroPequegnoAdicionTocineta;

    get perroPequegnoAdicionQueso => _perroPequegnoAdicionQueso;

    get perroPequegnoAdicionEnsalada => _perroPequegnoAdicionEnsalada;

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
    set perroPequegnoAdicionCarne( List<int> adiciones  ) {
      
      this._perroPequegnoAdicionCarne = adiciones;
      notifyListeners();
    }        
    
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
}