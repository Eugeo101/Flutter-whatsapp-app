import 'package:flutter/material.dart';
import 'package:whatsapp/Constants/call_model.dart';
import 'package:whatsapp/main.dart';
import 'package:whatsapp/routes/chats.dart';

List<CallModel> arr = [
  CallModel(
      myContactImage: '1.png',
      myContactName: 'Ahmed Magdi 22',
      lastCallStatus:
          1 == rng.nextInt(3) ? Icons.call_received : Icons.call_made,
      duration:
          Duration(hours: 1 + rng.nextInt(12), minutes: 1 + rng.nextInt(60)),
      callStatus: 1 == rng.nextInt(2) ? Icons.videocam: Icons.call),
  CallModel(
      myContactImage: '3.png',
      myContactName: 'استااااا',
      lastCallStatus:
          1 == rng.nextInt(3) ? Icons.call_received : Icons.call_made,
      duration:
          Duration(hours: 1 + rng.nextInt(12), minutes: 1 + rng.nextInt(60)),
      callStatus: 1 == rng.nextInt(2) ? Icons.videocam: Icons.call),
  CallModel(
      myContactImage: '5.png',
      myContactName: 'Ahmed Khaled اخ',
      lastCallStatus:
          1 == rng.nextInt(3) ? Icons.call_received : Icons.call_made,
      duration:
          Duration(hours: 1 + rng.nextInt(12), minutes: 1 + rng.nextInt(60)),
      callStatus: 1 == rng.nextInt(2) ? Icons.videocam: Icons.call),
  CallModel(
      myContactImage: '7.png',
      myContactName: 'Ola Rashed',
      lastCallStatus:
          1 == rng.nextInt(3) ? Icons.call_received : Icons.call_made,
      duration:
          Duration(hours: 1 + rng.nextInt(12), minutes: 1 + rng.nextInt(60)),
      callStatus: 1 == rng.nextInt(2) ? Icons.videocam: Icons.call),
  CallModel(
      myContactImage: '11.png',
      myContactName: 'Jody Sister',
      lastCallStatus:
          1 == rng.nextInt(3) ? Icons.call_received : Icons.call_made,
      duration:
          Duration(hours: 1 + rng.nextInt(12), minutes: 1 + rng.nextInt(60)),
      callStatus: 1 == rng.nextInt(2) ? Icons.videocam: Icons.call),
  CallModel(
      myContactImage: '4.png',
      myContactName: 'Ahmed Emaaad',
      lastCallStatus:
          1 == rng.nextInt(3) ? Icons.call_received : Icons.call_made,
      duration:
          Duration(hours: 1 + rng.nextInt(12), minutes: 1 + rng.nextInt(60)),
      callStatus: 1 == rng.nextInt(2) ? Icons.videocam: Icons.call),
  CallModel(
      myContactImage: '6.png',
      myContactName: 'Ahmed lelosh',
      lastCallStatus:
          1 == rng.nextInt(3) ? Icons.call_received : Icons.call_made,
      duration:
          Duration(hours: 1 + rng.nextInt(12), minutes: 1 + rng.nextInt(60)),
      callStatus: 1 == rng.nextInt(2) ? Icons.videocam: Icons.call),
  CallModel(
      myContactImage: '8.png',
      myContactName: 'Noha Khaled',
      lastCallStatus:
          1 == rng.nextInt(3) ? Icons.call_received : Icons.call_made,
      duration:
          Duration(hours: 1 + rng.nextInt(12), minutes: 1 + rng.nextInt(60)),
      callStatus: 1 == rng.nextInt(2) ? Icons.videocam: Icons.call),
  CallModel(
      myContactImage: '9.png',
      myContactName: 'Yousef 4lby',
      lastCallStatus:
          1 == rng.nextInt(3) ? Icons.call_received : Icons.call_made,
      duration:
          Duration(hours: 1 + rng.nextInt(12), minutes: 1 + rng.nextInt(60)),
      callStatus: 1 == rng.nextInt(2) ? Icons.videocam: Icons.call),
];

/*
  (
      duration:
          Duration(minutes: 1 + rng.nextInt(60), hours: 1 + rng.nextInt(12)),
      myContactImage: '6.png',
      myContactName: 'ِAhmed Lelosh',
      lastMsg: 'صاحي يسطل؟',
      lastMsgStatus: Icons.done_all),
*/

class Calls extends StatelessWidget {
  const Calls({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            boxShadow: [BoxShadow(color: Color(0xFF101D24))]),
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: ListView.builder(
              itemCount: arr.length,
              itemBuilder: (BuildContext context, int i) {
                return ListTile(
                  leading: ClipOval(
                      child:
                          Image(image: AssetImage('assets/${arr[i].myContactImage}'))),
                  trailing: Icon(
                    arr[i].callStatus,
                    size: 25,
                    color: const Color(0xFF00AF9C),
                  ),
                  title: Text(
                    arr[i].myContactName!,
                    style: whiteText,
                  ),
                  subtitle: Row(
                    children: [
                      Icon(arr[i].lastCallStatus,
                          size: 18,
                          color: arr[i].lastCallStatus == Icons.call_made
                              ? const Color(0xFF00AF9C)
                              : Colors.red),
                      const Padding(padding: EdgeInsets.only(left: 2)),
                      Text('${timeFormat(arr[i].duration!)} ${1 == rng.nextInt(3)? 'AM':'PM'}', style: greyText),
                    ],
                  ),
                );
              }),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('new call button pressed');
        },
        backgroundColor: const Color(0xFF00AF9C),
        child: const Icon(Icons.add_ic_call),
      ),
    );
  }
}

String timeFormat(Duration d) {
  String str = d.toString();
  String result = '';
  int start = 0;
  int end = 0;
  for (int i = 0; i < str.length; i++) {
    if (str[i] == ':' && start == 0) {
      start = i + 1;
    } else if (str[i] == ':' && start != 0) {
      end = i - 1;
    }
  }
  String substr = d.toString().substring(start, end + 1);
  if (substr.length < 2) {
    result = d.toString().substring(0, start) +
        substr +
        '0';
  } else {
    result =
        d.toString().substring(0, start) + substr;
  }
  return result;
}
