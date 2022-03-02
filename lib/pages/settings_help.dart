import 'package:flutter/material.dart';

import '../ui/helper/text_helper.dart';
import '../ui/helper/color_helper.dart';
import 'body_being_done.dart';

class SettingsHelp extends StatelessWidget {
  const SettingsHelp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorHelper.headerColor,
        title: Text('Yardım'),
      ),
      body: Container(
        color: ColorHelper.bodyBgColor,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => BeingDone()));
                },
                child: Row(
                  children: [
                    Expanded(flex: 2, child: Icon(Icons.help)),
                    Expanded(flex: 10, child: Text('Yardım Merkezi'))
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => BeingDone()));
                },
                child: Row(
                  children: [
                    Expanded(flex: 2, child: Icon(Icons.people)),
                    Expanded(
                        flex: 10,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Bize Ulaşın'),
                            Text('Sorularınız mı var ?')
                          ],
                        ))
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => BeingDone()));
                },
                child: Row(
                  children: [
                    Expanded(flex: 2, child: Icon(Icons.book)),
                    Expanded(
                        flex: 10, child: Text('Koşullar ve Gizlilik İlkesi'))
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => BeingDone()));
                },
                child: Row(
                  children: [
                    Expanded(flex: 2, child: Icon(Icons.info)),
                    Expanded(flex: 10, child: Text('Uygulama bilgileri'))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
