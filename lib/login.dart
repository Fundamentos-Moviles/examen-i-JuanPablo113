import 'package:flutter/material.dart';
import 'package:examen1_pppj/Home.dart';
import 'package:examen1_pppj/utils/constants.dart' as con;

//Contener o ayudar los cambios de estado
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

//Donde se construyen nuestras vistas
class _LoginState extends State<Login> {
  //apartado para crear nuestras variables
  final usuario = TextEditingController(); //<-recomendado usar mejor el final que lo siguiente
  TextEditingController pass = TextEditingController();

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      //Stack = constructor que cada elemto (widget) que usemos se sobrepone uno sobre otro (pila)
      //Position = para que no se empalme lo de Stack
        body: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: con.fondo2,
                ),
              ),
              Expanded(child:
              Column(
                children: [
                  Expanded(child: Row(
                    children: [
                      Expanded(child: Container(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: con.fondo,
                        ),
                      ),),
                      Expanded(child: Container(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: con.fondo2,
                        ),
                      ),),
                      Expanded(child: Container(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: con.fondo3,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),),
                      Expanded(child: Container(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: con.fondo4,
                        ),
                      ),),
                    ],
                  ),),
                  Expanded(child: Row(
                    children: [
                      Expanded(child: Container(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: con.fondo4,
                        ),
                      ),),
                      Expanded(child: Container(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: con.fondo3,
                        ),
                      ),),
                      Expanded(child: Container(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: con.fondo2,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),),
                      Expanded(child: Container(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: con.fondo,
                        ),
                      ),),
                    ],
                  ),),
                  Expanded(child: Row(
                    children: [
                      Expanded(child: Container(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: con.fondo3,
                        ),
                      ),),
                      Expanded(child: Container(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: con.fondo4,
                        ),
                      ),),
                      Expanded(child: Container(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: con.fondo,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),),
                      Expanded(child: Container(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: con.fondo2,
                        ),
                      ),),
                    ],
                  ),),
                ],
              ),
              ),
              Expanded(child: Padding(
                padding: EdgeInsets.only(top:100,left:100,bottom:100,right:100),
                child:
                Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: con.logcon,
                      backgroundBlendMode: BlendMode.overlay,
                    ),

                    child:Column(
                        mainAxisSize: MainAxisSize.min
                        ,children: [
                      const SizedBox(height: 30.0,),
                        const Text("Bienvenido a tu primer EXAMEN",
                          style: TextStyle(color: con.titulos,fontSize: 25.0, fontWeight: FontWeight.w400)

                      ),
                      const SizedBox(height: 30.0,),

                    Padding(padding: EdgeInsets.only(left: 50.0, right: 50.0),
                      child: TextFormField(
                        controller: usuario,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: con.logcon,
                          hintText: "Correo/Usuario",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            borderSide: BorderSide(
                              width: 10,
                              color: con.borde,
                              style: BorderStyle.solid,
                            ),
                          ),


                        ),
                      ),
                    ),

                      const SizedBox(height: 30.0,),

                      Padding(padding: EdgeInsets.only(left: 50.0, right: 50.0),
                        child: TextFormField(
                          obscureText: true,
                          controller: pass,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: con.logcon,
                            hintText: "Contraseña",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              borderSide: BorderSide(
                                width: 10,
                                color: con.borde,
                                style: BorderStyle.solid,
                              ),
                            ),
                          ),
                        ),
                      ),


                      Padding(padding: EdgeInsets.only(top:10,left:10,bottom:10,right:10),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: con.botones,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            fixedSize: Size(250, 40),
                          ),
                          onPressed:(){
                            validUser();
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Iniciar Sesión",
                                  style: TextStyle(color: con.logcon,fontSize: 21.0, fontWeight: FontWeight.w400)
                              ),
                            ],
                          )
                      ),
                      ),
                      Text("Mi primer examen, ¿estará sencillo?",
                          style: TextStyle(color: con.logcon,fontSize: 16.0, fontWeight: FontWeight.w400)
                      ),
                      const SizedBox(height: 30.0,),
                      //Icon(Icons.home)
                    ])),
              ),)
            ]
        )
    );
  }
  void validUser(){

    setState(() {
      print('Usuario: ${usuario.text}');
      print("Contraseña: " + pass.text);
      //solo se pued eingresar con usuario = ADMIN y pass = 12345
      //Un mensaje si es valido o incorrecto
      if (usuario.text == "test" && pass.text == "FDM1") {
        print("Usuario valido");
        showSB("Segunda Vista: Juan Pablo Penilla Padrón", 30);
        //Navigator.of(context).push();
        Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
      }else{
        print("Usuario invalido");
        showSB("Datos Incorrectos", 8);
      }
    });

  }
  void showSB(String texto, int duracion){
    final snackBar = SnackBar(
      content: Text(
        texto,
        textAlign: TextAlign.center,
      ),
      duration: Duration(seconds: duracion,),
      action: SnackBarAction(
        label: 'Cerrar',
        onPressed:(){

        },
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}

/*Expanded(child: Container(
                    height: MediaQuery.of(context).size.height*.30,
                    width: MediaQuery.of(context).size.width * .238,
                    decoration: BoxDecoration(
                      color: con.fondo2,
                    ),
                  ),),
                  Expanded(child: Container(
                    height: MediaQuery.of(context).size.height*.30,
                    width: MediaQuery.of(context).size.width * .238,
                    decoration: BoxDecoration(
                      color: con.fondo3,
                    ),
                  ),),
                  Expanded(child: Container(
                    height: MediaQuery.of(context).size.height*.30,
                    width: MediaQuery.of(context).size.width * .238,
                    decoration: BoxDecoration(
                      color: con.fondo4,
                    ),
                  ),),*/
/*Row(
                children: [
                  Expanded(child: Container(
                    height: MediaQuery.of(context).size.height*.30,
                    width: MediaQuery.of(context).size.width * .238,
                    decoration: BoxDecoration(
                      color: con.fondo,
                    ),
                  ),),
                  Expanded(child: Container(
                    height: MediaQuery.of(context).size.height*.30,
                    width: MediaQuery.of(context).size.width * .238,
                    decoration: BoxDecoration(
                      color: con.fondo2,
                    ),
                  ),),
                  Expanded(child: Container(
                    height: MediaQuery.of(context).size.height*.30,
                    width: MediaQuery.of(context).size.width * .238,
                    decoration: BoxDecoration(
                      color: con.fondo3,
                    ),
                  ),),
                  Expanded(child: Container(
                    height: MediaQuery.of(context).size.height*.30,
                    width: MediaQuery.of(context).size.width * .238,
                    decoration: BoxDecoration(
                      color: con.fondo4,
                    ),
                  ),),
                ],
              ),*/

