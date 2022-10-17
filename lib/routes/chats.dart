import 'package:flutter/material.dart';
import 'package:whatsapp/Constants/chat_model.dart';
import 'package:whatsapp/main.dart';
import 'dart:math';

var rng = Random();

List<ChatModel> arr = [
  ChatModel(
      duration:
          Duration(minutes: 1 + rng.nextInt(60), hours: 1 + rng.nextInt(12)),
      myContactImage: '1.png',
      myContactName: 'Ahmed Magdi 22',
      lastMsg: '0:03',
      lastMsgStatus: Icons.done_all),
  ChatModel(
      duration:
          Duration(minutes: 1 + rng.nextInt(60), hours: 1 + rng.nextInt(12)),
      myContactImage: '2.png',
      myContactName: 'CSE-IMP-Sec2',
      lastMsg:
          'Ahmed Said: https://m.facebook.com/story.php?story_fbid=4738979899470109&id=746338672067605',
      lastMsgStatus: Icons.done_all),
  ChatModel(
      duration:
          Duration(minutes: 1 + rng.nextInt(60), hours: 1 + rng.nextInt(12)),
      myContactImage: '3.png',
      myContactName: 'استااااا',
      lastMsg: 'نمنم',
      lastMsgStatus: Icons.done_all),
  ChatModel(
      duration:
          Duration(minutes: 1 + rng.nextInt(60), hours: 1 + rng.nextInt(12)),
      myContactImage: '4.png',
      myContactName: 'Ahmed Emaaad',
      lastMsg: '😂اسمع مني انا بقولك',
      lastMsgStatus: Icons.done_all),
  ChatModel(
      duration:
          Duration(minutes: 1 + rng.nextInt(60), hours: 1 + rng.nextInt(12)),
      myContactImage: '5.png',
      myContactName: 'Ahmed Khaled اخ',
      lastMsg: 'اخويا',
      lastMsgStatus: Icons.done_all),
  ChatModel(
      duration:
          Duration(minutes: 1 + rng.nextInt(60), hours: 1 + rng.nextInt(12)),
      myContactImage: '6.png',
      myContactName: 'ِAhmed Lelosh',
      lastMsg: 'صاحي يسطل؟',
      lastMsgStatus: Icons.done_all),
  ChatModel(
      duration:
          Duration(minutes: 1 + rng.nextInt(60), hours: 1 + rng.nextInt(12)),
      myContactImage: '7.png',
      myContactName: 'Ola Rashed',
      lastMsg: 'تمام مفيش مشكله',
      lastMsgStatus: Icons.done_all),
  ChatModel(
      duration:
          Duration(minutes: 1 + rng.nextInt(60), hours: 1 + rng.nextInt(12)),
      myContactImage: '8.png',
      myContactName: 'Noha Khaled',
      lastMsg: 'سرقتها',
      lastMsgStatus: Icons.done_all),
  ChatModel(
      duration:
          Duration(minutes: 1 + rng.nextInt(60), hours: 1 + rng.nextInt(12)),
      myContactImage: '9.png',
      myContactName: 'Yousef 4lby',
      lastMsg: 'معلش يسطا والله لسه شايف دلوقتي',
      lastMsgStatus: Icons.done_all),
  ChatModel(
      duration:
          Duration(minutes: 1 + rng.nextInt(60), hours: 1 + rng.nextInt(12)),
      myContactImage: '11.png',
      myContactName: 'Jody Sister',
      lastMsg: '❤️❤️❤️❤️❤️ ',
      lastMsgStatus: Icons.done_all),
];

class Chats extends StatelessWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            boxShadow: [BoxShadow(color: Color(0xFF101D24))]),
        // child: ListView.builder(
        //   itemCount: arr.length,
        //   itemBuilder: (BuildContext context, int i) {
        //     return ListTile(
        //       leading: ClipOval(
        //           child: Image(
        //               image: AssetImage('assets/${arr[i].myContactImage}'))),
        //       trailing: Icon(
        //         arr[i].lastMsgStatus,
        //         size: 18,
        //         color: i == rng.nextInt(10) ? const Color(0xFF979D9F) : const Color(0xFF33B4ED),
        //       ),
        //       title: Text(
        //         '${arr[i].myContactName}',
        //         style: whiteText,
        //       ),
        //       subtitle: Text('${arr[i].lastMsg}', style: greyText),
        //     );
        //   },
        // ),
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: ListView(
            children: [
              ListTile(
                leading: ClipOval(
                    child: Image(
                        image: AssetImage(
                            'assets/${arr[0].myContactImage!}'))), //image
                trailing: Text(
                  '${durationFormat(arr[0].duration!)} ${1 == rng.nextInt(3) ? 'AM' : 'PM'}',
                  style: greyText,
                ),
                title: Text(
                  '${arr[0].myContactName}',
                  style: whiteText,
                ), //name
                subtitle: Row(
                  children: [
                    Icon(arr[0].lastMsgStatus,
                        color: 1 == rng.nextInt(3)
                            ? const Color(0xFF979D9F)
                            : const Color(0xFF33B4ED),
                        size: 18),
                    Icon(Icons.mic,
                        size: 18,
                        color: 0 == rng.nextInt(10)
                            ? const Color(0xFF979D9F)
                            : const Color(0xFF33B4ED)),
                    Text(
                      arr[0].lastMsg!,
                      style: greyText,
                    )
                  ],
                ), //status and lastmsg
              ),
              ListTile(
                leading: ClipOval(
                    child: Image(
                        image: AssetImage(
                            'assets/${arr[1].myContactImage!}'))), //image
                trailing: Text(
                  '${durationFormat(arr[1].duration!)} ${1 == rng.nextInt(3) ? 'AM' : 'PM'}',
                  style: greyText,
                ),
                title: Text(
                  '${arr[1].myContactName}',
                  style: whiteText,
                ), //name
                subtitle: Row(
                  children: [
                    Icon(arr[1].lastMsgStatus,
                        color: 1 == rng.nextInt(3)
                            ? const Color(0xFF979D9F)
                            : const Color(0xFF33B4ED),
                        size: 18),
                    Text(
                      arr[1].lastMsg!.substring(0, 11),
                      style: greyText,
                    ),
                    const Icon(Icons.photo, color: Color(0xFF33B4ED), size: 18),
                    Text(
                      textFormat(arr[1].lastMsg!.substring(12)),
                      style: greyText,
                    ),
                  ],
                ), //status and lastmsg
              ),
              ListTile(
                leading: ClipOval(
                    child: Image(
                        image: AssetImage(
                            'assets/${arr[2].myContactImage!}'))), //image
                trailing: Text(
                  '${durationFormat(arr[2].duration!)} ${1 == rng.nextInt(3) ? 'AM' : 'PM'}',
                  style: greyText,
                ),
                title: Text(
                  '${arr[2].myContactName}',
                  style: whiteText,
                ), //name
                subtitle: Row(
                  children: [
                    Icon(arr[2].lastMsgStatus,
                        color: 1 == rng.nextInt(3)
                            ? const Color(0xFF979D9F)
                            : const Color(0xFF33B4ED),
                        size: 18),
                    Text(
                      arr[2].lastMsg!,
                      style: greyText,
                    )
                  ],
                ), //status and lastmsg
              ),
              ListTile(
                leading: ClipOval(
                    child: Image(
                        image: AssetImage(
                            'assets/${arr[3].myContactImage!}'))), //image
                trailing: Text(
                  '${durationFormat(arr[3].duration!)} ${1 == rng.nextInt(3) ? 'AM' : 'PM'}',
                  style: greyText,
                ),
                title: Text(
                  '${arr[3].myContactName}',
                  style: whiteText,
                ), //name
                subtitle: Row(
                  children: [
                    Icon(arr[3].lastMsgStatus,
                        color: 1 == rng.nextInt(3)
                            ? const Color(0xFF979D9F)
                            : const Color(0xFF33B4ED),
                        size: 18),
                    Text(
                      arr[3].lastMsg!,
                      style: greyText,
                    )
                  ],
                ), //status and lastmsg
              ),
              ListTile(
                leading: ClipOval(
                    child: Image(
                        image: AssetImage(
                            'assets/${arr[4].myContactImage!}'))), //image
                trailing: Text(
                  '${durationFormat(arr[4].duration!)} ${1 == rng.nextInt(3) ? 'AM' : 'PM'}',
                  style: greyText,
                ),
                title: Text(
                  '${arr[4].myContactName}',
                  style: whiteText,
                ), //name
                subtitle: Row(
                  children: [
                    Icon(arr[4].lastMsgStatus,
                        color: 1 == rng.nextInt(3)
                            ? const Color(0xFF979D9F)
                            : const Color(0xFF33B4ED),
                        size: 18),
                    Text(
                      arr[4].lastMsg!,
                      style: greyText,
                    )
                  ],
                ), //status and lastmsg
              ),
              ListTile(
                leading: ClipOval(
                    child: Image(
                        image: AssetImage(
                            'assets/${arr[5].myContactImage!}'))), //image
                trailing: Text(
                  '${durationFormat(arr[5].duration!)} ${1 == rng.nextInt(3) ? 'AM' : 'PM'}',
                  style: greyText,
                ),
                title: Text(
                  '${arr[5].myContactName}',
                  style: whiteText,
                ), //name
                subtitle: Row(
                  children: [
                    Icon(arr[5].lastMsgStatus,
                        color: 1 == rng.nextInt(3)
                            ? const Color(0xFF979D9F)
                            : const Color(0xFF33B4ED),
                        size: 18),
                    Text(
                      arr[5].lastMsg!,
                      style: greyText,
                    )
                  ],
                ), //status and lastmsg
              ),
              ListTile(
                leading: ClipOval(
                    child: Image(
                        image: AssetImage(
                            'assets/${arr[6].myContactImage!}'))), //image
                trailing: Text(
                  '${durationFormat(arr[6].duration!)} ${1 == rng.nextInt(3) ? 'AM' : 'PM'}',
                  style: greyText,
                ),
                title: Text(
                  '${arr[6].myContactName}',
                  style: whiteText,
                ), //name
                subtitle: Row(
                  children: [
                    Icon(arr[6].lastMsgStatus,
                        color: 1 == rng.nextInt(3)
                            ? const Color(0xFF979D9F)
                            : const Color(0xFF33B4ED),
                        size: 18),
                    Text(
                      arr[6].lastMsg!,
                      style: greyText,
                    )
                  ],
                ), //status and lastmsg
              ),
              ListTile(
                leading: ClipOval(
                    child: Image(
                        image: AssetImage(
                            'assets/${arr[7].myContactImage!}'))), //image
                trailing: Text(
                  '${durationFormat(arr[7].duration!)} ${1 == rng.nextInt(3) ? 'AM' : 'PM'}',
                  style: greyText,
                ),
                title: Text(
                  '${arr[7].myContactName}',
                  style: whiteText,
                ), //name
                subtitle: Row(
                  children: [
                    Icon(arr[7].lastMsgStatus,
                        color: 1 == rng.nextInt(3)
                            ? const Color(0xFF979D9F)
                            : const Color(0xFF33B4ED),
                        size: 18),
                    Text(
                      arr[7].lastMsg!,
                      style: greyText,
                    )
                  ],
                ), //status and lastmsg
              ),
              ListTile(
                leading: ClipOval(
                    child: Image(
                        image: AssetImage(
                            'assets/${arr[8].myContactImage!}'))), //image
                trailing: Text(
                  '${durationFormat(arr[8].duration!)} ${1 == rng.nextInt(3) ? 'AM' : 'PM'}',
                  style: greyText,
                ),
                title: Text(
                  '${arr[8].myContactName}',
                  style: whiteText,
                ), //name
                subtitle: Row(
                  children: [
                    Icon(arr[8].lastMsgStatus,
                        color: 1 == rng.nextInt(3)
                            ? const Color(0xFF979D9F)
                            : const Color(0xFF33B4ED),
                        size: 18),
                    Text(
                      arr[8].lastMsg!,
                      style: greyText,
                    )
                  ],
                ), //status and lastmsg
              ),
              ListTile(
                leading: ClipOval(
                    child: Image(
                        image: AssetImage(
                            'assets/${arr[9].myContactImage!}'))), //image
                trailing: Text(
                  '${durationFormat(arr[9].duration!)} ${1 == rng.nextInt(3) ? 'AM' : 'PM'}',
                  style: greyText,
                ),
                title: Text(
                  '${arr[9].myContactName}',
                  style: whiteText,
                ), //name
                subtitle: Row(
                  children: [
                    Icon(arr[9].lastMsgStatus,
                        color: 1 == rng.nextInt(3)
                            ? const Color(0xFF979D9F)
                            : const Color(0xFF33B4ED),
                        size: 18),
                    Text(
                      arr[9].lastMsg!,
                      style: greyText,
                    )
                  ],
                ), //status and lastmsg
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('new group button pressed');
        },
        backgroundColor: const Color(0xFF00AF9C),
        child: const Icon(Icons.message),
      ),
    );
  }
}

String durationFormat(Duration d) {
  String str = d.toString();
  String result = '';
  int start = 0;
  int end = 0;
  for (int i = 0; i < str.length; i++) {
    if (str[i] == ':' && start == 0) {
      start = i + 1;
    }
    else if (str[i] == ':' && start != 0) {
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

String textFormat(String s) {
  if (s.length > 60) {
    return s.substring(0, 16) + '...';
  }
  return s;
}
