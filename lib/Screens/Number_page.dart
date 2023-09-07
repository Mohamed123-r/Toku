import 'package:flutter/material.dart';
import 'package:toku/components/item_info.dart';
import 'package:toku/models/Item_build.dart';

// ignore: must_be_immutable
class NumbersPage extends StatefulWidget {
  NumbersPage({super.key});

  @override
  State<NumbersPage> createState() => _NumbersPageState();
}

class _NumbersPageState extends State<NumbersPage> {
  List<Item> number = [
    const Item(
      sound: 'sounds/numbers/number_one_sound.mp3',
      jpText: 'Ichi',
      enText: 'one',
      image: 'assets/images/number/number_one.png',
    ),
    const Item(
      sound: 'sounds/numbers/number_two_sound.mp3',
      jpText: 'Ni',
      enText: 'two',
      image: 'assets/images/number/number_two.png',
    ),
    const Item(
      sound: 'sounds/numbers/number_three_sound.mp3',
      jpText: 'San',
      enText: 'three',
      image: 'assets/images/number/number_three.png',
    ),
    const Item(
      sound: 'sounds/numbers/number_four_sound.mp3',
      jpText: 'Shi',
      enText: 'four',
      image: 'assets/images/number/number_four.png',
    ),
    const Item(
      sound: 'sounds/numbers/number_five_sound.mp3',
      jpText: 'Go',
      enText: 'five',
      image: 'assets/images/number/number_five.png',
    ),
    const Item(
      sound: 'sounds/numbers/number_six_sound.mp3',
      jpText: 'Roku',
      enText: 'six',
      image: 'assets/images/number/number_six.png',
    ),
    const Item(
      sound: 'sounds/numbers/number_seven_sound.mp3',
      jpText: 'Sebun',
      enText: 'seven',
      image: 'assets/images/number/number_seven.png',
    ),
    const Item(
      sound: 'sounds/numbers/number_eight_sound.mp3',
      jpText: 'hachi',
      enText: 'eight',
      image: 'assets/images/number/number_eight.png',
    ),
    const Item(
      sound: 'sounds/numbers/number_nine_sound.mp3',
      jpText: 'Kyū',
      enText: 'nine',
      image: 'assets/images/number/number_nine.png',
    ),
    const Item(
      sound: 'sounds/numbers/number_ten_sound.mp3',
      jpText: 'Jū',
      enText: 'ten',
      image: 'assets/images/number/number_ten.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff04263D),
        title: const Text('Numbers'),
      ),
      body: ListView.builder(
        itemCount: number.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 100,
            color: const Color(0xff1C6F82),
            child: itemInfo(
              item: number[index],
            ),
          );
        },
      ),
    );
  }
}
