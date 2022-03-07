import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

import '../modals/modal_body_chat_msgbox.dart';

class MessageBoxService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  addMessage(
      String user, String user_pp_100, String message, bool archive) async {
    var ref = _firestore.collection('');

    //user_pp_100 = 'image';

    var documentRef = await ref.add({
      'user': user,
      'user_pp_100': user_pp_100,
      'message': message,
      'archive': archive,
    });

    return MessageBoxModal(
        id: documentRef.id,
        user: user,
        user_pp_100: user_pp_100,
        message: message,
        archive: archive);
  }
}
