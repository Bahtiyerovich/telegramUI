import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:telegram/core/constants/color_const.dart';
import 'package:telegram/core/widgets/telgrm_text_w.dart';

class ChatView extends StatelessWidget {
  const ChatView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Image.asset(
          "assets/images/chatBackground.png",
          fit: BoxFit.cover,
        ),
      ),
      bottomNavigationBar: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.06,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("assets/icons/chatAttach.svg"),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.045,
              width: MediaQuery.of(context).size.width * 0.73,
              child: TextFormField(
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    icon: SvgPicture.asset("assets/icons/chatShape.svg"),
                    onPressed: () {},
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                    borderSide:
                        BorderSide(color: ColorsConst.colorAEAEB2, width: 1),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                    borderSide:
                        BorderSide(color: ColorsConst.colorAEAEB2, width: 1),
                  ),
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("assets/icons/chatAudio.svg"),
            ),
          ],
        ),
      ),
    );
  }

  AppBar _appBar(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(color: ColorsConst.color007AFF),
      elevation: 0,
      backgroundColor: ColorsConst.colorF6F6F6,
      centerTitle: true,
      title: Column(
        children: [
          TelegramText(
            text: "Nick Name",
            color: ColorsConst.colorBlack,
            size: 18,
          ),
          TelegramText(
            text: "last seen just now",
            color: ColorsConst.color787878,
            size: 14,
          )
        ],
      ),
      actions: [
        InkWell(
          child: CircleAvatar(
            radius: 25,
            backgroundColor: ColorsConst.color007AFF,
          ),
          onTap: () {
            Navigator.pushNamed(context, "/info");
          },
        ),
      ],
    );
  }
}
