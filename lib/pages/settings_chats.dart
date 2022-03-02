import 'package:flutter/material.dart';

import '../ui/helper/color_helper.dart';
import '../ui/helper/text_helper.dart';
import 'body_being_done.dart';

class SettingsChats extends StatefulWidget {
  const SettingsChats({Key? key}) : super(key: key);

  @override
  _SettingsChatsState createState() => _SettingsChatsState();
}

class _SettingsChatsState extends State<SettingsChats> {
  bool switchValue1 = false;
  bool switchValue2 = false;
  bool switchValue3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: ColorHelper.headerColor,
          title: Text('Sohbetler'),
        ),
        body: SingleChildScrollView(
          child: Container(
            color: ColorHelper.bodyBgColor,
            child: Column(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        children: [Text('Görüntüleme')],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BeingDone()));
                        },
                        child: Row(
                          children: [
                            Expanded(flex: 2, child: Icon(Icons.light_mode)),
                            Expanded(
                                flex: 10,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Tema',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15.0),
                                    ),
                                    Text(
                                      'Varsayılan sistem ayarı',
                                      style: TextStyle(fontSize: 14.0),
                                    )
                                  ],
                                ))
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BeingDone()));
                        },
                        child: Row(
                          children: [
                            Expanded(flex: 2, child: Icon(Icons.wallpaper)),
                            Expanded(
                                flex: 10,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Duvar Kağıdı',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15.0),
                                    ),
                                  ],
                                ))
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        children: [Text('Sohbet ayarları')],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        children: [
                          Expanded(flex: 2, child: Icon(Icons.send)),
                          Expanded(
                              flex: 10,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Enter tuşu gönderir',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15.0),
                                  ),
                                  Text(
                                    'Enter tuşu mesajınızı gönderecek',
                                    style: TextStyle(fontSize: 14.0),
                                  )
                                ],
                              )),
                          Expanded(
                            flex: 2,
                            child: Switch(
                              value: switchValue1,
                              onChanged: (value) {
                                setState(() {
                                  switchValue1 = value;
                                  print(switchValue1);
                                });
                              },
                              activeTrackColor: Colors.black,
                              activeColor: Colors.red,
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        children: [
                          Expanded(flex: 2, child: Icon(Icons.perm_media)),
                          Expanded(
                              flex: 10,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Medya görünürlüğü',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15.0),
                                  ),
                                  Text(
                                    'Medyaları galerinde gösterir',
                                    style: TextStyle(fontSize: 14.0),
                                  )
                                ],
                              )),
                          Expanded(
                            flex: 2,
                            child: Switch(
                              value: switchValue2,
                              onChanged: (value) {
                                setState(() {
                                  switchValue2 = value;
                                  print(switchValue2);
                                });
                              },
                              activeTrackColor: Colors.black,
                              activeColor: Colors.red,
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BeingDone()));
                        },
                        child: Row(
                          children: [
                            Expanded(flex: 2, child: Icon(Icons.text_increase)),
                            Expanded(
                                flex: 10,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Yazı tipi boyutu',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15.0),
                                    ),
                                    Text(
                                      'Orta',
                                      style: TextStyle(fontSize: 14.0),
                                    )
                                  ],
                                )),
                            Expanded(
                              flex: 2,
                              child: Text(''),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        children: [Text('Arşivlenmiş sohbetler')],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        children: [
                          Expanded(flex: 2, child: Icon(Icons.archive)),
                          Expanded(
                              flex: 10,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Sohbetleri arşivde tut',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15.0),
                                  ),
                                  Text(
                                    'Sohbetler arşivlenir',
                                    style: TextStyle(fontSize: 14.0),
                                  )
                                ],
                              )),
                          Expanded(
                            flex: 2,
                            child: Switch(
                              value: switchValue3,
                              onChanged: (value) {
                                setState(() {
                                  switchValue3 = value;
                                  print(switchValue3);
                                });
                              },
                              activeTrackColor: Colors.black,
                              activeColor: Colors.red,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 25.0),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BeingDone()));
                        },
                        child: Row(
                          children: [
                            Expanded(flex: 2, child: Icon(Icons.backup)),
                            Expanded(
                                flex: 10,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Sohbet Yedeği',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15.0),
                                    ),
                                  ],
                                )),
                            Expanded(
                              flex: 2,
                              child: Text(''),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BeingDone()));
                        },
                        child: Row(
                          children: [
                            Expanded(
                                flex: 2,
                                child: Icon(Icons.settings_backup_restore)),
                            Expanded(
                                flex: 10,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Sohbet geçmişi',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15.0),
                                    ),
                                  ],
                                )),
                            Expanded(
                              flex: 2,
                              child: Text(''),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
