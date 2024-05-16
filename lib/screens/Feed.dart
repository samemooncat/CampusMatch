import 'package:flutter/material.dart';
import 'package:campusmatch/widgets/ProfilesSelection.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Feed extends StatelessWidget {
  const Feed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: size.height * 0.15,
            //color: Colors.amber,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "C",
                  style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[90]),
                ),
                Icon(FontAwesomeIcons.book, size: 35, color: Colors.grey[90]),
                Text(
                  "mpusM",
                  style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[90]),
                ),
                Icon(FontAwesomeIcons.solidHeart,
                    size: 35, color: Colors.grey[90]),
                Text(
                  "tch",
                  style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[90]),
                ),
              ],
            ),
          ),
          Expanded(
            child: ProfilesSelection(),
          ),
        ],
      ),
    );
  }
}
