import 'package:flutter/material.dart';
import 'package:toku/components/itemPh_info.dart';
import 'package:toku/models/Item_build.dart';

// ignore: must_be_immutable
class PhrasesPage extends StatefulWidget {
  const PhrasesPage ({super.key});

  @override
  State<PhrasesPage> createState() => _PhrasesPageState();
}

class _PhrasesPageState extends State<PhrasesPage> {
  // ignore: non_constant_identifier_names
  List<Item> Phrases = [

    const Item(
      sound: 'sounds/phrases/are_you_coming.wav',
      jpText: 'Kimasu ka',
      enText: 'are you coming',

    ),
    const Item(
      sound: 'sounds/phrases/dont_forget_to_subscribe.wav',
      jpText: 'Dokku suru koto o wasurenaide ..',
      enText: 'don\'t forget to subscribe',

    ),
    const Item(
      sound: 'sounds/phrases/how_are_you_feeling.wav',
      jpText: 'Go kibun wa ikagadesu ka.',
      enText: 'how are you feeling',

    ),
    const Item(
      sound: 'sounds/phrases/i_love_anime.wav',
      jpText: 'Watashi wa anime ga daisukidesu',
      enText: 'i love anime',

    ),
    const Item(
      sound: 'sounds/phrases/i_love_programming.wav',
      jpText: 'Puroguramingu ga daisuki',
      enText: 'i love programming',

    ),
    const Item(
      sound: 'sounds/phrases/programming_is_easy.wav',
      jpText: 'Puroguramingu wa kantandesu',
      enText: 'programming is easy',

    ),
    const Item(
      sound: 'sounds/phrases/what_is_your_name.wav',
      jpText: 'Anata no namae wa nandesuka',
      enText: 'what is your name',

    ),
    const Item(
      sound: 'sounds/phrases/where_are_you_going.wav',
      jpText: 'Doko ni iku no',
      enText: 'where are you going',

    ),
    const Item(
      sound: 'sounds/phrases/where_are_you_going.wav',
      jpText: 'Doko ni iku no',
      enText: 'where are you going',

    ),
    const Item(
      sound: 'sounds/phrases/yes_im_coming.wav',
      jpText: 'Hai, kimasu',
      enText: 'yes im coming',

    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff04263D),
        title: const Text('Phrases'),
      ),
      body: ListView.builder(
        itemCount: Phrases.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 100,
            color: const  Color(0xffADC2B6),
            child: itemPhInfo(
              item: Phrases[index],
            ),
          );
        },
      ),
    );
  }
}
