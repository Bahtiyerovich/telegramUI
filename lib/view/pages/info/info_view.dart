import 'package:flutter/material.dart';
import 'package:telegram/core/constants/color_const.dart';
import 'package:telegram/core/extensions/context.dart';
import 'package:telegram/core/widgets/telgrm_text_w.dart';

class InfoView extends StatelessWidget {
  const InfoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      body: Column(
        children: [
          ListTile(
            leading: InkWell(
              child: CircleAvatar(
                radius: 30,
                backgroundImage: const NetworkImage(
                  "https://source.unsplash.com/random/",
                ),
                backgroundColor: ColorsConst.color007AFF,
              ),
              onTap: () {},
            ),
            title: Padding(
              padding: const EdgeInsets.only(top: 8),
              child: TelegramText(
                text: "Nick Name",
                color: ColorsConst.colorBlack,
                size: 20,
              ),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Divider(
                  thickness: 1,
                ),
                TelegramText(
                  text: "Last Name",
                  color: ColorsConst.colorBlack,
                  size: 20,
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          _listTile("main", "phone number", ColorsConst.color00B12C),
          _listTile("home", "home phone number", ColorsConst.color037EE5),
          _listTile(
            "bio",
            "Design adds value faster, than it adds cost",
            ColorsConst.colorBlack,
          ),
          const SizedBox(height: 12),
          ListTile(
            title: TelegramText(
              text: "Notifications",
              color: ColorsConst.colorBlack,
              size: 18,
            ),
            trailing: SizedBox(
              width: context.w * 0.23,
              child: Row(
                children: [
                  TelegramText(
                    text: "Enabled",
                    color: ColorsConst.color3C3C43,
                    size: 18,
                  ),
                  Icon(
                    Icons.chevron_right,
                    color: ColorsConst.color3C3C43,
                  ),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Divider(
              thickness: 1,
              height: 0,
            ),
          ),
          const SizedBox(height: 18),
          ListTile(
            title: TelegramText(
              text: "Delete Contact",
              color: ColorsConst.colorFE3B30,
              size: 18,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Divider(
              thickness: 1,
              height: 0,
            ),
          ),
        ],
      ),
    );
  }

  ListTile _listTile(String text, String text2, Color color) {
    return ListTile(
      title: Text(
        text,
        style: TextStyle(
          color: ColorsConst.colorBlack,
          fontSize: 15,
        ),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text2,
            style: TextStyle(
              color: color,
              fontSize: 18,
            ),
          ),
          const Divider(
            thickness: 1,
          ),
        ],
      ),
    );
  }

  AppBar _appBar(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(color: ColorsConst.color007AFF),
      elevation: 0,
      backgroundColor: ColorsConst.colorF6F6F6,
      centerTitle: true,
      title: TelegramText(
        text: "Edit Profile",
        // style: MyTextStyleComp.contactsAppBarTitleStyle,
      ),
      actions: [
        TextButton(
          child: TelegramText(
            text: "Done",
            color: ColorsConst.color037EE5,
            size: 17,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
