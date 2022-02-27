import 'package:flutter/material.dart';

Widget BodyChatsMessagebox() => InkWell(
      onTap: () {},
      child: SizedBox(
        height: 70.0,
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Icon(Icons.account_box),
                ),
                Expanded(
                  flex: 10,
                  child: Column(
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Ufuk Küçüktopçu',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.done_all,
                            ),
                            Text('Mesajjjjjj'),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(flex: 2, child: Text('17.17'))
              ],
            ),
          ),
        ),
      ),
    );
