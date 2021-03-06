import 'package:flutter/material.dart';

import '../widgets/widget_chats_messagebox.dart';
import '../ui/helper/text_helper.dart';
import '../ui/helper/color_helper.dart';

class BodyArchive extends StatelessWidget {
  const BodyArchive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorHelper.headerColor,
        title: Text(TextHelper.archivePageHeaderTitle),
      ),
      body: Container(
        color: ColorHelper.bodyBgColor,
        child: Column(
          children: [
            /*BodyChatsMessageBox(context),
            BodyChatsMessageBox(context),
            BodyChatsMessageBox(context),
            BodyChatsMessageBox(context),
            BodyChatsMessageBox(context),
            BodyChatsMessageBox(context),*/
          ],
        ),
      ),
    );
  }
}
