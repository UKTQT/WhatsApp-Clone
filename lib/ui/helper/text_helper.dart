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
  static final Map<String, dynamic> settingsBoxInformations = {
    '1': {
      'icon': Icons.key,
      'title': 'Hesap',
      'description': 'Gizlilik, güvenlik, numara değişir',
      'onPressed': ''
    },
    '2': {
      'icon': Icons.chat,
      'title': 'Sohbetler',
      'description': 'Tema, duvar kağıtları, sohbet geçmişi',
      'onPressed': ''
    },
    '3': {
      'icon': Icons.notifications,
      'title': 'Bildirimler',
      'description': 'Mesaj, grup ve arama sesleri',
      'onPressed': ''
    },
    '4': {
      'icon': Icons.storage,
      'title': 'Depolama ve veriler',
      'description': 'Ağ kullanımı, otomatik indirme',
      'onPressed': ''
    },
    '5': {
      'icon': Icons.help,
      'title': 'Yardım',
      'description': 'Yardım merkezi, bize ulaşın, gizlilik ilkesi',
      'onPressed': ''
    },
  };
}
