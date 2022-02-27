import 'package:flutter/material.dart';

import 'widgets/body_chats.dart';

void main() {
  runApp(MyHomePage());
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp Clone',
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
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Icon(Icons.grain),
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        primary: Colors.transparent,
                      ),
                    )),
              ],
            ),
          ],
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(50.0),
            child: TabBar(tabs: [
              Tab(
                text: 'Sohbetler',
              ),
              Tab(
                text: 'Durum',
              ),
              Tab(
                text: 'Aramalar',
              ),
            ]),
          ),
        ),
        body: TabBarView(children: <Widget>[
          BodyChats(),
          BodyChats(),
          BodyChats(),
        ]),
      ),
    );
  }
}
