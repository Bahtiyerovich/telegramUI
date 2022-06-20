import 'package:flutter/material.dart';
import 'package:telegram/core/constants/color_const.dart';
import 'package:telegram/core/constants/font_const.dart';
import 'package:telegram/core/extensions/context.dart';
import 'package:telegram/core/widgets/telgrm_text_w.dart';
import 'package:easy_localization/easy_localization.dart';

class NotificationsView extends StatefulWidget {
  const NotificationsView({Key? key}) : super(key: key);

  @override
  _NotificationsViewState createState() => _NotificationsViewState();
}

class _NotificationsViewState extends State<NotificationsView> {
  bool _allAccValue = true;
  bool _showNotValue = true;
  bool _messPrevValue = false;
  bool _showNotGrpouValue = false;
  bool _messPrevGroupValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsConst.colorF6F6F6,
        elevation: 0.0,
        title: TelegramText(
          text: 'Notifications'.tr(),
          size: FontConst.kMediumFont,
          fontWeight: WeightConst.kMediumWeight,
          color: ColorsConst.colorBlack,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: context.h * 0.02,
                left: context.w * 0.04,
                bottom: context.h * 0.01,
              ),
              child: TelegramText(
                text: 'Show_notifications_from'.tr(),
                size: FontConst.kSmallFont,
                fontWeight: WeightConst.kSmallWeight,
                // textAlign: TextAlign.start,
              ),
            ),
            SwitchListTile.adaptive(
                tileColor: ColorsConst.colorWhite,
                title: TelegramText(
                  text: 'All_Accounts'.tr(),
                  color: Colors.black,
                  size: FontConst.kMediumFont,
                  fontWeight: WeightConst.kSmallWeight,
                ),
                value: _allAccValue,
                onChanged: (status) {
                  setState(() {
                    _allAccValue = !_allAccValue;
                  });
                }),
            // nothing less everything
            Padding(
              padding: EdgeInsets.only(
                top: context.h * 0.01,
                left: context.w * 0.04,
                bottom: context.h * 0.01,
                right: context.w * 0.02,
              ),
              child: TelegramText(
                text:
                    'Turn_t_o_i_y_w_t_r_n_o_f_y_a_a.'.tr(),
                size: FontConst.kSmallFont,
                fontWeight: WeightConst.kSmallWeight,
                // textAlign: TextAlign.start,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: context.h * 0.035,
                left: context.w * 0.04,
                bottom: context.h * 0.01,
                right: context.w * 0.02,
              ),
              child: TelegramText(
                text: 'Message_notifications'.tr(),
                size: FontConst.kSmallFont,
                fontWeight: WeightConst.kSmallWeight,
                // textAlign: TextAlign.start,
              ),
            ),
            SwitchListTile.adaptive(
                tileColor: ColorsConst.colorWhite,
                title: TelegramText(
                  text: 'Show_Notifications'.tr(),
                  color: Colors.black,
                  size: FontConst.kMediumFont,
                  fontWeight: WeightConst.kSmallWeight,
                ),
                value: _showNotValue,
                onChanged: (status) {
                  setState(() {
                    _showNotValue = !_showNotValue;
                  });
                }),
            const SizedBox(height: 1),
            SwitchListTile.adaptive(
                tileColor: ColorsConst.colorWhite,
                title: TelegramText(
                  text: 'Message_Preview'.tr(),
                  color: Colors.black,
                  size: FontConst.kMediumFont,
                  fontWeight: WeightConst.kSmallWeight,
                ),
                value: _messPrevValue,
                onChanged: (status) {
                  setState(() {
                    _messPrevValue = !_messPrevValue;
                  });
                }),
            const SizedBox(height: 1),
            ListTile(
              tileColor: ColorsConst.colorWhite,
              leading: TelegramText(
                text: 'Sound'.tr(),
                color: Colors.black,
                size: FontConst.kMediumFont,
                fontWeight: WeightConst.kSmallWeight,
              ),
              trailing: TelegramText(
                text: 'None'.tr(),
                color: Colors.black.withOpacity(0.6),
                size: FontConst.kMediumFont,
                fontWeight: WeightConst.kSmallWeight,
              ),
            ),
            ListTile(
              tileColor: ColorsConst.colorWhite,
              leading: TelegramText(
                text: 'Exceptions'.tr(),
                color: Colors.black,
                size: FontConst.kMediumFont,
                fontWeight: WeightConst.kSmallWeight,
              ),
              trailing: TelegramText(
                text: '66 chats >',
                color: Colors.black.withOpacity(0.6),
                size: FontConst.kMediumFont,
                fontWeight: WeightConst.kSmallWeight,
              ),
            ),

            Padding(
              padding: EdgeInsets.only(
                top: context.h * 0.01,
                left: context.w * 0.04,
                bottom: context.h * 0.01,
                right: context.w * 0.02,
              ),
              child: TelegramText(
                text: 'Set_custom_notifications_for_specific_users'.tr(),
                size: FontConst.kSmallFont,
                fontWeight: WeightConst.kSmallWeight,
                // textAlign: TextAlign.start,
              ),
            ),

            Padding(
              padding: EdgeInsets.only(
                top: context.h * 0.035,
                left: context.w * 0.04,
                bottom: context.h * 0.01,
                right: context.w * 0.02,
              ),
              child: TelegramText(
                text: 'Group_notifications'.tr(),
                size: FontConst.kSmallFont,
                fontWeight: WeightConst.kSmallWeight,
                // textAlign: TextAlign.start,
              ),
            ),

            SwitchListTile.adaptive(
                tileColor: ColorsConst.colorWhite,
                title: TelegramText(
                  text: 'Show_Notifications'.tr(),
                  color: Colors.black,
                  size: FontConst.kMediumFont,
                  fontWeight: WeightConst.kSmallWeight,
                ),
                value: _showNotGrpouValue,
                onChanged: (status) {
                  setState(() {
                    _showNotGrpouValue = !_showNotGrpouValue;
                  });
                }),
            const SizedBox(height: 1),
            SwitchListTile.adaptive(
                tileColor: ColorsConst.colorWhite,
                title: TelegramText(
                  text: 'Message_Preview'.tr(),
                  color: Colors.black,
                  size: FontConst.kMediumFont,
                  fontWeight: WeightConst.kSmallWeight,
                ),
                value: _messPrevGroupValue,
                onChanged: (status) {
                  setState(() {
                    _messPrevGroupValue = !_messPrevGroupValue;
                  });
                }),
            const SizedBox(height: 1),
            ListTile(
              tileColor: ColorsConst.colorWhite,
              leading: TelegramText(
                text: 'Sound'.tr(),
                color: Colors.black,
                size: FontConst.kMediumFont,
                fontWeight: WeightConst.kSmallWeight,
              ),
              trailing: TelegramText(
                text: 'None'.tr(),
                color: Colors.black.withOpacity(0.6),
                size: FontConst.kMediumFont,
                fontWeight: WeightConst.kSmallWeight,
              ),
            ),
            ListTile(
              tileColor: ColorsConst.colorWhite,
              leading: TelegramText(
                text: 'Exceptions'.tr(),
                color: Colors.black,
                size: FontConst.kMediumFont,
                fontWeight: WeightConst.kSmallWeight,
              ),
              trailing: TelegramText(
                text: 'Add >',
                color: Colors.black.withOpacity(0.6),
                size: FontConst.kMediumFont,
                fontWeight: WeightConst.kSmallWeight,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: context.h * 0.01,
                left: context.w * 0.04,
                bottom: context.h * 0.01,
                right: context.w * 0.05,
              ),
              child: TelegramText(
              text: 'Set_custom_notificaions_for_specific_groups'.tr(),
              size: FontConst.kSmallFont,
              // textAlign: TextAlign.start,
              fontWeight: WeightConst.kSmallWeight,
            ),
            ),
          ],
        ),
      ),
    );
  }
}
