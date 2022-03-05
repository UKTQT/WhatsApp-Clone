import 'package:flutter/material.dart';
import 'package:whatsclone/ui/helper/icon_helper.dart';

import '../widgets/widget_chats_messagebox.dart';
import 'body_archive.dart';
import '../ui/helper/text_helper.dart';
import '../ui/helper/color_helper.dart';

class BodyChats extends StatelessWidget {
  const BodyChats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorHelper.bodyBgColor,
      child: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => BodyArchive()));
            },
            child: SizedBox(
              height: 50.0,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                          flex: 2, child: IconHelper.bodyChatsArchiveBtnIcon),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          flex: 10,
                          child: Text(
                            TextHelper.archiveButtonText,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17),
                          )),
                    ],
                  ),
                ),
              ),
            ),
          ), // ARCHIVE-------------
          BodyChatsMessageBox(),
        ],
      ),
    );
  }
}
