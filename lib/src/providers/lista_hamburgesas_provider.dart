import 'package:flutter/material.dart';

class ListaHamburguesas with ChangeNotifier {

  //Especiales 

    // Ingredientes
    List<int> _especialIngredienteTomate   = List.filled(10, 2);
    List<int> _especialIngredienteEnsalada = List.filled(10, 2);
    List<int> _especialIngredienteRipio    = List.filled(10, 2);
    List<int> _especialIngredienteTocineta = List.filled(10, 2);
    List<int> _especialIngredienteQueso    = List.filled(10, 2);

    // Adiciones
    List<int> _especialAdicionCarne    = new List.filled(11, 0);
    List<int> _especialAdicionTocineta = new List.filled(11, 0);
    List<int> _especialAdicionQueso    = new List.filled(11, 0);
    List<int> _especialAdicionEnsalada = new List.filled(11, 0);

    // Obtener Ingredientes 
    get especialIngredienteTomate   => _especialIngredienteTomate;

    get especialIngredienteEnsalada => _especialIngredienteEnsalada;

    get especialIngredienteRipio    =>  _especialIngredienteRipio;

    get especialIngredienteTocineta => _especialIngredienteTocineta;

    get especialIngredienteQueso    =>  _especialIngredienteQueso;

    // Obtener Adiciones 
    get especialAdicionCarne        => _especialAdicionCarne;

    get especialAdicionTocineta     => _especialAdicionTocineta;

    get especialAdicionQueso        => _especialAdicionQueso;

    get especialAdicionEnsalada     => _especialAdicionEnsalada;
    

    // Insertar Ingredientes
    set especialIngredienteTomate( List<int> ingredienteTomate) {

      this._especialIngredienteTomate = ingredienteTomate;
      notifyListeners();
    }  

    set especialIngredienteEnsalada( List<int> ingredienteEnsalada) {

      this._especialIngredienteEnsalada = ingredienteEnsalada;
      notifyListeners();
    }

    set especialIngredienteRipio( List<int> ingredienteRipio) {

      this._especialIngredienteRipio = ingredienteRipio;
      notifyListeners();
    }

    set especialIngredienteTocineta( List<int> ingredienteTocineta) {

      this._especialIngredienteTocineta = ingredienteTocineta;
      notifyListeners();
    }

    set especialIngredienteQueso( List<int> ingredienteQueso) {

      this._especialIngredienteQueso = ingredienteQueso;
      notifyListeners();
    }

    // Insertar Adiciones
    set especialAdicionCarne( List<int> adicionCarne) {

      this._especialAdicionCarne = adicionCarne;
      notifyListeners();
    }

    set especialAdicionTocineta( List<int> adicionTocineta) {

      this._especialAdicionTocineta = adicionTocineta;
      notifyListeners();
    }

    set especialAdicionQueso( List<int> adicionQueso) {

      this._especialAdicionQueso = adicionQueso;
      notifyListeners();
    }

    set especialAdicioEnsalada( List<int> adicionEnsalada) {

      this._especialAdicionEnsalada = adicionEnsalada;
      notifyListeners();
    }


  //Super 
    // Ingredientes
    List<int> _superIngredienteTomate   = List.filled(10, 2);
    List<int> _superIngredienteEnsalada = List.filled(10, 2);
    List<int> _superIngredienteRipio    = List.filled(10, 2);
    List<int> _superIngredienteTocineta = List.filled(10, 2);
    List<int> _superIngredienteQueso    = List.filled(10, 2);

    // Adiciones
    List<int> _superAdicionCarne    = new List.filled(11, 0);
    List<int> _superAdicionTocineta = new List.filled(11, 0);
    List<int> _superAdicionQueso    = new List.filled(11, 0);
    List<int> _superAdicionEnsalada = new List.filled(11, 0);

    // Obtener Ingredientes 
    get superIngredienteTomate   => _superIngredienteTomate;

    get superIngredienteEnsalada => _superIngredienteEnsalada;

    get superIngredienteRipio    => _superIngredienteRipio;

    get superIngredienteTocineta => _superIngredienteTocineta;

    get superIngredienteQueso    => _superIngredienteQueso;

    // Obtener Adiciones 
    get superAdicionCarne        => _superAdicionCarne;

    get superAdicionTocineta     => _superAdicionTocineta;

    get superAdicionQueso        => _superAdicionQueso;

    get superAdicionEnsalada     => _superAdicionEnsalada;
    

    // Insertar Ingredientes
    set superIngredienteTomate( List<int> ingredienteTomate) {

      this._superIngredienteTomate = ingredienteTomate;
      notifyListeners();
    }  

    set superIngredienteEnsalada( List<int> ingredienteEnsalada) {

      this._superIngredienteEnsalada = ingredienteEnsalada;
      notifyListeners();
    }

    set superIngredienteRipio( List<int> ingredienteRipio) {

      this._superIngredienteRipio = ingredienteRipio;
      notifyListeners();
    }

    set superIngredienteTocineta( List<int> ingredienteTocineta) {

      this._superIngredienteTocineta = ingredienteTocineta;
      notifyListeners();
    }

    set superIngredienteQueso( List<int> ingredienteQueso) {

      this._superIngredienteQueso = ingredienteQueso;
      notifyListeners();
    }

    // Insertar Adiciones
    set superAdicionCarne( List<int> adicionCarne) {

      this._superAdicionCarne = adicionCarne;
      notifyListeners();
    }

    set superAdicionTocineta( List<int> adicionTocineta) {

      this._superAdicionTocineta = adicionTocineta;
      notifyListeners();
    }

    set superAdicionQueso( List<int> adicionQueso) {

      this._superAdicionQueso = adicionQueso;
      notifyListeners();
    }

    set superAdicioEnsalada( List<int> adicionEnsalada) {

      this._superAdicionEnsalada = adicionEnsalada;
      notifyListeners();
    }


  //Trisuper 

    // Ingredientes
    List<int> _trisuperIngredienteTomate   = List.filled(10, 2);
    List<int> _trisuperIngredienteEnsalada = List.filled(10, 2);
    List<int> _trisuperIngredienteRipio    = List.filled(10, 2);
    List<int> _trisuperIngredienteTocineta = List.filled(10, 2);
    List<int> _trisuperIngredienteQueso    = List.filled(10, 2);

    // Adiciones
    List<int> _trisuperAdicionCarne    = new List.filled(11, 0);
    List<int> _trisuperAdicionTocineta = new List.filled(11, 0);
    List<int> _trisuperAdicionQueso    = new List.filled(11, 0);
    List<int> _trisuperAdicionEnsalada = new List.filled(11, 0);

    // Obtener Ingredientes 
    get trisuperIngredienteTomate   => _trisuperIngredienteTomate;

    get trisuperIngredienteEnsalada => _trisuperIngredienteEnsalada;

    get trisuperIngredienteRipio    => _trisuperIngredienteRipio;

    get trisuperIngredienteTocineta => _trisuperIngredienteTocineta;

    get trisuperIngredienteQueso    => _trisuperIngredienteQueso;

    // Obtener Adiciones 
    get trisuperAdicionCarne        => _trisuperAdicionCarne;

    get trisuperAdicionTocineta     => _trisuperAdicionTocineta;

    get trisuperAdicionQueso        => _trisuperAdicionQueso;

    get trisuperAdicionEnsalada     => _trisuperAdicionEnsalada;
    

    // Insertar Ingredientes
    set trisuperIngredienteTomate( List<int> ingredienteTomate) {

      this._trisuperIngredienteTomate = ingredienteTomate;
      notifyListeners();
    }  

    set trisuperIngredienteEnsalada( List<int> ingredienteEnsalada) {

      this._trisuperIngredienteEnsalada = ingredienteEnsalada;
      notifyListeners();
    }

    set trisuperIngredienteRipio( List<int> ingredienteRipio) {

      this._trisuperIngredienteRipio = ingredienteRipio;
      notifyListeners();
    }

    set trisuperIngredienteTocineta( List<int> ingredienteTocineta) {

      this._trisuperIngredienteTocineta = ingredienteTocineta;
      notifyListeners();
    }

    set trisuperIngredienteQueso( List<int> ingredienteQueso) {

      this._trisuperIngredienteQueso = ingredienteQueso;
      notifyListeners();
    }

    // Insertar Adiciones
    set trisuperAdicionCarne( List<int> adicionCarne) {

      this._trisuperAdicionCarne = adicionCarne;
      notifyListeners();
    }

    set trisuperAdicionTocineta( List<int> adicionTocineta) {

      this._trisuperAdicionTocineta = adicionTocineta;
      notifyListeners();
    }

    set trisuperAdicionQueso( List<int> adicionQueso) {

      this._trisuperAdicionQueso = adicionQueso;
      notifyListeners();
    }

    set trisuperAdicioEnsalada( List<int> adicionEnsalada) {

      this._trisuperAdicionEnsalada = adicionEnsalada;
      notifyListeners();
    }

}