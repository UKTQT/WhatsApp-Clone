import 'package:flutter/material.dart';

import '../ui/helper/color_helper.dart';
import '../ui/helper/text_helper.dart';

class SettingsAccount extends StatelessWidget {
  const SettingsAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorHelper.headerColor,
        title: Text('Hesap'),
      ),
      body: Container(
        color: ColorHelper.bodyBgColor,
        child: Column(
          children: [
            for (var element in TextHelper.settingsAccountBoxInformationsList)
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => element[2]));
                },
                child: SizedBox(
                  height: 70.0,
                  child: Card(
                    child: Row(
                      children: [
                        Expanded(flex: 2, child: element[0]),
                        Expanded(
                            flex: 10,
                            child: Text(
                              element[1],
                              style: TextStyle(
                                fontSize: 18.0,
                              ),
                            ))
                      ],
                    ),
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}
