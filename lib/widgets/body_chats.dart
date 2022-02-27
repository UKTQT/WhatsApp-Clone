import 'package:flutter/material.dart';

import 'body_chats_messagebox.dart';

Widget BodyChats() => Container(
      child: Column(
        children: [
          InkWell(
            onTap: () {},
            child: SizedBox(
              height: 50.0,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(flex: 2, child: Icon(Icons.archive)),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          flex: 12,
                          child: Text(
                            'Arşiv',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17),
                          )),
                    ],
                  ),
                ),
              ),
            ),
          ), // ARCHIVE-------------
          BodyChatsMessagebox(),
          BodyChatsMessagebox(),
          BodyChatsMessagebox(),
          BodyChatsMessagebox(),
        ],
      ),
    );
