import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:campusmatch/screens/Login.dart';

class FormCodigoRecuperacion extends StatefulWidget {
  const FormCodigoRecuperacion({super.key});

  @override
  State<FormCodigoRecuperacion> createState() => _FormCodigoRecuperacionState();
}

class _FormCodigoRecuperacionState extends State<FormCodigoRecuperacion> {
  @override
  Widget build(BuildContext context) {
    final Size = MediaQuery.of(context).size;
    return Container(
      //color: Colors.brown,
      child: Column(
        children: [
          Container(
            //color: Colors.greenAccent,
            width: Size.width * 0.8,
            child: 
              Text('Te enviamos un código a tu correo electrónico', 
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),),
          ),
                
          SizedBox(
            height: 5,
          ),

          Container(
            //color: Colors.grey,
            width: Size.width * 0.8,
            child: Center(
              child: Text(
                'Hemos enviado un código de reputación de contraseña al correo que nos brindaste',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ),
          ),

          SizedBox(
            height: 20,
          ),
          _InputCodigo(Size),
          SizedBox(
            height: 15,
          ),

          Container(
            width: Size.width * 0.9,
            height: 50,
            child: ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Login()));
            },
            style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
              side: BorderSide(color: Colors.black, width: 3),
            ),
            backgroundColor: Colors.black,
            ),
            child: Text('ENVIAR', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),),
            ),
          ),
        ],   
      ),
    );
  }

  Container _InputCodigo(Size Size) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Colors.grey),
      ),
      padding: EdgeInsets.symmetric(horizontal: Size.width * 0.05),
      margin: EdgeInsets.symmetric(horizontal: Size.width * 0.05),
      child: TextFormField(
        keyboardType: TextInputType.number,
        style: TextStyle(fontSize: 16),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: "Codigo",
        ),
      ),
    );
  }
}