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
      List<int> especialIngredienteTomate,  
      List<int> especialIngredienteEnsalada,
      List<int> especialIngredienteRipio,   
      List<int> especialIngredienteTocineta,
      List<int> especialIngredienteQueso,   
      List<int> especialAdicionCarne,       
      List<int> especialAdicionTocineta,    
      List<int> especialAdicionQueso,       
      List<int> especialAdicionEnsalada,  

    int superespecial ,
      List<int> superIngredienteTomate,  
      List<int> superIngredienteEnsalada,
      List<int> superIngredienteRipio,   
      List<int> superIngredienteTocineta,
      List<int> superIngredienteQueso,   
      List<int> superAdicionCarne,       
      List<int> superAdicionTocineta,    
      List<int> superAdicionQueso,       
      List<int> superAdicionEnsalada,    

    int trisuper      ,
      List<int> trisuperIngredienteTomate,  
      List<int> trisuperIngredienteEnsalada,
      List<int> trisuperIngredienteRipio,   
      List<int> trisuperIngredienteTocineta,
      List<int> trisuperIngredienteQueso,   
      List<int> trisuperAdicionCarne,       
      List<int> trisuperAdicionTocineta,    
      List<int> trisuperAdicionQueso,       
      List<int> trisuperAdicionEnsalada,  

    // perro
    int perroGrandeTocineta    ,
      List<int> perroGrandeTocinetaIngredienteEnsalada,     
      List<int> perroGrandeTocinetaIngredienteRipio,        
      List<int> perroGrandeTocinetaIngredienteTocineta,     
      List<int> perroGrandeTocinetaIngredienteQueso,        
      List<int> perroGrandeTocinetaAdicionTocineta,         
      List<int> perroGrandeTocinetaAdicionQueso,            
      List<int> perroGrandeTocinetaAdicionEnsalada,         
      List<int> perroGrandeTocinetaAdicionSalchichaGrande,  
      List<int> perroGrandeTocinetaAdicionSalchichaPequegna,

    int perroGrande            ,
      List<int> perroGrandeIngredienteEnsalada,     
      List<int> perroGrandeIngredienteRipio,        
      List<int> perroGrandeIngredienteTocineta,     
      List<int> perroGrandeIngredienteQueso,        
      List<int> perroGrandeAdicionTocineta,         
      List<int> perroGrandeAdicionQueso,            
      List<int> perroGrandeAdicionEnsalada,         
      List<int> perroGrandeAdicionSalchichaGrande,  
      List<int> perroGrandeAdicionSalchichaPequegna,

    int perroPequegnoTocineta  ,
      List<int> perroPequegnoTocinetaIngredienteEnsalada,     
      List<int> perroPequegnoTocinetaIngredienteRipio,        
      List<int> perroPequegnoTocinetaIngredienteTocineta,     
      List<int> perroPequegnoTocinetaIngredienteQueso,        
      List<int> perroPequegnoTocinetaAdicionTocineta,         
      List<int> perroPequegnoTocinetaAdicionQueso,            
      List<int> perroPequegnoTocinetaAdicionEnsalada,         
      List<int> perroPequegnoTocinetaAdicionSalchichaGrande,  
      List<int> perroPequegnoTocinetaAdicionSalchichaPequegna,

    int perroPequegno          ,
      List<int> perroPequegnoIngredienteEnsalada,     
      List<int> perroPequegnoIngredienteRipio,        
      List<int> perroPequegnoIngredienteTocineta,     
      List<int> perroPequegnoIngredienteQueso,        
      List<int> perroPequegnoAdicionTocineta,         
      List<int> perroPequegnoAdicionQueso,            
      List<int> perroPequegnoAdicionEnsalada,         
      List<int> perroPequegnoAdicionSalchichaGrande,  
      List<int> perroPequegnoAdicionSalchichaPequegna,
    // perra
    int grandePerra   ,
      List<int> perraGrandeIngredienteEnsalada,     
      List<int> perraGrandeIngredienteRipio,        
      List<int> perraGrandeIngredienteQueso,        
      List<int> perraGrandeAdicionTocineta,         
      List<int> perraGrandeAdicionQueso,            
      List<int> perraGrandeAdicionEnsalada,         
      List<int> perraGrandeAdicionSalchichaGrande,  
      List<int> perraGrandeAdicionSalchichaPequegna,

    int pequegnaPerra ,
      List<int> perraPequegnaIngredienteEnsalada,     
      List<int> perraPequegnaIngredienteRipio,        
      List<int> perraPequegnaIngredienteQueso,        
      List<int> perraPequegnaAdicionTocineta,         
      List<int> perraPequegnaAdicionQueso,            
      List<int> perraPequegnaAdicionEnsalada,         
      List<int> perraPequegnaAdicionSalchichaGrande,  
      List<int> perraPequegnaAdicionSalchichaPequegna,

    // datos domicilio
    String nombre,
    String direccion,
    String barrio, 
    String mensaje,
    String telefono

  }) async {
    await cejaCollection.document(tlf).setData({

      'especial': especial,
        'especialIngredienteTomate'   : especialIngredienteTomate,      
        'especialIngredienteEnsalada' : especialIngredienteEnsalada,        
        'especialIngredienteRipio'    : especialIngredienteRipio,      
        'especialIngredienteTocineta' : especialIngredienteTocineta,        
        'especialIngredienteQueso'    : especialIngredienteQueso,      
        'especialAdicionCarne'        : especialAdicionCarne,  
        'especialAdicionTocineta'     : especialAdicionTocineta,    
        'especialAdicionQueso'        : especialAdicionQueso,  
        'especialAdicionEnsalada'     : especialAdicionEnsalada,    

      'super'   : superespecial,
        'superIngredienteTomate'   : superIngredienteTomate,           
        'superIngredienteEnsalada' : superIngredienteEnsalada,             
        'superIngredienteRipio'    : superIngredienteRipio,         
        'superIngredienteTocineta' : superIngredienteTocineta,             
        'superIngredienteQueso'    : superIngredienteQueso,         
        'superAdicionCarne'        : superAdicionCarne,     
        'superAdicionTocineta'     : superAdicionTocineta,         
        'superAdicionQueso'        : superAdicionQueso,     
        'superAdicionEnsalada'     : superAdicionEnsalada,   

      'trisuper': trisuper,
        'trisuperIngredienteTomate'   : trisuperIngredienteTomate,      
        'trisuperIngredienteEnsalada' : trisuperIngredienteEnsalada,        
        'trisuperIngredienteRipio'    : trisuperIngredienteRipio,      
        'trisuperIngredienteTocineta' : trisuperIngredienteTocineta,        
        'trisuperIngredienteQueso'    : trisuperIngredienteQueso,      
        'trisuperAdicionCarne'        : trisuperAdicionCarne,  
        'trisuperAdicionTocineta'     : trisuperAdicionTocineta,    
        'trisuperAdicionQueso'        : trisuperAdicionQueso,  
        'trisuperAdicionEnsalada'     : trisuperAdicionEnsalada,  

      // perro
      'perroGrandeTocineta'  :  perroGrandeTocineta,
        'perroGrandeTocinetaIngredienteEnsalada'      : perroGrandeTocinetaIngredienteEnsalada,        
        'perroGrandeTocinetaIngredienteRipio'         : perroGrandeTocinetaIngredienteRipio,    
        'perroGrandeTocinetaIngredienteTocineta'      : perroGrandeTocinetaIngredienteTocineta,        
        'perroGrandeTocinetaIngredienteQueso'         : perroGrandeTocinetaIngredienteQueso,    
        'perroGrandeTocinetaAdicionTocineta'          : perroGrandeTocinetaAdicionTocineta,    
        'perroGrandeTocinetaAdicionQueso'             : perroGrandeTocinetaAdicionQueso,
        'perroGrandeTocinetaAdicionEnsalada'          : perroGrandeTocinetaAdicionEnsalada,    
        'perroGrandeTocinetaAdicionSalchichaGrande'   : perroGrandeTocinetaAdicionSalchichaGrande,          
        'perroGrandeTocinetaAdicionSalchichaPequegna' : perroGrandeTocinetaAdicionSalchichaPequegna,

      'perroGrande'          :  perroGrande,
        'perroGrandeIngredienteEnsalada'      : perroGrandeIngredienteEnsalada,      
        'perroGrandeIngredienteRipio'         : perroGrandeIngredienteRipio,    
        'perroGrandeIngredienteTocineta'      : perroGrandeIngredienteTocineta,      
        'perroGrandeIngredienteQueso'         : perroGrandeIngredienteQueso,    
        'perroGrandeAdicionTocineta'          : perroGrandeAdicionTocineta,  
        'perroGrandeAdicionQueso'             : perroGrandeAdicionQueso,
        'perroGrandeAdicionEnsalada'          : perroGrandeAdicionEnsalada,  
        'perroGrandeAdicionSalchichaGrande'   : perroGrandeAdicionSalchichaGrande,          
        'perroGrandeAdicionSalchichaPequegna' : perroGrandeAdicionSalchichaPequegna,          
       
      'perroPequegnoTocineta':  perroPequegnoTocineta,
        'perroPequegnoTocinetaIngredienteEnsalada'       : perroPequegnoTocinetaIngredienteEnsalada,       
        'perroPequegnoTocinetaIngredienteRipio'          : perroPequegnoTocinetaIngredienteRipio,   
        'perroPequegnoTocinetaIngredienteTocineta'       : perroPequegnoTocinetaIngredienteTocineta,       
        'perroPequegnoTocinetaIngredienteQueso'          : perroPequegnoTocinetaIngredienteQueso,   
        'perroPequegnoTocinetaAdicionTocineta'           : perroPequegnoTocinetaAdicionTocineta,   
        'perroPequegnoTocinetaAdicionQueso'              : perroPequegnoTocinetaAdicionQueso,
        'perroPequegnoTocinetaAdicionEnsalada'           : perroPequegnoTocinetaAdicionEnsalada,   
        'perroPequegnoTocinetaAdicionSalchichaGrande'    : perroPequegnoTocinetaAdicionSalchichaGrande,         
        'perroPequegnoTocinetaAdicionSalchichaPequegna'  : perroPequegnoTocinetaAdicionSalchichaPequegna,     

      'perroPequegno'        :  perroPequegno,
        'perroPequegnoIngredienteEnsalada'        :  perroPequegnoIngredienteEnsalada,         
        'perroPequegnoIngredienteRipio'           :  perroPequegnoIngredienteRipio,     
        'perroPequegnoIngredienteTocineta'        :  perroPequegnoIngredienteTocineta,         
        'perroPequegnoIngredienteQueso'           :  perroPequegnoIngredienteQueso,     
        'perroPequegnoAdicionTocineta'            :  perroPequegnoAdicionTocineta,     
        'perroPequegnoAdicionQueso'               :  perroPequegnoAdicionQueso, 
        'perroPequegnoAdicionEnsalada'            :  perroPequegnoAdicionEnsalada,     
        'perroPequegnoAdicionSalchichaGrande'     :  perroPequegnoAdicionSalchichaGrande,           
        'perroPequegnoAdicionSalchichaPequegna'   :  perroPequegnoAdicionSalchichaPequegna,             
                      
      // perra
      'grandePerra'  : grandePerra,
        'perraGrandeIngredienteEnsalada'      : perraGrandeIngredienteEnsalada,          
        'perraGrandeIngredienteRipio'         : perraGrandeIngredienteRipio,      
        'perraGrandeIngredienteQueso'         : perraGrandeIngredienteQueso,      
        'perraGrandeAdicionTocineta'          : perraGrandeAdicionTocineta,      
        'perraGrandeAdicionQueso'             : perraGrandeAdicionQueso,  
        'perraGrandeAdicionEnsalada'          : perraGrandeAdicionEnsalada,      
        'perraGrandeAdicionSalchichaGrande'   : perraGrandeAdicionSalchichaGrande,            
        'perraGrandeAdicionSalchichaPequegna' : perraGrandeAdicionSalchichaPequegna,              

      'pequegnaPerra': pequegnaPerra,
        'perraPequegnaIngredienteEnsalada'      : perraPequegnaIngredienteEnsalada,        
        'perraPequegnaIngredienteRipio'         : perraPequegnaIngredienteRipio,    
        'perraPequegnaIngredienteQueso'         : perraPequegnaIngredienteQueso,    
        'perraPequegnaAdicionTocineta'          : perraPequegnaAdicionTocineta,    
        'perraPequegnaAdicionQueso'             : perraPequegnaAdicionQueso,
        'perraPequegnaAdicionEnsalada'          : perraPequegnaAdicionEnsalada,    
        'perraPequegnaAdicionSalchichaGrande'   : perraPequegnaAdicionSalchichaGrande,          
        'perraPequegnaAdicionSalchichaPequegna' : perraPequegnaAdicionSalchichaPequegna,            

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
          especialIngredienteTomate    : doc.data['especialIngredienteTomate']    ?? [],              
          especialIngredienteEnsalada  : doc.data['especialIngredienteEnsalada']  ?? [],                 
          especialIngredienteRipio     : doc.data['especialIngredienteRipio']     ?? [],             
          especialIngredienteTocineta  : doc.data['especialIngredienteTocineta']  ?? [],                 
          especialIngredienteQueso     : doc.data['especialIngredienteQueso']     ?? [],             
          especialAdicionCarne         : doc.data['especialAdicionCarne']         ?? [],     
          especialAdicionTocineta      : doc.data['especialAdicionTocineta']      ?? [],         
          especialAdicionQueso         : doc.data['especialAdicionQueso']         ?? [],     
          especialAdicionEnsalada      : doc.data['especialAdicionEnsalada']      ?? [],           

        superespecial : doc.data['super'] ?? 0,
          superIngredienteTomate   : doc.data['superIngredienteTomate']           ?? [],            
          superIngredienteEnsalada : doc.data['superIngredienteEnsalada']         ?? [],                
          superIngredienteRipio    : doc.data['superIngredienteRipio']            ?? [],          
          superIngredienteTocineta : doc.data['superIngredienteTocineta']         ?? [],                
          superIngredienteQueso    : doc.data['superIngredienteQueso']            ?? [],          
          superAdicionCarne        : doc.data['superAdicionCarne']                ?? [],  
          superAdicionTocineta     : doc.data['superAdicionTocineta']             ?? [],        
          superAdicionQueso        : doc.data['superAdicionQueso']                ?? [],  
          superAdicionEnsalada     : doc.data['superAdicionEnsalada']             ?? [],      

        trisuper      : doc.data['trisuper'] ?? 0,
          trisuperIngredienteTomate    : doc.data['trisuperIngredienteTomate']    ?? [],             
          trisuperIngredienteEnsalada  : doc.data['trisuperIngredienteEnsalada']  ?? [],                 
          trisuperIngredienteRipio     : doc.data['trisuperIngredienteRipio']     ?? [],           
          trisuperIngredienteTocineta  : doc.data['trisuperIngredienteTocineta']  ?? [],                 
          trisuperIngredienteQueso     : doc.data['trisuperIngredienteQueso']     ?? [],           
          trisuperAdicionCarne         : doc.data['trisuperAdicionCarne']         ?? [],   
          trisuperAdicionTocineta      : doc.data['trisuperAdicionTocineta']      ?? [],         
          trisuperAdicionQueso         : doc.data['trisuperAdicionQueso']         ?? [],   
          trisuperAdicionEnsalada      : doc.data['trisuperAdicionEnsalada']      ?? [],      

        // perros
        perroGrandeTocineta   : doc.data['perroGrandeTocineta'] ?? 0,
          perroGrandeTocinetaIngredienteEnsalada      : doc.data['perroGrandeTocinetaIngredienteEnsalada']      ?? [],             
          perroGrandeTocinetaIngredienteRipio         : doc.data['perroGrandeTocinetaIngredienteRipio']         ?? [],         
          perroGrandeTocinetaIngredienteTocineta      : doc.data['perroGrandeTocinetaIngredienteTocineta']      ?? [],             
          perroGrandeTocinetaIngredienteQueso         : doc.data['perroGrandeTocinetaIngredienteQueso']         ?? [],         
          perroGrandeTocinetaAdicionTocineta          : doc.data['perroGrandeTocinetaAdicionTocineta']          ?? [],     
          perroGrandeTocinetaAdicionQueso             : doc.data['perroGrandeTocinetaAdicionQueso']             ?? [], 
          perroGrandeTocinetaAdicionEnsalada          : doc.data['perroGrandeTocinetaAdicionEnsalada']          ?? [],     
          perroGrandeTocinetaAdicionSalchichaGrande   : doc.data['perroGrandeTocinetaAdicionSalchichaGrande']   ?? [],                     
          perroGrandeTocinetaAdicionSalchichaPequegna : doc.data['perroGrandeTocinetaAdicionSalchichaPequegna'] ?? [],                         

        perroGrande           : doc.data['perroGrande'] ?? 0,
          perroGrandeIngredienteEnsalada      : doc.data['perroGrandeIngredienteEnsalada']       ?? [],                       
          perroGrandeIngredienteRipio         : doc.data['perroGrandeIngredienteRipio']          ?? [],               
          perroGrandeIngredienteTocineta      : doc.data['perroGrandeIngredienteTocineta']       ?? [],                       
          perroGrandeIngredienteQueso         : doc.data['perroGrandeIngredienteQueso']          ?? [],               
          perroGrandeAdicionTocineta          : doc.data['perroGrandeAdicionTocineta']           ?? [],               
          perroGrandeAdicionQueso             : doc.data['perroGrandeAdicionQueso']              ?? [],       
          perroGrandeAdicionEnsalada          : doc.data['perroGrandeAdicionEnsalada']           ?? [],               
          perroGrandeAdicionSalchichaGrande   : doc.data['perroGrandeAdicionSalchichaGrande']    ?? [],                           
          perroGrandeAdicionSalchichaPequegna : doc.data['perroGrandeAdicionSalchichaPequegna']  ?? [],                               

        perroPequegnoTocineta : doc.data['perroPequegnoTocineta'] ?? 0,
          perroPequegnoTocinetaIngredienteEnsalada      : doc.data['perroPequegnoTocinetaIngredienteEnsalada']      ?? [],                  
          perroPequegnoTocinetaIngredienteRipio         : doc.data['perroPequegnoTocinetaIngredienteRipio']         ?? [],          
          perroPequegnoTocinetaIngredienteTocineta      : doc.data['perroPequegnoTocinetaIngredienteTocineta']      ?? [],                  
          perroPequegnoTocinetaIngredienteQueso         : doc.data['perroPequegnoTocinetaIngredienteQueso']         ?? [],          
          perroPequegnoTocinetaAdicionTocineta          : doc.data['perroPequegnoTocinetaAdicionTocineta']          ?? [],          
          perroPequegnoTocinetaAdicionQueso             : doc.data['perroPequegnoTocinetaAdicionQueso']             ?? [],  
          perroPequegnoTocinetaAdicionEnsalada          : doc.data['perroPequegnoTocinetaAdicionEnsalada']          ?? [],          
          perroPequegnoTocinetaAdicionSalchichaGrande   : doc.data['perroPequegnoTocinetaAdicionSalchichaGrande']   ?? [],                      
          perroPequegnoTocinetaAdicionSalchichaPequegna : doc.data['perroPequegnoTocinetaAdicionSalchichaPequegna'] ?? [],                          

        perroPequegno         : doc.data['perroPequegno'] ?? 0,
          perroPequegnoIngredienteEnsalada      : doc.data['perroPequegnoIngredienteEnsalada']      ?? [],                  
          perroPequegnoIngredienteRipio         : doc.data['perroPequegnoIngredienteRipio']         ?? [],          
          perroPequegnoIngredienteTocineta      : doc.data['perroPequegnoIngredienteTocineta']      ?? [],                  
          perroPequegnoIngredienteQueso         : doc.data['perroPequegnoIngredienteQueso']         ?? [],          
          perroPequegnoAdicionTocineta          : doc.data['perroPequegnoAdicionTocineta']          ?? [],          
          perroPequegnoAdicionQueso             : doc.data['perroPequegnoAdicionQueso']             ?? [],            
          perroPequegnoAdicionEnsalada          : doc.data['perroPequegnoAdicionEnsalada']          ?? [],          
          perroPequegnoAdicionSalchichaGrande   : doc.data['perroPequegnoAdicionSalchichaGrande']   ?? [],                      
          perroPequegnoAdicionSalchichaPequegna : doc.data['perroPequegnoAdicionSalchichaPequegna'] ?? [],                          

        // perra
        grandePerra   : doc.data['grandePerra'] ?? 0,
          perraGrandeIngredienteEnsalada      : doc.data['perraGrandeIngredienteEnsalada']      ?? [],                        
          perraGrandeIngredienteRipio         : doc.data['perraGrandeIngredienteRipio']         ?? [],                
          perraGrandeIngredienteQueso         : doc.data['perraGrandeIngredienteQueso']         ?? [],                
          perraGrandeAdicionTocineta          : doc.data['perraGrandeAdicionTocineta']          ?? [],                
          perraGrandeAdicionQueso             : doc.data['perraGrandeAdicionQueso']             ?? [],        
          perraGrandeAdicionEnsalada          : doc.data['perraGrandeAdicionEnsalada']          ?? [],                
          perraGrandeAdicionSalchichaGrande   : doc.data['perraGrandeAdicionSalchichaGrande']   ?? [],                            
          perraGrandeAdicionSalchichaPequegna : doc.data['perraGrandeAdicionSalchichaPequegna'] ?? [],                                

        pequegnaPerra : doc.data['pequegnaPerra'] ?? 0,
          perraPequegnaIngredienteEnsalada       : doc.data['perraPequegnaIngredienteEnsalada']      ?? [],                
          perraPequegnaIngredienteRipio          : doc.data['perraPequegnaIngredienteRipio']         ?? [],          
          perraPequegnaIngredienteQueso          : doc.data['perraPequegnaIngredienteQueso']         ?? [],          
          perraPequegnaAdicionTocineta           : doc.data['perraPequegnaAdicionTocineta']          ?? [],        
          perraPequegnaAdicionQueso              : doc.data['perraPequegnaAdicionQueso']             ?? [],        
          perraPequegnaAdicionEnsalada           : doc.data['perraPequegnaAdicionEnsalada']          ?? [],        
          perraPequegnaAdicionSalchichaGrande    : doc.data['perraPequegnaAdicionSalchichaGrande']   ?? [],                      
          perraPequegnaAdicionSalchichaPequegna  : doc.data['perraPequegnaAdicionSalchichaPequegna'] ?? [],                          

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