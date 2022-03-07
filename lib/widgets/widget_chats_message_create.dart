import 'dart:ui';

import 'package:flutter/material.dart';

Widget BodyChatsMessageCreate() => Container(
      decoration: BoxDecoration(
        color: Color(0xffcfd8dc),
        border: Border.all(
          color: Color(0xffcfd8dc),
          width: 0.1,
        ),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0)),
      ),
      height: 400.0,
      child: Padding(
        padding: EdgeInsets.only(top: 25.0, left: 25.0, right: 25.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0, left: 5.0),
              child: Row(
                children: [
                  Text(
                    'Kişi Seç',
                    style: TextStyle(
                      color: Color(0xff263238),
                      fontSize: 22.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(width: 10.0),
                  Text(
                    '(6 Kişi)',
                    style: TextStyle(
                        color: Color(0xff263238),
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Container(
              height: 225.0,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Card(
                          color: Color(0xff212121),
                          child: Row(
                            children: [
                              Expanded(
                                  flex: 4,
                                  child: Icon(
                                    Icons.account_box_sharp,
                                    size: 50.0,
                                  )),
                              Expanded(
                                  flex: 10,
                                  child: Text(
                                    'Ufuk Küçüktopçu',
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w500),
                                  ))
                            ],
                          )),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.max,
                children: [
                  ElevatedButton(
                      onPressed: () {},
                      child: Text('İptal'),
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xFF263238))))
                ],
              ),
            )
          ],
        ),
      ),
    );
//D1B19F
