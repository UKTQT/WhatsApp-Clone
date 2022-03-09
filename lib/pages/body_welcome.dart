import 'package:flutter/material.dart';

import 'body_login.dart';

class BodyWelcome extends StatelessWidget {
  const BodyWelcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'WhatsApp Clone Hoşgeldiniz',
                    style: TextStyle(
                        color: Color(0xFF00ad8a),
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.whatsapp,
                    size: 150.0,
                  )
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 150.0, left: 20.0, right: 20.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 12,
                    child: Text(
                      'Gizlilik Politikaları. Kabul et ve devam et tuşuna basarak kabul etmiş olursunuz.',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 300.0,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BodyLogin()));
                      },
                      child: Text(
                        'Kabul ve Devam Et',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16.0),
                      ),
                      style:
                          ElevatedButton.styleFrom(primary: Color(0xFF00ad8a)),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 80.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text('from')],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Ufuk Küçüktopçu',
                    style: TextStyle(fontWeight: FontWeight.bold))
              ],
            ),
          ],
        )),
      ),
    );
  }
}
