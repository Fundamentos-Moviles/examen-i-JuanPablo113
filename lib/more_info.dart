import 'package:flutter/material.dart';
import 'package:examen1_pppj/utils/constants.dart' as con;

class more_info extends StatefulWidget {
  const more_info({super.key});

  @override
  State<more_info> createState() => _more_infoState();
}

class _more_infoState extends State<more_info> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Align(alignment: Alignment.center,
                child:
                Padding(padding: EdgeInsets.only(left: 30.0, right: 30.0),
                  child:ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: con.botones,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      fixedSize: Size(250, 40),
                    ),
                    onPressed:(){
                      con.cont == 12 ? con.cont = 0: con.cont++;
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Iniciar Sesión",
                            style: TextStyle(color: con.logcon,fontSize: 21.0, fontWeight: FontWeight.w400)
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SingleChildScrollView(
                child:
                Column(
                  children: [
                    Expanded(child: con.cont == 1 ? newb():nonewb(color: con.cont%2 == 0 ? con.fondo4:con.fondo2),),
                  ],
                )
              )

            ],
          )
        ],
      ),
    );
  }
}

class newb extends StatelessWidget {
  const newb({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child:
          Container(
            height: 100,
            width: MediaQuery.of(context).size.width,
            color: con.fondo,
          ),
        )
      ],
    );
  }
}

class nonewb extends StatelessWidget {
  final Color color;
  const nonewb({
    super.key, required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
          height: 100,
          width: MediaQuery.of(context).size.width,
          color: color,
        );

  }
}
