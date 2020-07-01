
class ProductoModel {

  int _especial;
  int _superEspecial;
  int _trisuper;
  int _perroGrandeTocineta;
  int _perroGrande;
  int _perroPequegnoTocineta;
  int _perroPequegno;
  int _grandePerra;
  int _pequegnaPerra;
  List<int> _valor = [0,1];

  // var _valor = '';

  
  
  get getValor {

    print('get $_valor');
    return _valor;
    

  }

  set setValor ( List<int> producto ) {

    _valor = producto;

    print('set $_valor');

  }




}
