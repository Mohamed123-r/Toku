import 'package:flutter/material.dart';
import 'package:toku/components/item_info.dart';
import 'package:toku/models/Item_build.dart';

// ignore: must_be_immutable
class ColorsPage extends StatelessWidget {
  ColorsPage({super.key});

  List<Item> color = [

    const Item(
      sound: 'sounds/colors/black.wav',
      jpText: 'Burakku',
      enText: 'black',
      image: 'assets/images/color/color_black.png',
    ),
     const Item(
      sound: 'sounds/colors/brown.wav',
      jpText: 'Chairo',
      enText: 'brown',
      image: 'assets/images/color/color_brown.png',
    ),

     const Item(
      sound: 'sounds/colors/gray.wav',
      jpText: 'Gure',
      enText: 'gray',
      image: 'assets/images/color/color_gray.png',
    ),
     const Item(
      sound: 'sounds/colors/green.wav',
      jpText: 'Midori',
      enText: 'green',
      image: 'assets/images/color/color_green.png',
    ),
     const Item(
      sound: 'sounds/colors/red.wav',
      jpText: 'Aka',
      enText: 'red',
      image: 'assets/images/color/color_red.png',
    ),
     const Item(
      sound: 'sounds/colors/white.wav',
      jpText: 'Shiro',
      enText: 'white',
      image: 'assets/images/color/color_white.png',
    ),
     const Item(
      sound: 'sounds/colors/yellow.wav',
      jpText: 'Kiiro',
      enText: 'yellow',
      image: 'assets/images/color/yellow.png',
    ),
    const Item(
      sound: 'sounds/colors/dusty yellow.wav',
      jpText: 'Dasutiierō',
      enText: 'dusty yellow',
      image: 'assets/images/color/color_dusty_yellow.png',
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff04263D),
        title: const Text('Colors'),
      ),
      body: ListView.builder(
        itemCount: color.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 100,
            color: const Color(0xff3990A1),
            child: itemInfo(
              item: color[index],
            ),
          );
        },
      ),
    );
  }
}
