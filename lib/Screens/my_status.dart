import 'package:flutter/material.dart';
import 'package:whatsapp/main.dart';

class MyStatus extends StatefulWidget {
  const MyStatus({Key? key}) : super(key: key);

  @override
  State<MyStatus> createState() => _MyStatusState();
}

class _MyStatusState extends State<MyStatus> {
  @override
  void initState() {
    super.initState();
    _duration();
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          Expanded(
            child: Row(
              children: [
                const Padding(padding: EdgeInsets.only(left: 60.0)),
                const ClipOval(
                    child: Image(
                      width: 40,
                      height: 40,
                      image: AssetImage('assets/Me.png'))),
                // const Padding(padding: EdgeInsets.only(left: 10)),
                Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'My status',
                        style: whiteText,
                      ),
                      const Padding(padding: EdgeInsets.only(top: 5)),
                      Text(
                        'Today',
                        style: greyText,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: Container(
        decoration:
            const BoxDecoration(boxShadow: [BoxShadow(color: Colors.black)]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
                child: Image.asset('assets/6s.png', width: width,)),
            Padding(
              padding: const EdgeInsets.only(bottom: 50.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.visibility,
                    size: 18,
                    color: Colors.white,
                  ),
                  const Padding(padding: EdgeInsets.only(left: 2)),
                  Text(
                    '33',
                    style: whiteText,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void _duration() async {
    await Future.delayed(const Duration(seconds: 3));
    Navigator.pop(context);
  }
}
