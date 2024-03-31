import 'package:campusmatch/widgets/FormPaso1Cuenta.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Paso1Cuenta extends StatelessWidget {
  const Paso1Cuenta({super.key});

  @override
  Widget build(BuildContext context) {
    final Size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //Expanded(
              Container(
              child: Container(
                width: double.infinity,
                height: Size.height * 0.15, 
                //color: Colors.amber,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("C", style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold ),),
                    Icon(FontAwesomeIcons.book, size: 35,),
                    Text("mpusM", style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold ),),
                    Icon(FontAwesomeIcons.solidHeart, size: 35,),
                    Text("tch", style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold ),),
                  ],
                ),
              ),
            ),

          FormPaso1Cuenta(),
        
        
          ],
              ),
      ),
          );
  }
}
