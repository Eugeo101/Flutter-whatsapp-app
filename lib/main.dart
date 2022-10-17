import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/Constants/pop_items.dart';
import 'package:whatsapp/routes/calls.dart';
import 'package:whatsapp/routes/chats.dart';
import 'package:whatsapp/routes/status.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'The WhatsApp',
      // theme: ThemeData(
      //   // primarySwatch: MaterialColor(0xFF383838, obj)و
      //   primarySwatch: Colors.blueGrey,
      // ),
      home: AnimatedSplashScreen(
        splashTransition: SplashTransition.rotationTransition,
        pageTransitionType: PageTransitionType.bottomToTop,
        splashIconSize: 100,
        backgroundColor: const Color(0xFF44CE30),
        duration: 2000,
        splash: const ClipOval(child: Image(
          image: AssetImage('assets/whats.png')
          )),
        nextScreen: const Home()
        ),
    );
  }
}

var greyText = const TextStyle(
  color: Color(0xFF9FA3A7),
  fontSize: 12,
  fontFamily: 'Arial',
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.bold,
);

var titleGreyText = const TextStyle(
  color: Color(0xFF9FA3A7),
  fontSize: 16,
  fontFamily: 'Arial',
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.bold,
);

var whiteText = const TextStyle(
  color: Color(0xFFD4D6D8),
  fontSize: 16,
  fontFamily: 'Arial',
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.bold,
);

var smallWhiteText = const TextStyle(
  color: Color(0xFFD4D6D8),
  fontSize: 14,
  fontFamily: 'Arial',
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.bold,
);

var greenText = const TextStyle(
  color: Color(0xFF00AF9C),
  fontSize: 14,
  fontFamily: 'Arial',
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.bold,
);


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF222D36),
        actions: [
          PopupMenuButton(
            icon: const Icon(Icons.more_vert,color: Color(0xFF9FA3A7)),
            itemBuilder: (BuildContext context) {
              return PopItems.popItems.map((element) {
                return PopupMenuItem(
                  value: element,
                  child: Text(element, style: smallWhiteText,));
              }).toList();
            },
            color: const Color(0xFF313B42),
            onSelected: (String value) {
              if (value == 'New group') {
                print('New group');
                }
              if (value == 'New broadcast') {
                print('New broadcast');
                }
              if (value == 'Linked devices') {
                print('Linked devices');
                }
              if (value == 'Starred messages') {
                print('Starred messages');
                }
              if (value == 'Settings') {
                print('Settings');
                }
            },
          )
        ],
        title: Text(
          'The WhatsApp',
          style: titleGreyText,
        ),
      ),
      body: DefaultTabController(
          length: 3,
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                  boxShadow: [BoxShadow(color: Color(0xFF222D36))],
                ),
                child: const TabBar(
                    // indicatorColor: Color(0xFF25d366),
                    // labelColor: Color(0xFF25d366),
                    indicatorColor: Color(0xFF00AF9C),
                    labelColor: Color(0xFF00AF9C),
                    unselectedLabelColor: Color(0xFF9FA3A7),
                    tabs: [
                      Tab(
                        child: Text(
                          'CHATS',
                        ),
                      ),
                      Tab(
                        child: Text(
                          'STATUS',
                        ),
                      ),
                      Tab(
                        child: Text(
                          'CALLS',
                        ),
                      ),
                    ]),
              ),
              // ignore: avoid_unnecessary_containers
              const Expanded(
                child: TabBarView(children: [
                  Chats(),
                  Status(),
                  Calls(),
                ]),
              ),
            ],
          )),
    );
  }
}
