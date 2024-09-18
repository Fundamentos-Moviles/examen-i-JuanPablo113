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

                  },
                  child: SingleChildScrollView(

                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
