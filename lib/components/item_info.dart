import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku/models/Item_build.dart';

// ignore: camel_case_types
class itemInfo extends StatefulWidget {
  itemInfo({super.key, required this.item});

  final Item item;

  @override
  State<itemInfo> createState() => _itemInfoState();
}

// ignore: camel_case_types
class _itemInfoState extends State<itemInfo> {
  bool test = true;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          color: const Color(0xffFFF4DC),
          child: Image.asset(
            widget.item.image!,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.item.jpText,
                style: const TextStyle(fontSize: 20, color: Colors.white),
              ),
              Text(
                widget.item.enText,
                style: const TextStyle(fontSize: 20, color: Colors.white),
              ),
            ],
          ),
        ),
        const Spacer(
          flex: 1,
        ),
        IconButton(
          onPressed: () async {
            final player = AudioPlayer();
            player.play(AssetSource(widget.item.sound));
            setState(() => test = false);
            await Future.delayed(Duration(seconds: 1));

            setState(() => test = true);
          },
          icon: Icon(
            test == true ? Icons.play_arrow_sharp : Icons.pause,
            size: 32,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
