import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {//coloque el mouse y puse ctrl+.para que me agarrara la 
                                              //funcion de setState
  final estiloTexto = new TextStyle(fontSize: 32);

  int contador = 0;

 //se coloco una variable de tipo entero que es contador
  
 void sumar(){//coloque la funcion de sumar
   contador++;
   print(contador);//mediante esta funcion mande a llamar al contador
 }
 void restar(){//coloque la funcion de restar
   contador--;
    print(contador);//mande a llamar al contador
 }
  @override
  Widget build(BuildContext context) {

    
    /*return Scaffold(

      appBar:  AppBar(
        title: Text('hola grupo del 15701'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('Este es el mensaje de el cuerpo'),
      ),

    );*/
 
    return MaterialApp(
       
      theme: ThemeData(
        primarySwatch: Colors.pink,
     
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('titulo'), centerTitle: true),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            
            Text('Numero de Clicks', style: estiloTexto),
            Text('$contador', style: estiloTexto),//en vez de cero coloque el $contador para que lo
                                                  //imprimiera en la pantalla del telefono
             
          ],
        )),
        bottomNavigationBar: new BottomNavigationBar(//agregue un nuevo boton
          items: [
            new BottomNavigationBarItem(
        label: "sumar",
         icon: new IconButton(
         icon: new Icon(Icons.add),
        onPressed: (){
          setState(() {
                         sumar();//COLOQUE LA FUNCION DE setState y dentro 
                                     //coloque la funcion de sumar
                        });
          

        },
          ),
            ),
            new BottomNavigationBarItem(//agregue un boton de restar
              label: "restar",
              icon: new IconButton(
                icon: new Icon(Icons.delete),//coloque su icono de restar
                onPressed: (){
                     setState(() {
                          //COLOQUE LA FUNCION DE setState y dentro 
                           restar();          //coloque el contador++;
                        });
                  
                },
              ),
            ),


            new BottomNavigationBarItem(//agregue un boton de restar
              label: "Refrescar",
              icon: new IconButton(
                icon: new Icon(Icons.refresh),//coloque su icono de restar
                onPressed: (){
                     setState(() {
                          //COLOQUE LA FUNCION DE setState y dentro 
                           contador=0;          //coloque el contador++;
                        });
                  
                },
              ),
            )
            
          ],
        ),

        
        floatingActionButton: FloatingActionButton(
         child: Icon(Icons.cancel),//coloque el icono de cancelar y volver a cero
        onPressed:  (){
                       Navigator.push(
context, MaterialPageRoute(builder: (opcion)=> MyApp(context),
)
                       );
                     }
            
          
        ),

      ),
    );
  }
}
class MyApp extends StatelessWidget {
   final opcion;

  MyApp(this.opcion);
  Widget build(opcion) {
    return MaterialApp(

       home: Center(
         child: Text('Hola Mundo del 15701'),
       ), 

    );
  }
}