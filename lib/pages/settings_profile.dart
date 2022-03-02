import 'package:flutter/material.dart';

import '../ui/helper/color_helper.dart';
import '../ui/helper/text_helper.dart';

class SettingsProfile extends StatefulWidget {
  const SettingsProfile({Key? key}) : super(key: key);

  @override
  _SettingsProfileState createState() => _SettingsProfileState();
}

class _SettingsProfileState extends State<SettingsProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorHelper.headerColor,
        title: Text('Profil'),
      ),
      body: Container(
        color: ColorHelper.bodyBgColor,
        child: Column(
          children: [
            Container(
              height: 180.0,
              child: Center(
                  child: Stack(
                children: [
                  Image(
                    image: AssetImage('lib/assets/images/pp_400.png'),
                    width: 150,
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.camera_enhance,
                        size: 35.0,
                      ))
                ],
              )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
              child: Row(
                children: [
                  Expanded(flex: 2, child: Icon(Icons.account_balance)),
                  Expanded(
                      flex: 10,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Ad',
                            style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 14.0,
                                color: ColorHelper.secondTextColor),
                          ),
                          SizedBox(height: 2.0),
                          Text(
                            'Ufuk Küçüktopçu',
                            style: TextStyle(
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0,
                                color: ColorHelper.firstTextColor),
                          ),
                          SizedBox(height: 5.0),
                          Text(
                            'Bu, kullanıcı adınız ya da anahtarınız değildir. Bu ad WhatsApp kişileriniz tarafından görülebilir',
                            style: TextStyle(
                                fontFamily: 'RobotoMono', fontSize: 12.5),
                          ),
                        ],
                      )),
                  Expanded(flex: 2, child: Icon(Icons.edit))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
              child: Row(
                children: [
                  Expanded(flex: 2, child: Icon(Icons.info)),
                  Expanded(
                      flex: 10,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hakkımda',
                            style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 14.0,
                                color: ColorHelper.secondTextColor),
                          ),
                          SizedBox(height: 2.0),
                          Text(
                            'Taş kırılr, tunç erir ama Türklük ebedidir.',
                            style: TextStyle(
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0,
                                color: ColorHelper.firstTextColor),
                          ),
                        ],
                      )),
                  Expanded(flex: 2, child: Icon(Icons.edit))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
              child: Row(
                children: [
                  Expanded(flex: 2, child: Icon(Icons.call)),
                  Expanded(
                      flex: 10,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Telefon',
                            style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 14.0,
                                color: ColorHelper.secondTextColor),
                          ),
                          SizedBox(height: 2.0),
                          Text(
                            '+90 511 222 3344',
                            style: TextStyle(
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0,
                                color: ColorHelper.firstTextColor),
                          ),
                        ],
                      )),
                  Expanded(flex: 2, child: Icon(Icons.edit))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
