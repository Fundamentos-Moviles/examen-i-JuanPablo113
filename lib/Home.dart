import 'package:examen1_pppj/more_info.dart';
import 'package:flutter/material.dart';
import 'package:examen1_pppj/utils/constants.dart' as con;

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: con.fondo2,
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 10, right: 20, left: 20,),
            child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: con.logcon,
                borderRadius: BorderRadius.circular(15),
              ),
              child:
              Text("Notificaciones de actividades",
                style: TextStyle(
                    color: con.titulos,fontSize: 25.0, fontWeight: FontWeight.w400
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 70, right: 20, left: 20,),
            child: SingleChildScrollView(
              child:
              Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height - 150,
                    width: MediaQuery.of(context).size.width,
                    child:
                    ListView.builder(
                        padding: const EdgeInsets.all(8),
                        itemCount: con.listaExamen.length,
                        itemBuilder: (BuildContext context, int index){
                          var datos = con.listaExamen[index].toString().split('#');
                          print('ID: ${datos[0]}');

                          return int.parse(datos[1])%2 == 0 ? cardbot(
                            orden: datos[1],
                            id: int.parse(datos[0]),
                          ):card(orden: datos[1]);
                        }
                    ),
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: Text(
                "Segunda Vista: Penilla Padrón Juan Pablo",
                style: TextStyle(
                  color: con.titulos,
                  fontSize: 25.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class cardbot extends StatelessWidget {
  final String orden;
  final List lista = con.listaExamen;
  final int id;

  const cardbot({
    super.key, required this.orden, required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(top: 10, right: 20, left: 20,),
      child: Row(
        children: [
          Expanded(child: Container(
              height: 80,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: con.logcon,
                borderRadius: BorderRadius.circular(15),
              ),
              child:
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,  // Alinea los hijos en los extremos
                  children:[
                    Text(
                      orden,
                      style: TextStyle(fontSize: 18),
                    ),
                    Icon(Icons.energy_savings_leaf_outlined, size: 24),
                  ]// Icono a la derecha
              )
          ),),
          Expanded(child: Container(
              height: 80,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: con.logcon,
                borderRadius: BorderRadius.circular(15),
              ),
              child:
                  Column(
                    children: [
                      Align(alignment: Alignment.center,
                        child: Row(// Alinea los hijos en los extremos
                          children:[
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: con.botones,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  fixedSize: Size(250, 40),
                                ),
                                onPressed:(){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => more_info()));
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Ver más",
                                        style: TextStyle(color: con.logcon,fontSize: 21.0, fontWeight: FontWeight.w400)
                                    ),
                                    Icon(Icons.edit),
                                  ],
                                )
                            ),
                          ]// Icono a la derecha
                      ),
                      ),
                      Align(alignment: Alignment.center,
                        child: Row(// Alinea los hijos en los extremos
                            children:[
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: con.botones,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    fixedSize: Size(250, 40),
                                  ),
                                  onPressed:(){
                                    lista.removeAt(id);
                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Eliminar",
                                          style: TextStyle(color: con.logcon,fontSize: 21.0, fontWeight: FontWeight.w400)
                                      ),
                                      Icon(Icons.delete),
                                    ],
                                  )
                              ),
                            ]// Icono a la derecha
                        ),
                      ),
                    ],
                  )

          ),),

        ],
      ),
    );
  }
}

class card extends StatelessWidget {
  final String orden;

  const card({
    super.key, required this.orden,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(top: 10, right: 20, left: 20,),
      child: Row(
        children: [
          Expanded(child: Container(
              height: 80,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: con.logcon,
                borderRadius: BorderRadius.circular(15),
              ),
              child:
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,  // Alinea los hijos en los extremos
                  children:[
                    Text(
                      orden,
                      style: TextStyle(fontSize: 18),
                    ),
                    Icon(Icons.energy_savings_leaf_outlined, size: 24),
                  ]// Icono a la derecha
              )
          ),),
        ],
      ),
    );
  }
}
///height: MediaQuery.of(context).size.height,
///width: MediaQuery.of(context).size.width,