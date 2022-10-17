import 'package:flutter/cupertino.dart';

class ChatModel {
  final String? myContactImage;
  final String? myContactName;
  final String? lastMsg;
  final IconData? lastMsgStatus;
  final Duration? duration;

  ChatModel(
      {required this.myContactImage,
      required this.myContactName,
      required this.lastMsg,
      required this.lastMsgStatus,
      required this.duration,
      });
}
