import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:telegram/core/constants/color_const.dart';
import 'package:telegram/core/widgets/telgrm_text_w.dart';

class Info2View extends StatelessWidget {
  const Info2View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      body: SingleChildScrollView(
        child: Column(
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
              subtitle: TelegramText(
                text: "online",
                color: ColorsConst.color037EE5,
                size: 15,
              ),
              trailing: IconButton(
                icon: SvgPicture.asset("assets/icons/infoCall.svg"),
                onPressed: () {},
              ),
            ),
            const SizedBox(height: 10),
            _listTile("main", "phone number", ColorsConst.color00B12C),
            _listTile("home", "home phone number", ColorsConst.color037EE5),
            _listTile(
              "bio",
              "Design adds value faster, than it adds cost",
              ColorsConst.colorBlack,
            ),
            _listTile("username", "@zack_life", ColorsConst.color037EE5),
            _listTile("", "Send Message", ColorsConst.color037EE5),
            _listTile("", "Share Contact", ColorsConst.color037EE5),
            _listTile("", "Start Secret Chat", ColorsConst.color037EE5),
            const SizedBox(height: 5),
            _listTileTrailing("Shared Media", ""),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Divider(
                thickness: 1,
                height: 0,
              ),
            ),
            _listTileTrailing("Notifications", "Enabled"),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Divider(
                thickness: 1,
                height: 0,
              ),
            ),
            _listTileTrailing("Shared Media", "1"),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Divider(
                thickness: 1,
                height: 0,
              ),
            ),
            _listTile("", "Block User", ColorsConst.colorFE3B30),
          ],
        ),
      ),
    );
  }

  ListTile _listTileTrailing(String text, String text2) {
    return ListTile(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: TextStyle(
              color: ColorsConst.colorBlack,
              fontSize: 18,
            ),
          ),
        ],
      ),
      trailing: SizedBox(
        width: 90,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              text2,
              style: TextStyle(
                color: ColorsConst.color3C3C43,
                fontSize: 18,
              ),
            ),
            Icon(
              Icons.chevron_right,
              color: ColorsConst.color3C3C43,
            ),
          ],
        ),
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
