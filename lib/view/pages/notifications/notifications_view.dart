import 'package:flutter/material.dart';
import 'package:telegram/core/constants/color_const.dart';
import 'package:telegram/core/constants/font_const.dart';
import 'package:telegram/core/widgets/telgrm_text_w.dart';

class NotificationsView extends StatelessWidget {
  const NotificationsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsConst.colorF6F6F6,
        elevation: 0.0,
        title: TelegramText(
          text: 'Notifications',
          size: FontConst.kMediumFont,
          fontWeight: WeightConst.kMediumWeight,
          color: ColorsConst.colorBlack,
        ),
      ),
      body: Column(
        children: [
          TelegramText(
            text: 'SHOW NOTIFICATIONS FROM',
            size: FontConst.kSmallFont,
            fontWeight: WeightConst.kSmallWeight,
            // textAlign: TextAlign.start,
          ),
         
          TelegramText(
            text: 'Turn this off if you want to receive notifications only from your active account.',
            size: FontConst.kSmallFont,
            fontWeight: WeightConst.kSmallWeight,
            // textAlign: TextAlign.start,
          ),
          TelegramText(
            text: 'MESSAGE NOTIFICATIONS',
            size: FontConst.kSmallFont,
            fontWeight: WeightConst.kSmallWeight,
            // textAlign: TextAlign.start,
          ),
          
             TelegramText(
            text: 'Set custom notifications for specific users.',
            size: FontConst.kSmallFont,
            fontWeight: WeightConst.kSmallWeight,
            // textAlign: TextAlign.start,
          ),
          TelegramText(
            text: 'GROUP NOTIFICATIONS',
            size: FontConst.kSmallFont,
            fontWeight: WeightConst.kSmallWeight,
            // textAlign: TextAlign.start,
          ),

           TelegramText(
            text: 'Set custom notificaions for specific groups.',
            size: FontConst.kSmallFont,
            // textAlign: TextAlign.start,
            fontWeight: WeightConst.kSmallWeight,
          ),
        ],
      ),
    );
  }
}
