import 'package:flutter/material.dart';

import '../ui/helper/color_helper.dart';
import '../ui/helper/text_helper.dart';

class BeingDone extends StatelessWidget {
  const BeingDone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: ColorHelper.headerColor,
          title: Text('Yapım Aşamasında'),
        ),
        body: Container(
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
        ));
  }
}
