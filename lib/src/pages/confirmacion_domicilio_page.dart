import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:q2/src/bloc/producto_bloc.dart';
// import 'package:q2/src/bloc/producto_bloc.dart';
import 'package:q2/src/bloc/provider.dart';
import 'package:q2/src/providers/lista_perros_provider.dart';
import 'package:q2/src/service/database.dart';
import 'package:q2/src/providers/lista_hamburgesas_provider.dart';
import 'package:q2/src/widgets/mostrar_factura.dart';

class ConfirmacionDomicilio extends StatefulWidget {
  final bool infoExeso2;
  ConfirmacionDomicilio({this.infoExeso2});

  @override
  _ConfirmacionDomicilioState createState() => _ConfirmacionDomicilioState();
}

class _ConfirmacionDomicilioState extends State<ConfirmacionDomicilio> {

  final TextStyle styleAppBar = TextStyle( fontSize: 20, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, );

  ListaHamburguesas listaHamburgesas  = ListaHamburguesas();
  ListaPerro        listaPerros       = ListaPerro();
  ProductoBloc      data              = ProductoBloc();
  ProductoBloc      dataProduc        = ProductoBloc();

  int i = 0;
  
  @override
  Widget build(BuildContext context) {

    this.listaHamburgesas = Provider.of<ListaHamburguesas>(context);
    this.listaPerros      = Provider.of<ListaPerro>(context);

    this.data = Providers.ofProducto(context);

    // color:  Color.fromRGBO(161, 35, 18, 1)
    final dataForm = Providers.of(context);
    
    dataProduc = Providers.ofProducto(context);

    return Scaffold(
      backgroundColor: Color.fromRGBO(238, 241, 249, 1),
      appBar: AppBar(
        title: Text('Confirmación de domicilio'),
        backgroundColor: Colors.white,
        elevation: 0.5,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async{
          Navigator.pushNamedAndRemoveUntil(context, 'esperandoConfirmacion', (Route<dynamic> route) => false);
          // Navigator.pushNamed(context, 'esperandoConfirmacion');

          await DatabaseService(tlf: dataForm.telefono).updateUserData(

            especial              : dataProduc.especial,
              especialIngredienteTomate    : listaHamburgesas.especialIngredienteTomate,      
              especialIngredienteEnsalada  : listaHamburgesas.especialIngredienteEnsalada,        
              especialIngredienteRipio     : listaHamburgesas.especialIngredienteRipio,      
              especialIngredienteTocineta  : listaHamburgesas.especialIngredienteTocineta,        
              especialIngredienteQueso     : listaHamburgesas.especialIngredienteQueso,      
              especialAdicionCarne         : listaHamburgesas.especialAdicionCarne,  
              especialAdicionTocineta      : listaHamburgesas.especialAdicionTocineta,    
              especialAdicionQueso         : listaHamburgesas.especialAdicionQueso,  
              especialAdicionEnsalada      : listaHamburgesas.especialAdicionEnsalada,  

            superespecial         : dataProduc.superEspecial,
              superIngredienteTomate    : listaHamburgesas.superIngredienteTomate,      
              superIngredienteEnsalada  : listaHamburgesas.superIngredienteEnsalada,        
              superIngredienteRipio     : listaHamburgesas.superIngredienteRipio,    
              superIngredienteTocineta  : listaHamburgesas.superIngredienteTocineta,        
              superIngredienteQueso     : listaHamburgesas.superIngredienteQueso,    
              superAdicionCarne         : listaHamburgesas.superAdicionCarne,
              superAdicionTocineta      : listaHamburgesas.superAdicionTocineta,    
              superAdicionQueso         : listaHamburgesas.superAdicionQueso,
              superAdicionEnsalada      : listaHamburgesas.superAdicionEnsalada,    

            trisuper              : dataProduc.trisuper,
              trisuperIngredienteTomate    :  listaHamburgesas.trisuperIngredienteTomate,     
              trisuperIngredienteEnsalada  :  listaHamburgesas.trisuperIngredienteEnsalada,       
              trisuperIngredienteRipio     :  listaHamburgesas.trisuperIngredienteRipio,     
              trisuperIngredienteTocineta  :  listaHamburgesas.trisuperIngredienteTocineta,       
              trisuperIngredienteQueso     :  listaHamburgesas.trisuperIngredienteQueso,     
              trisuperAdicionCarne         :  listaHamburgesas.trisuperAdicionCarne, 
              trisuperAdicionTocineta      :  listaHamburgesas.trisuperAdicionTocineta,   
              trisuperAdicionQueso         :  listaHamburgesas.trisuperAdicionQueso, 
              trisuperAdicionEnsalada      :  listaHamburgesas.trisuperAdicionEnsalada,   
            // perros
            perroGrandeTocineta   : dataProduc.perroGrandeTocineta,
              perroGrandeTocinetaIngredienteEnsalada      : listaPerros.perroGrandeTocinetaIngredienteEnsalada,            
              perroGrandeTocinetaIngredienteRipio         : listaPerros.perroGrandeTocinetaIngredienteRipio,        
              perroGrandeTocinetaIngredienteTocineta      : listaPerros.perroGrandeTocinetaIngredienteTocineta,            
              perroGrandeTocinetaIngredienteQueso         : listaPerros.perroGrandeTocinetaIngredienteQueso,        
              perroGrandeTocinetaAdicionTocineta          : listaPerros.perroGrandeTocinetaAdicionTocineta,        
              perroGrandeTocinetaAdicionQueso             : listaPerros.perroGrandeTocinetaAdicionQueso,    
              perroGrandeTocinetaAdicionEnsalada          : listaPerros.perroGrandeTocinetaAdicionEnsalada,        
              perroGrandeTocinetaAdicionSalchichaGrande   : listaPerros.perroGrandeTocinetaAdicionSalchichaGrande,              
              perroGrandeTocinetaAdicionSalchichaPequegna : listaPerros.perroGrandeTocinetaAdicionSalchichaPequegna,      

            perroGrande           : dataProduc.perroGrande,
              perroGrandeIngredienteEnsalada      : listaPerros.perroGrandeIngredienteEnsalada,              
              perroGrandeIngredienteRipio         : listaPerros.perroGrandeIngredienteRipio,          
              perroGrandeIngredienteTocineta      : listaPerros.perroGrandeIngredienteTocineta,              
              perroGrandeIngredienteQueso         : listaPerros.perroGrandeIngredienteQueso,          
              perroGrandeAdicionTocineta          : listaPerros.perroGrandeAdicionTocineta,          
              perroGrandeAdicionQueso             : listaPerros.perroGrandeAdicionQueso,      
              perroGrandeAdicionEnsalada          : listaPerros.perroGrandeAdicionEnsalada,          
              perroGrandeAdicionSalchichaGrande   : listaPerros.perroGrandeAdicionSalchichaGrande,                
              perroGrandeAdicionSalchichaPequegna : listaPerros.perroGrandeAdicionSalchichaPequegna,     

            perroPequegnoTocineta : dataProduc.perroPequegnoTocineta,
              perroPequegnoTocinetaIngredienteEnsalada       : listaPerros.perroPequegnoTocinetaIngredienteEnsalada,             
              perroPequegnoTocinetaIngredienteRipio          : listaPerros.perroPequegnoTocinetaIngredienteRipio,         
              perroPequegnoTocinetaIngredienteTocineta       : listaPerros.perroPequegnoTocinetaIngredienteTocineta,             
              perroPequegnoTocinetaIngredienteQueso          : listaPerros.perroPequegnoTocinetaIngredienteQueso,         
              perroPequegnoTocinetaAdicionTocineta           : listaPerros.perroPequegnoTocinetaAdicionTocineta,         
              perroPequegnoTocinetaAdicionQueso              : listaPerros.perroPequegnoTocinetaAdicionQueso,     
              perroPequegnoTocinetaAdicionEnsalada           : listaPerros.perroPequegnoTocinetaAdicionEnsalada,         
              perroPequegnoTocinetaAdicionSalchichaGrande    : listaPerros.perroPequegnoTocinetaAdicionSalchichaGrande,               
              perroPequegnoTocinetaAdicionSalchichaPequegna  : listaPerros.perroPequegnoTocinetaAdicionSalchichaPequegna,                 

            perroPequegno         : dataProduc.perroPequegno,
              perroPequegnoIngredienteEnsalada      :listaPerros.perroPequegnoIngredienteEnsalada,            
              perroPequegnoIngredienteRipio         :listaPerros.perroPequegnoIngredienteRipio,        
              perroPequegnoIngredienteTocineta      :listaPerros.perroPequegnoIngredienteTocineta,            
              perroPequegnoIngredienteQueso         :listaPerros.perroPequegnoIngredienteQueso,        
              perroPequegnoAdicionTocineta          :listaPerros.perroPequegnoAdicionTocineta,        
              perroPequegnoAdicionQueso             :listaPerros.perroPequegnoAdicionQueso,    
              perroPequegnoAdicionEnsalada          :listaPerros.perroPequegnoAdicionEnsalada,        
              perroPequegnoAdicionSalchichaGrande   :listaPerros.perroPequegnoAdicionSalchichaGrande,              
              perroPequegnoAdicionSalchichaPequegna :listaPerros.perroPequegnoAdicionSalchichaPequegna,                
            // perras
            grandePerra           : dataProduc.grandePerra,
              perraGrandeIngredienteEnsalada      : listaPerros.perraGrandeIngredienteEnsalada,            
              perraGrandeIngredienteRipio         : listaPerros.perraGrandeIngredienteRipio,        
              perraGrandeIngredienteQueso         : listaPerros.perraGrandeIngredienteQueso,        
              perraGrandeAdicionTocineta          : listaPerros.perraGrandeAdicionTocineta,        
              perraGrandeAdicionQueso             : listaPerros.perraGrandeAdicionQueso,    
              perraGrandeAdicionEnsalada          : listaPerros.perraGrandeAdicionEnsalada,        
              perraGrandeAdicionSalchichaGrande   : listaPerros.perraGrandeAdicionSalchichaGrande,              
              perraGrandeAdicionSalchichaPequegna : listaPerros.perraGrandeAdicionSalchichaPequegna,         

            pequegnaPerra         : dataProduc.pequegnaPerra,     
              perraPequegnaIngredienteEnsalada       : listaPerros.perraPequegnaIngredienteEnsalada,           
              perraPequegnaIngredienteRipio          : listaPerros.perraPequegnaIngredienteRipio,       
              perraPequegnaIngredienteQueso          : listaPerros.perraPequegnaIngredienteQueso,       
              perraPequegnaAdicionTocineta           : listaPerros.perraPequegnaAdicionTocineta,       
              perraPequegnaAdicionQueso              : listaPerros.perraPequegnaAdicionQueso,   
              perraPequegnaAdicionEnsalada           : listaPerros.perraPequegnaAdicionEnsalada,       
              perraPequegnaAdicionSalchichaGrande    : listaPerros.perraPequegnaAdicionSalchichaGrande,             
              perraPequegnaAdicionSalchichaPequegna  : listaPerros.perraPequegnaAdicionSalchichaPequegna,               
            // datos domicilio
            nombre                : dataForm.nombre,
            barrio                : dataForm.barrio,
            direccion             : dataForm.direccion,
            mensaje               : dataForm.mensaje,   
            telefono              : dataForm.telefono, 
          );
        },
        // backgroundColor: Colors.red,
        backgroundColor: Color.fromRGBO(239 , 184, 16, 1),
        child: Icon(
          Icons.shopping_cart,
          size: 50,
        ),
      ),
      
      body: ImportarFactura(),
    );
  }

}