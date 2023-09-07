import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku/models/Item_build.dart';


class itemInfo extends StatefulWidget {
  const itemInfo({super.key, required this.item});

  final Item item;

  @override
  State<itemInfo> createState() => _itemInfoState();
}

class _itemInfoState extends State<itemInfo> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          color: Color(0xffFFF4DC),
          child: Image.asset(
            widget.item.image,
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
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              Text(
                widget.item.enText,
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ],
          ),
        ),
        Spacer(
          flex: 1,
        ),
        IconButton(
          onPressed: () {
            final player = AudioPlayer();
             player.play(AssetSource(widget.item.sound));
          },
          icon: Icon(
            Icons.play_arrow_sharp,
            size: 32,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
