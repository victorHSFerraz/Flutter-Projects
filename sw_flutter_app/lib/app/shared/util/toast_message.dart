import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ToastMessage {
  static void notification(String title, String subtitle) =>
      BotToast.showNotification(
        leading: (cancel) => SizedBox.fromSize(
          size: const Size(40, 40),
          child: Icon(
            MdiIcons.checkDecagram,
            color: Colors.green,
          ),
        ),
        title: (_) => Text(title),
        subtitle: (_) => Text(subtitle),
        trailing: (cancel) => IconButton(
          icon: Icon(MdiIcons.closeCircle),
          onPressed: cancel,
        ),
        enableSlideOff: true,
        crossPage: true,
        contentPadding: EdgeInsets.all(5),
        onlyOne: true,
        animationDuration: Duration(milliseconds: 200),
        animationReverseDuration: Duration(milliseconds: 200),
        duration: Duration(seconds: 5),
      );

  static void notificationError(String title, String subtitle) =>
      BotToast.showNotification(
        leading: (cancel) => SizedBox.fromSize(
          size: const Size(40, 40),
          child: Icon(
            MdiIcons.alarmLight,
            color: Colors.red,
          ),
        ),
        title: (_) => Text(title),
        subtitle: (_) => Text(subtitle),
        trailing: (cancel) => IconButton(
          icon: Icon(MdiIcons.closeCircle),
          onPressed: cancel,
        ),
        enableSlideOff: true,
        crossPage: true,
        contentPadding: EdgeInsets.all(5),
        onlyOne: true,
        animationDuration: Duration(milliseconds: 200),
        animationReverseDuration: Duration(milliseconds: 200),
        duration: Duration(seconds: 5),
      );
}
