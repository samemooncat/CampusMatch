import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            width: double.infinity,
            color: Colors.amber,
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
      ],
    );
  }
}
