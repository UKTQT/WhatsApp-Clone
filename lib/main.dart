import 'package:flutter/material.dart';

import 'pages/body_chats.dart';
import 'pages/body_status.dart';
import 'pages/body_call.dart';
import 'pages/body_settings.dart';
import 'ui/helper/text_helper.dart';
import 'ui/helper/color_helper.dart';
import 'ui/helper/icon_helper.dart';

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
          backgroundColor: ColorHelper.headerColor,
          leading: Container(
            width: 50.0,
            height: 50.0,
            child: ElevatedButton(
              onPressed: () {},
              child: IconHelper.headerCameraIcon,
              style: ElevatedButton.styleFrom(
                elevation: 0,
                primary: Colors.transparent,
              ),
            ),
          ),
          title: Text(
            TextHelper.headerTitle,
            style: TextStyle(color: ColorHelper.headerTextColor),
          ),
          actions: [
            Row(
              children: [
                Container(
                  width: 50.0,
                  height: 50.0,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: IconHelper.headerSearchIcon,
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
                        child: IconHelper.headerPopupMenuIcon,
                        itemBuilder: (context) => [
                              //popup items create loop
                              for (var element
                                  in TextHelper.headerPopupMenuButtonGroup)
                                PopupMenuItem(
                                    child: Text(element[0]), value: element[1])
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
