import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku/models/Item_build.dart';


// ignore: camel_case_types
class itemPhInfo extends StatelessWidget {
  const itemPhInfo({super.key, required this.item});

  final Item item;



  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Container(
        //   color: Color(0xffFFF4DC),
        //   child: Image.asset(
        //     widget.item.image!,
        //   ),
        // ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item.jpText,
                style: const TextStyle(fontSize: 20, color: Colors.white),
              ),
              Text(
                item.enText,
                style: const TextStyle(fontSize: 20, color: Colors.white),
              ),
            ],
          ),
        ),
        const Spacer(
          flex: 1,
        ),
        IconButton(
          onPressed: () {
            final player = AudioPlayer();

            player.play(AssetSource(item.sound));
          },
          icon: const Icon(
            Icons.play_arrow_sharp,
            size: 32,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
  }


