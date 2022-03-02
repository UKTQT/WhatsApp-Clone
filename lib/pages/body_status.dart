import 'package:flutter/material.dart';

import '../widgets/widget_status_statusbox.dart';
import '../ui/helper/text_helper.dart';
import '../ui/helper/color_helper.dart';
import '../ui/helper/icon_helper.dart';

Widget BodyStatus() => Container(
      color: ColorHelper.bodyBgColor,
      child: Column(
        children: [
          InkWell(
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
                            child: IconHelper.bodyStatusAddBtnIcon),
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
                                      TextHelper.statusAddButtonTitle,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      TextHelper.statusAddButtonDescription,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  TextHelper.statusLatestUpdateText,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ],
            ),
          ),
          BodyStatusStatusBox(),
          BodyStatusStatusBox(),
          BodyStatusStatusBox(),
        ],
      ),
    );
