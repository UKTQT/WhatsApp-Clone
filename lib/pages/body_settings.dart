import 'package:flutter/material.dart';

import '../ui/helper/text_helper.dart';
import '../ui/helper/color_helper.dart';
import '../widgets/widget_settings_box.dart';
import 'settings_profile.dart';
import 'settings_account.dart';

class BodySettings extends StatefulWidget {
  const BodySettings({Key? key}) : super(key: key);

  @override
  State<BodySettings> createState() => _BodySettingsState();
}

class _BodySettingsState extends State<BodySettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorHelper.headerColor,
        title: Text(TextHelper.settingsHeaderText),
      ),
      body: Container(
        color: ColorHelper.bodyBgColor,
        child: Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SettingsProfile()));
              },
              child: SizedBox(
                height: 90.0,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: Container(
                            width: 60,
                            height: 60,
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
                                        'Ufuk Küçüktopçu',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 19),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Biyografi yazısı',
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                            flex: 2,
                            child: Icon(
                              Icons.qr_code_2,
                              size: 40,
                            )),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            for (var element in TextHelper.settingsBoxInformationsList)
              SettingsBoxCreate(
                  element[0], element[1], element[2], element[3], context),
            SizedBox(
              height: 30.0,
            ),
            InkWell(
              onTap: () {},
              child: SizedBox(
                height: 60.0,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Column(
                        children: [
                          Text(
                            'from',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text('Ufuk KÜÇÜKTOPÇU')
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
