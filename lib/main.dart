import 'package:campusmatch/screens/Inicio.dart';
import 'package:flutter/material.dart';
import 'package:campusmatch/screens/screens.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => Inicio(),
      },
      theme: ThemeData.light().copyWith(
          //appBarTheme: AppBarTheme(color: Colors.blueAccent)
          ),
    );
  }
}
