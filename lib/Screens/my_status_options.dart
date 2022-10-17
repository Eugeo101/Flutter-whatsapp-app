import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:whatsapp/Constants/pop_items.dart';
import 'package:whatsapp/main.dart';

class MyStatusOptions extends StatelessWidget {
  const MyStatusOptions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'My status',
            style: whiteText,
          ),
          backgroundColor: const Color(0xFF222D36),
        ),
        body: Container(
          decoration: const BoxDecoration(
            boxShadow: [BoxShadow(color: Color(0xFF222D36))]
          ),
          child: Column(
            children: [
              ListTile(
                leading: const ClipOval(
                    child: Image(image: AssetImage('assets/6s.png'))),
                title: Text(
                  '33 views',
                  style: whiteText,
                ),
                subtitle: Text(
                  'Today',
                  style: greyText,
                ),
                trailing: PopupMenuButton(
                  icon: const Icon(Icons.more_vert, color: Color(0xFF9FA3A7),),
                  itemBuilder: (BuildContext context) {
                    return PopItems.statusItems.map((element) {
                      return PopupMenuItem(
                          value: element,
                          child: Text(
                            element,
                            style: whiteText,
                          ));
                    }).toList();
                  },
                  color: const Color(0xFF313B42),
                  onSelected: (String value) {
                    if (value == 'Forward') {
                      print('Forward');
                    }
                    if (value == 'Share') {
                      print('Share');
                    }
                    if (value == 'Share To FaceBook') {
                      print('Share To FaceBook');
                      customLauncher(
                          'https://www.facebook.com/profile.php?id=100012323822489');
                    }
                    if (value == 'Delete') {
                      print('Delete');
                    }
                  },
                ),
              ),
              const Padding(padding: EdgeInsets.only(top: 10)),
              Text('Your status updates will never disappear as it''s lelouch', style: greyText),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('new pic button pressed');
          },
          backgroundColor: const Color(0xFF00AF9C),
          child: const Icon(Icons.photo_camera),
        ));
  }

  void customLauncher(String s) async {
    if (await canLaunch(s)) {
      await launch(s);
    } else {
      print('can' 't launch ${s}');
    }
  }
}
