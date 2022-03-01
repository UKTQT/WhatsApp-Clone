import 'package:flutter/material.dart';

Widget BodyChatsMessageBox() => InkWell(
      onTap: () {},
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
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      children: [
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Ufuk Küçüktopçuu',
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
                                size: 20,
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                'Mesajjjjjj',
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
