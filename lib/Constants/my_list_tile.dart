import 'package:flutter/material.dart';
import 'package:whatsapp/main.dart';


class MyListTile extends StatelessWidget {
  final String? leftImage;
  final String? title;
  final String? subtitle;
  const MyListTile({ required this.title, required this.subtitle,required this.leftImage, Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(boxShadow: [BoxShadow(color: Color(0xFF101D24))]),
      child: ListTile(
        leading: ClipOval(
          child: 
          leftImage== 'assets/8s.png'? RotatedBox(
            quarterTurns: 1,
            child: Image(image: AssetImage(leftImage!),))
            :
             Image(image: AssetImage(leftImage!),)
          ),
        title: Text(title!, style: whiteText,),
        subtitle: Text(subtitle!, style: greyText,),
      ),
    );
  }
}