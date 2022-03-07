import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class MessageBoxModal {
  String? id;
  String? user;
  String? user_pp_100;
  String? message;
  bool? archive;

  MessageBoxModal(
      {this.id, this.user, this.user_pp_100, this.message, this.archive});

  factory MessageBoxModal.fromSnapshot(DocumentSnapshot snapshot) {
    return MessageBoxModal(
      id: snapshot.id,
      user: snapshot['user'],
      user_pp_100: snapshot['user_pp_100'],
      message: snapshot['message'],
      archive: snapshot['archive'],
    );
  }
}
