import 'package:flutter/material.dart';

import '../widgets/widget_call_callbox.dart';
import '../ui/helper/text_helper.dart';
import '../ui/helper/color_helper.dart';

Widget BodyCall() => Container(
      alignment: Alignment.center,
      color: ColorHelper.bodyBgColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.hourglass_bottom,
            size: 40,
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            'Yapım Aşamasında',
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
