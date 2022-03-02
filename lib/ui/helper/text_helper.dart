import 'package:flutter/material.dart';

import '../../pages/settings_account.dart'; //to navigate in settings
import '../../pages/settings_chats.dart';
import '../../pages/settings_notifications.dart';
import '../../pages/settings_storage.dart';
import '../../pages/settings_help.dart';
import '../../pages/body_being_done.dart';

class TextHelper {
  //Header
  static final String headerTitle = 'WhatsApp Clone';
  //Header///Tabbar Button Group
  static final String tabBarView1 = 'Sohbetler';
  static final String tabBarView2 = 'Durum';
  static final String tabBarView3 = 'Aramalar';
  //Header///Popup Menu Button Group
  static List<dynamic> headerPopupMenuButtonGroup = [
    ["Yeni Grup", 1],
    ["Yeni Toplu Mesaj", 2],
    ["Bağlı Cihazlar", 3],
    ["Yıldızlı Mesajlar", 4],
    ["Ayarlar", 5],
  ];
  //Body Chats Archive
  static final String archiveButtonText = 'Arşiv';
  static final String archivePageHeaderTitle = 'Arşivlenmiş Mesajlar';
  //Body Status Add Button
  static final String statusAddButtonTitle = 'Durumum';
  static final String statusAddButtonDescription =
      'Durum güncellemesi eklemek için dokunun';
  static final String statusLatestUpdateText = 'Son Güncellemeler';
  //Body Call
  static final String callMainText = 'Yapım Aşamasında';
  //Body Settings
  static final String settingsHeaderText = 'Ayarlar';
  static List<dynamic> settingsBoxInformationsList = [
    [
      Icon(Icons.key),
      "Hesap",
      "Gizlilik, güvenlik, numara değişir",
      SettingsAccount()
    ],
    [
      Icon(Icons.chat),
      "Sohbetler",
      "Tema, duvar kağıtları, sohbet geçmişi",
      SettingsChats()
    ],
    [
      Icon(Icons.notifications),
      "Bildirimler",
      "Mesaj, grup ve arama sesleri",
      SettingsNotifications()
    ],
    [
      Icon(Icons.storage),
      "Depolama ve veriler",
      "Ağ kullanımı, otomatik indirme",
      SettingsStorage()
    ],
    [
      Icon(Icons.help),
      "Yardım",
      "Yardım merkezi, bize ulaşın, gizlilik ilkesi",
      SettingsHelp()
    ],
  ];
  static List<dynamic> settingsAccountBoxInformationsList = [
    [Icon(Icons.lock), "Gizlilik", BeingDone()],
    [Icon(Icons.security), "Güvenlik", BeingDone()],
    [Icon(Icons.password), "İki adımlı doğrulama", BeingDone()],
    [Icon(Icons.numbers), "Numara değiştir", BeingDone()],
    [Icon(Icons.description), "Hesap bilgilerini talep et", BeingDone()],
    [Icon(Icons.delete_forever), "Hesabımı sil", BeingDone()],
  ];
}
