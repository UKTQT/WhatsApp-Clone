import 'package:flutter/material.dart';

import '../ui/helper/color_helper.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({Key? key}) : super(key: key);

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    double _statusBarHeight = MediaQuery.of(context).padding.top;
    double _appbarHeight = AppBar().preferredSize.height;
    double _bodyHeight =
        MediaQuery.of(context).size.height - _appbarHeight - _statusBarHeight;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorHelper.headerColor,
        title: Row(
          children: [Text('Ufuk Küçüktopçu')],
        ),
        actions: [
          Row(
            children: [
              InkWell(onTap: () {}, child: Icon(Icons.videocam)),
              SizedBox(width: 15.0),
              InkWell(onTap: () {}, child: Icon(Icons.call)),
              SizedBox(width: 15.0),
              Icon(Icons.grain),
              SizedBox(width: 10.0),
            ],
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          height: _bodyHeight, //media query ekran boyutu
          color: ColorHelper.bodyBgColor,
          child: Stack(children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Mesajlar ve aramalar uçtan uca şifreli değildir.',
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    child: Row(
                      children: [
                        Expanded(
                            flex: 10,
                            child: Container(
                              height: 60.0,
                              child: TextField(
                                  decoration: InputDecoration(
                                      fillColor: Colors.amber,
                                      hintText: 'Mesaj Yaz',
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(30.0)),
                                          borderSide:
                                              BorderSide(color: Colors.white)),
                                      hintStyle: TextStyle(color: Colors.white),
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(30.0)),
                                          borderSide: BorderSide(
                                              color: Colors.white,
                                              width: 6.0)))),
                            )),
                        Expanded(
                          flex: 2,
                          child: CircleAvatar(
                              backgroundColor: Colors.green,
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.mic,
                                    color: Colors.white,
                                  ))),
                        )
                      ],
                    ),
                  )),
            ),
          ]),
        ),
      ),
    );
  }
}
