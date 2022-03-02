import 'package:flutter/material.dart';
import 'package:whatsclone/ui/helper/icon_helper.dart';

import '../widgets/widget_call_callbox.dart';
import '../ui/helper/text_helper.dart';
import '../ui/helper/color_helper.dart';

Widget BodyCall() => Container(
      alignment: Alignment.center,
      color: ColorHelper.bodyBgColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconHelper.bodyCallMainIcon,
          SizedBox(
            width: 5,
          ),
          Text(
            TextHelper.callMainText,
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
