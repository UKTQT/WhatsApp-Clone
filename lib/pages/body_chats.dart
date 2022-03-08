import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'body_archive.dart';
import 'body_message_page.dart';
import '../services/service_body_chat_msgbox.dart';
import '../widgets/widget_chats_messagebox.dart';
import '../widgets/widget_chats_message_create.dart';
import '../ui/helper/text_helper.dart';
import '../ui/helper/color_helper.dart';
import '../ui/helper/icon_helper.dart';

class BodyChats extends StatefulWidget {
  const BodyChats({Key? key}) : super(key: key);

  @override
  State<BodyChats> createState() => _BodyChatsState();
}

class _BodyChatsState extends State<BodyChats> {
  MessageBoxService _messageBoxService = MessageBoxService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: new FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              backgroundColor: Colors.transparent,
              context: context,
              builder: (BuildContext context) {
                return BodyChatsMessageCreate();
              });
        },
        tooltip: 'Increment',
        backgroundColor: Color(0xFF263238),
        child: new Icon(
          Icons.message,
          color: Colors.white,
        ),
      ),
      body: Container(
        color: ColorHelper.bodyBgColor,
        child: SingleChildScrollView(
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => BodyArchive()));
                },
                child: SizedBox(
                  height: 50.0,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Expanded(
                              flex: 2,
                              child: IconHelper.bodyChatsArchiveBtnIcon),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                              flex: 10,
                              child: Text(
                                TextHelper.archiveButtonText,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 17),
                              )),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              BodyChatsMessageBox(),

              //BodyChatsMessageBox(context),
              //BodyChatsMessageBox(),
              /*ElevatedButton(
                  onPressed: () {
                    _messageBoxService.addMessage(
                        'Ukt Küçüktopçu', 'imagedeneme', 'dnm mesaj', true);
                  },
                  child: Text('ekle')),*/
            ],
          ),
        ),
      ),
    );
  }
}
