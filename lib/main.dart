import 'package:flutter/material.dart';

import 'pages/body_chats.dart';
import 'pages/body_status.dart';
import 'pages/body_call.dart';
import 'pages/body_settings.dart';
import 'ui/helper/text_helper.dart';
import 'ui/helper/color_helper.dart';

void main() {
  runApp(MyHomePage());
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: TextHelper.headerTitle,
      theme: ThemeData.dark(),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF263238),
          leading: Container(
            width: 50.0,
            height: 50.0,
            child: ElevatedButton(
              onPressed: () {},
              child: Icon(Icons.camera),
              style: ElevatedButton.styleFrom(
                elevation: 0,
                primary: Colors.transparent,
              ),
            ),
          ),
          title: Text(
            'WhasApp Clone',
            style: TextStyle(color: Color(0xFFb0bec5)),
          ),
          actions: [
            Row(
              children: [
                Container(
                  width: 50.0,
                  height: 50.0,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Icon(Icons.search),
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      primary: Colors.transparent,
                    ),
                  ),
                ),
                Container(
                    width: 50.0,
                    height: 50.0,
                    child: PopupMenuButton(
                        color: ColorHelper.headerPopupMenuBg,
                        child: Icon(Icons.grain),
                        itemBuilder: (context) => [
                              PopupMenuItem(
                                onTap: () {},
                                child: Text("Yeni Grup"),
                                value: 1,
                              ),
                              PopupMenuItem(
                                onTap: () {},
                                child: Text("Yeni Toplu Mesaj"),
                                value: 2,
                              ),
                              PopupMenuItem(
                                onTap: () {},
                                child: Text("Bağlı Cihazlar"),
                                value: 3,
                              ),
                              PopupMenuItem(
                                onTap: () {},
                                child: Text("Yıldızlı Mesajlar"),
                                value: 4,
                              ),
                              PopupMenuItem(
                                child: Text("Ayarlar"),
                                value: 5,
                              ),
                            ],
                        onSelected: (choice) {
                          switch (choice) {
                            case 1:
                              break;
                            case 2:
                              break;
                            case 3:
                              break;
                            case 4:
                              break;
                            case 5:
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => BodySettings()));
                          }
                        })),
              ],
            ),
          ],
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(50.0),
            child: TabBar(tabs: [
              Tab(
                text: TextHelper.tabBarView1,
              ),
              Tab(
                text: TextHelper.tabBarView2,
              ),
              Tab(
                text: TextHelper.tabBarView3,
              ),
            ]),
          ),
        ),

        // Disable opening the end drawer with a swipe gesture.

        body: TabBarView(children: <Widget>[
          BodyChats(),
          BodyStatus(),
          BodyCall(),
        ]),
        floatingActionButton: new FloatingActionButton(
          onPressed: () {},
          tooltip: 'Increment',
          child: new Icon(Icons.add),
        ),
      ),
    );
  }
}
