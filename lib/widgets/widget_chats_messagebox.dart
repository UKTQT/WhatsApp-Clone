import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

import '../pages/body_message_page.dart';
import '../services/service_body_chat_msgbox.dart';

class BodyChatsMessageBox extends StatefulWidget {
  const BodyChatsMessageBox({Key? key}) : super(key: key);

  @override
  State<BodyChatsMessageBox> createState() => _BodyChatsMessageBoxState();
}

class _BodyChatsMessageBoxState extends State<BodyChatsMessageBox> {
  MessageBoxService _messageBoxService = MessageBoxService();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: _messageBoxService.getMessage(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text('Mesajların gelmesinde beklenmeyen bir hata oluştu');
        }
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Text('Loading Data...');
        }

        return ListView(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          children: snapshot.data!.docs.map((DocumentSnapshot document) {
            Map<String, dynamic> data =
                document.data()! as Map<String, dynamic>;
            return InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => MessagePage(
                              userName: data['user'],
                            ))));
              },
              child: SizedBox(
                height: 80.0,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Container(
                            width: 50,
                            height: 50,
                            child: Image(
                              image: AssetImage('lib/assets/images/pp_400.png'),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 10,
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 15.0, right: 10.0),
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 12,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        data['user'],
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  flex: 12,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: Icon(
                                          Icons.done_all,
                                          color: Colors.lightBlue,
                                          size: 20,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Expanded(
                                        flex: 11,
                                        child: Text(
                                          data['message'],
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(flex: 2, child: Text('17.17'))
                      ],
                    ),
                  ),
                ),
              ),
            );
          }).toList(),
        );
      },
    );
  }
}
