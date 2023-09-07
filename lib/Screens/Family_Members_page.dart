
import 'package:flutter/material.dart';
import 'package:toku/components/item_info.dart';
import 'package:toku/models/Item_build.dart';

// ignore: must_be_immutable
class FamilyMembesPage extends StatelessWidget {
  FamilyMembesPage({super.key});

  List<Item> familyMembers = [

     const Item(
      sound: 'sounds/famely_member/grand father.wav',
      jpText: 'Musume',
      enText: 'daughter',
      image: 'assets/images/famely_member/family_daughter.png',
    ),
     const Item(
      sound: 'sounds/famely_member/grand mother.wav',
      jpText: 'Chichioya',
      enText: 'father',
      image: 'assets/images/famely_member/family_father.png',
    ),
     const Item(
      sound: 'sounds/famely_member/mother.wav',
      jpText: 'Sofu',
      enText: 'grandfather',
      image: 'assets/images/famely_member/family_grandfather.png',
    ),
    const Item(
      sound: 'sounds/famely_member/older bother.wav',
      jpText: 'Sobo',
      enText: 'grandmother',
      image: 'assets/images/famely_member/family_grandmother.png',
    ),
    const Item(
      sound: 'sounds/famely_member/older sister.wav',
      jpText: 'Hahaoya',
      enText: 'mother',
      image: 'assets/images/famely_member/family_mother.png',
    ),
   const Item(
      sound: 'sounds/famely_member/son.wav',
      jpText: 'Kyōdai',
      enText: 'brother',
      image: 'assets/images/famely_member/family_older_brother.png',
    ),
    const Item(
      sound: 'sounds/famely_member/daughter.wav',
      jpText: 'Ane',
      enText: 'older sister',
      image: 'assets/images/famely_member/family_older_sister.png',
    ),
     const Item(
      sound: 'sounds/famely_member/father.wav',
      jpText: 'Musuko',
      enText: 'son',
      image: 'assets/images/famely_member/family_son.png',
    ),
   const Item(
      sound: 'sounds/famely_member/younger brohter.wav',
      jpText: 'Otōto',
      enText: 'younger brother',
      image: 'assets/images/famely_member/family_younger_brother.png',
    ),
     const Item(
      sound: 'sounds/famely_member/younger sister.wav',
      jpText: 'Imōto',
      enText: 'younger sister',
      image: 'assets/images/famely_member/family_younger_sister.png',
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Famely Members'),
        backgroundColor: const Color(0xff04263D),
      ),
      body: ListView.builder(
        itemCount: familyMembers.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 100,
            color: const Color(0xff80A29F),
            child: itemInfo(
              item: familyMembers[index],
            ),
          );
        },
      ),
    );
  }
}

