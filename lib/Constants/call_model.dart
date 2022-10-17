import 'package:flutter/cupertino.dart';

class CallModel {
  final String? myContactImage;
  final String? myContactName;
  final IconData? lastCallStatus;
  final IconData? callStatus;
  final Duration? duration;

  CallModel(
      {required this.myContactImage,
      required this.myContactName,
      required this.lastCallStatus,
      required this.duration,
      required this.callStatus,
      });
}
