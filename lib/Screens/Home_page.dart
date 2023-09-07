import 'package:flutter/material.dart';
import 'package:toku/Screens/Number_page.dart';
import 'package:toku/Screens/Family_Members_page.dart';
import 'package:toku/Screens/Colors_page.dart';
import 'package:toku/Screens/Phrases_page.dart';
import 'package:toku/components/item_home.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff04263D),
        centerTitle: true,
        title: Text(
          'Toku',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Wrap(
        children: [
          Expanded(
            child: Catagory(
              text: 'Numbers',
              colors: Color(0xff1C6F82),
              ontap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (con) {
                      return NumbersPage();
                    },
                  ),
                );
              },
            ),
          ),

          Expanded(
            child: Catagory(
              text: 'Colors',
              colors: Color(0xff3990A1),
              ontap: () { Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (con) {
                    return ColorssPage();
                  },
                ),
              );},
            ),
          ),
          Expanded(
            child: Catagory(
              text: 'Family Members',
              colors: Color(0xff80A29F),
              ontap: () { Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (con) {
                    return FamilyMembesPage();
                  },
                ),
              );},
            ),
          ),
          Expanded(
            child: Catagory(
              text: 'Phrases',
              colors: Color(0xffADC2B6),
              ontap: () { Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (con) {
                    return PhrasesPage();
                  },
                ),
              );},
            ),
          ),
        ],
      ),
    );
  }
}
