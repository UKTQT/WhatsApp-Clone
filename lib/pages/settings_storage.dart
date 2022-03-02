import 'package:flutter/material.dart';

import '../ui/helper/color_helper.dart';
import '../ui/helper/color_helper.dart';
import 'body_being_done.dart';

class SettingsStorage extends StatefulWidget {
  const SettingsStorage({Key? key}) : super(key: key);

  @override
  State<SettingsStorage> createState() => _SettingsStorageState();
}

class _SettingsStorageState extends State<SettingsStorage> {
  bool switchValue1 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorHelper.headerColor,
        title: Text('Depolama ve veriler'),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: ColorHelper.bodyBgColor,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BeingDone()));
                        },
                        child: Row(
                          children: [
                            Expanded(flex: 2, child: Icon(Icons.storage)),
                            Expanded(
                                flex: 10,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Depolama alanını yönet'),
                                    Text('439,3 MB')
                                  ],
                                ))
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BeingDone()));
                        },
                        child: Row(
                          children: [
                            Expanded(
                                flex: 2, child: Icon(Icons.rounded_corner)),
                            Expanded(
                                flex: 10,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Ağ kullanımı'),
                                    Text('2,8 GB gönderilen . 2,0 GB alınan')
                                  ],
                                ))
                          ],
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(flex: 2, child: Icon(Icons.call)),
                        Expanded(
                            flex: 8, child: Text('Aramalar için daha az veri')),
                        Expanded(
                          flex: 2,
                          child: Switch(
                            value: switchValue1,
                            onChanged: (value) {
                              setState(() {
                                switchValue1 = value;
                                print(switchValue1);
                              });
                            },
                            activeTrackColor: Colors.black,
                            activeColor: Colors.red,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 10.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Row(
                        children: [
                          Text('Medyayı otomatik indir'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Row(
                        children: [
                          Text(
                              'Sesli mesajlar her zaman otomatik olarak indirilir'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BeingDone()));
                        },
                        child: Row(
                          children: [
                            Expanded(
                                flex: 2, child: Icon(Icons.mobile_friendly)),
                            Expanded(
                                flex: 10,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Mobil veri kullanırken'),
                                    Text('Medya yok')
                                  ],
                                ))
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BeingDone()));
                        },
                        child: Row(
                          children: [
                            Expanded(flex: 2, child: Icon(Icons.wifi)),
                            Expanded(
                                flex: 10,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Wi-Fi ağına bağlıyken'),
                                    Text('Tüm medya')
                                  ],
                                ))
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BeingDone()));
                        },
                        child: Row(
                          children: [
                            Expanded(flex: 2, child: Icon(Icons.add_road)),
                            Expanded(
                                flex: 10,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Dolaşımdayken'),
                                    Text('Medya yok')
                                  ],
                                ))
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 10.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Row(
                        children: [
                          Text('Medya yükleme kalitesi'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Row(
                        children: [
                          Text(
                              'Gönderilecek medya dosyalarının kalitesini seçin'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BeingDone()));
                        },
                        child: Row(
                          children: [
                            Expanded(flex: 2, child: Icon(Icons.photo)),
                            Expanded(
                                flex: 10,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Fotoğraf yükleme kalitesi'),
                                    Text('Otomatik(önerilir)')
                                  ],
                                ))
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 10.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Row(
                        children: [
                          Text('Medya görüntüleme'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BeingDone()));
                        },
                        child: Row(
                          children: [
                            Expanded(flex: 2, child: Icon(Icons.android)),
                            Expanded(
                                flex: 10,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Android 11+ medya taşıma'),
                                  ],
                                ))
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
