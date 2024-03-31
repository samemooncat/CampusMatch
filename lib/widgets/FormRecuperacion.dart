import 'package:campusmatch/screens/CodigoRecuperacion.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

class FormRecuperacion extends StatefulWidget {
  const FormRecuperacion({super.key});

  @override
  State<FormRecuperacion> createState() => _FormRecuperacionState();
}

class _FormRecuperacionState extends State<FormRecuperacion> {
  @override
  Widget build(BuildContext context) {
    final Size = MediaQuery.of(context).size;
    return Container(
      //color: Colors.brown,
      child: Column(
        children: [
          Container(
            //color: Colors.greenAccent,
            child: 
              Text('¿Tienes problemas para ingresar?', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),),
          ),
                
          SizedBox(
            height: 5,
          ),

          Container(
            //color: Colors.grey,
            width: Size.width * 0.8,
            child: Center(
              child: Text(
                'Introduce tu correo electrónico y te enviaremos un enlace para que vuelvas a entrar a tu cuenta',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ),
          ),

          SizedBox(
            height: 20,
          ),
          _InputEmail(Size),
          SizedBox(
            height: 15,
          ),

          Container(
            width: Size.width * 0.9,
            height: 50,
            child: ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> CodigoRecuperacion()));  
            },
            style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
              side: BorderSide(color: Colors.black, width: 3),
            ),
            backgroundColor: Colors.black,
            ),
            child: Text('SIGUIENTE', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),),
            ),
          ),
        ],   
      ),
    );
  }

  Container _InputEmail(Size Size) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Colors.grey),
      ),
      padding: EdgeInsets.symmetric(horizontal: Size.width * 0.05),
      margin: EdgeInsets.symmetric(horizontal: Size.width * 0.05),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        style: TextStyle(fontSize: 16),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: "Correo electrónico",
        ),
      ),
    );
  }
}