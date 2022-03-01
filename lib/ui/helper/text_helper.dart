import 'package:flutter/material.dart';

class TextHelper {
  //Header Title
  static final String headerTitle = 'WhatsApp Clone';
  //Tabbar Button Group
  static final String tabBarView1 = 'Sohbetler';
  static final String tabBarView2 = 'Durum';
  static final String tabBarView3 = 'Aramalar';
  //Archive Button
  static final String archiveButtonText = 'Arşiv';
  static final String archivePageHeaderTitle = 'Arşivlenmiş Mesajlar';
  //Status Body Group
  static final String statusAddButtonTitle = 'Durumum';
  static final String statusAddButtonDescription =
      'Durum güncellemesi eklemek için dokunun';
  static final String statusLatestUpdateText = 'Son Güncellemeler';
  static final String settingsHeaderText = 'Ayarlar';
  static List<dynamic> settingsBoxInformationsList = [
    [Icon(Icons.key), "Hesap", "Gizlilik, güvenlik, numara değişir", ""],
    [
      Icon(Icons.chat),
      "Sohbetler",
      "Tema, duvar kağıtları, sohbet geçmişi",
      ""
    ],
    [
      Icon(Icons.notifications),
      "Bildirimler",
      "Mesaj, grup ve arama sesleri",
      ""
    ],
    [
      Icon(Icons.storage),
      "Depolama ve veriler",
      "Ağ kullanımı, otomatik indirme",
      ""
    ],
    [
      Icon(Icons.help),
      "Yardım",
      "Yardım merkezi, bize ulaşın, gizlilik ilkesi",
      ""
    ],
  ];
}
