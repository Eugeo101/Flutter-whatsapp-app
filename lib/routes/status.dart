import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:whatsapp/Constants/my_list_tile.dart';
import 'package:whatsapp/Constants/status_model.dart';
import 'package:whatsapp/Screens/my_status.dart';
import 'package:whatsapp/Screens/my_status_options.dart';
import 'package:whatsapp/main.dart';

List<StatusModel> arr = [
  StatusModel(
      myContactStory: '2s.png',
      myContactName: 'Noha Khaled',
      timeAgo: '20 minutes ago'),
  StatusModel(
      myContactStory: '1s.png',
      myContactName: 'Ahmed Emaaad',
      timeAgo: '25 minutes ago'),
  StatusModel(
      myContactStory: '3s.png',
      myContactName: 'استااااا',
      timeAgo: '26 minutes ago'),
  StatusModel(
      myContactStory: '4s.png',
      myContactName: 'Ahmed Khaled اخ',
      timeAgo: '40 minutes ago'),
  StatusModel(
      myContactStory: '5s.png',
      myContactName: 'ِAhmed Lelosh',
      timeAgo: '50 minutes ago'),
  StatusModel(
      myContactStory: '9s.png',
      myContactName: 'Ola Rashed',
      timeAgo: 'Today, 12:18 AM'),
  StatusModel(
      myContactStory: '7s.png',
      myContactName: 'Yousef 4lby',
      timeAgo: 'Yesterday, 11:13 PM'),
  StatusModel(
      myContactStory: '8s.png',
      myContactName: 'Jody Sister',
      timeAgo: 'Yesterday 11:00 PM'),
  StatusModel(
      myContactStory: '6s.png',
      myContactName: 'My status',
      timeAgo: '32 minutes ago'),
];

var spacer = const Padding(padding: EdgeInsets.only(top: 15));

class Status extends StatelessWidget {
  const Status({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
              decoration: const BoxDecoration(
                  boxShadow: [BoxShadow(color: Color(0xFF101D24))]),
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: ListView(
                  children: [
                    GestureDetector(
                      onTap: () {
                        // print('Go to story screen');
                        Navigator.push(context,
                            MaterialPageRoute(builder: (BuildContext context) {
                          return const MyStatus();
                        }));
                      },
                      child: ListTile(
                        title:
                            Text('${arr[8].myContactName}', style: whiteText),
                        subtitle: Text(
                          '${arr[8].timeAgo}',
                          style: greyText,
                        ),
                        leading: Image(
                            image:
                                AssetImage('assets/${arr[8].myContactStory}')),
                        trailing: IconButton(
                          icon: const Icon(Icons.more_horiz_sharp,
                              color: Color(0xFF9FA3A7)),
                          onPressed: () {
                            print('Go to Story');
                            Navigator.push(context, MaterialPageRoute(
                                builder: (BuildContext context) {
                              return const MyStatusOptions();
                            }));
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 3.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Container(
                              alignment: Alignment.bottomLeft,
                              child: TextButton(
                                child: Text(
                                  'SHARE TO FACEBOOK STORY',
                                  style: greenText,
                                ),
                                onPressed: () {
                                  customLauncher(
                                      'https://www.facebook.com/profile.php?id=100012323822489');
                                },
                              ),
                            ),
                          ),
                          IconButton(
                            tooltip: "Share to FaceBook",
                            icon: const Icon(Icons.share,
                                color: Color(0xFF00AF9C)),
                            onPressed: () {
                              print('Go To FaceBook');
                              customLauncher(
                                  'https://www.facebook.com/profile.php?id=100012323822489');
                            },
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        'Recent updates',
                        style: greyText,
                      ),
                    ),
                    spacer,
                    MyListTile(
                        title: '${arr[0].myContactName}',
                        subtitle: '${arr[0].timeAgo}',
                        leftImage: 'assets/${arr[0].myContactStory}'),
                    MyListTile(
                        title: '${arr[1].myContactName}',
                        subtitle: '${arr[1].timeAgo}',
                        leftImage: 'assets/${arr[1].myContactStory}'),
                    MyListTile(
                        title: '${arr[2].myContactName}',
                        subtitle: '${arr[2].timeAgo}',
                        leftImage: 'assets/${arr[2].myContactStory}'),
                    MyListTile(
                        title: '${arr[3].myContactName}',
                        subtitle: '${arr[3].timeAgo}',
                        leftImage: 'assets/${arr[3].myContactStory}'),
                    MyListTile(
                        title: '${arr[4].myContactName}',
                        subtitle: '${arr[4].timeAgo}',
                        leftImage: 'assets/${arr[4].myContactStory}'),
                    MyListTile(
                        title: '${arr[5].myContactName}',
                        subtitle: '${arr[5].timeAgo}',
                        leftImage: 'assets/${arr[5].myContactStory}'),
                    MyListTile(
                        title: '${arr[6].myContactName}',
                        subtitle: '${arr[6].timeAgo}',
                        leftImage: 'assets/${arr[6].myContactStory}'),
                    MyListTile(
                        title: '${arr[7].myContactName}',
                        subtitle: '${arr[7].timeAgo}',
                        leftImage: 'assets/${arr[7].myContactStory}'),
                  ],
                ),
              )),
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
