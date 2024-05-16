import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:campusmatch/screens/Paso1Cuenta.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:firebase_core/firebase_core.dart';

class FormRegistrarme extends StatefulWidget {
  const FormRegistrarme({super.key});

  @override
  State<FormRegistrarme> createState() => _FormRegistrarmeState();
}

class _FormRegistrarmeState extends State<FormRegistrarme> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final Size = MediaQuery.of(context).size;
    return Container(
      //color: Colors.brown,
      child: Column(
        children: [
          Container(
            //color: Colors.greenAccent,
            child: Text(
              'Cree una cuenta',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          Container(
            //color: Colors.grey,
            child: Text(
              'Escriba su email para crear una',
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          _InputNombre(Size),
          SizedBox(
            height: 15,
          ),
          _InputEmail(Size),
          SizedBox(
            height: 15,
          ),
          _InputContrasena(Size),
          SizedBox(
            height: 15,
          ),
          Container(
            width: Size.width * 0.9,
            height: 50,
            child: ElevatedButton(
              // onPressed: () {
              //   Navigator.push(context, MaterialPageRoute(builder: (context)=> Paso1Cuenta()));
              // },
              onPressed: () async {
                try {
                  UserCredential userCredential = await FirebaseAuth.instance
                      .createUserWithEmailAndPassword(
                          email: _emailController.text,
                          password: _passwordController.text);
                          Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Paso1Cuenta()));
                } on FirebaseAuthException catch (e) {
                  if (e.code == 'weak-password') {
                    print('La contrasñea es muy debil');
                  } else if (e.code == 'email-already-in-use') {
                    print('La cuenta ya existe');
                  }
                } catch (e) {
                  print(e);
                }
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                  side: BorderSide(color: Colors.black, width: 3),
                ),
                backgroundColor: Colors.black,
              ),
              child: Text(
                'CREAR CUENTA',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 1,
                width: (Size.width * 0.8 - 100) / 2,
                color: Colors.grey,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  'O continúa con',
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ),
              Container(
                height: 1,
                width: (Size.width * 0.8 - 100) / 2,
                color: Colors.grey,
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: Size.width * 0.9,
            height: 50,
            child: ElevatedButton(
              onPressed: () {
                // Lógica Google
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                  side: BorderSide(color: Colors.black, width: 3),
                ),
                backgroundColor: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    FontAwesomeIcons.google,
                    color: Colors.black,
                  ),
                  SizedBox(
                      width:
                          5), // Ajusta el espacio entre la imagen y el texto según sea necesario
                  Text(
                    'Google',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container _InputNombre(Size Size) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Colors.grey),
      ),
      padding: EdgeInsets.symmetric(horizontal: Size.width * 0.05),
      margin: EdgeInsets.symmetric(horizontal: Size.width * 0.05),
      child: TextFormField(
        keyboardType: TextInputType.text,
        style: TextStyle(fontSize: 16),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: "Nombre de usuario",
        ),
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
        controller: _emailController,
        keyboardType: TextInputType.emailAddress,
        style: TextStyle(fontSize: 16),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: "Correo@dominio.com",
        ),
      ),
    );
  }

  Container _InputContrasena(Size Size) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Colors.grey),
      ),
      padding: EdgeInsets.symmetric(horizontal: Size.width * 0.05),
      margin: EdgeInsets.symmetric(horizontal: Size.width * 0.05),
      child: TextFormField(
        controller: _passwordController,
        keyboardType: TextInputType.text,
        style: TextStyle(fontSize: 16),
        obscureText: true, // Oculta el texto ingresado
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: "Contraseña",
        ),
      ),
    );
  }
}
