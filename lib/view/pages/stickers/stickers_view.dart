import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:telegram/core/constants/color_const.dart';
import 'package:telegram/core/widgets/telgrm_text_w.dart';

class StickersView extends StatelessWidget {
  const StickersView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsConst.colorF6F6F6,
      appBar: _appBar(context),
      body: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.03),
          _container(
            context,
            MediaQuery.of(context).size.height * 0.36,
            Column(
              children: [
                _row(
                  "Suggest by Emoji",
                  Row(
                    children: [
                      TelegramText(
                        text: "All Sets",
                        color: ColorsConst.color3C3C43,
                        size: 17,
                      ),
                      Icon(
                        Icons.chevron_right,
                        color: ColorsConst.color3C3C43,
                      ),
                    ],
                  ),
                ),
                _divider(context, 0.03),
                _row(
                  "Trending Stickers",
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: ColorsConst.color007AFF,
                        child: const Text("15"),
                      ),
                      Icon(
                        Icons.chevron_right,
                        color: ColorsConst.color3C3C43,
                      ),
                    ],
                  ),
                ),
                _divider(context, 0.03),
                _row(
                  "Archived Stickers",
                  Row(
                    children: [
                      TelegramText(
                        text: "46",
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
                _divider(context, 0.03),
                _row(
                  "Masks",
                  Icon(
                    Icons.chevron_right,
                    color: ColorsConst.color3C3C43,
                  ),
                ),
                _divider(context, 0.03),
                _row(
                  "Loop Animated Stickers",
                  CupertinoSwitch(value: true, onChanged: (v) {}),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.115,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TelegramText(
                    text: "Animated stickers will play in chat continuously.",
                    color: ColorsConst.color636366,
                    size: 15,
                  ),
                  TelegramText(
                    text: "STICKER SETS",
                    color: ColorsConst.color636366,
                    size: 15,
                  ),
                ],
              ),
            ),
          ),
          _container(
            context,
            MediaQuery.of(context).size.height * 0.37,
            Column(
              children: [
                const SizedBox(height: 10),
                _inkwell("stickersSimba", "Simba"),
                _divider(context, 0.21),
                _inkwell("stickersDiggy", "Diggy animated"),
                _divider(context, 0.21),
                _inkwell("stickersTed", "Ted"),
                _divider(context, 0.21),
                _inkwell("stickersEgg", "Egg Yolk"),
                _divider(context, 0.21),
                _inkwell("stickersScreaming", "Screaming Checkin"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Padding _row(String text, Widget widget) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(
              color: ColorsConst.colorBlack,
              fontSize: 18,
            ),
          ),
          widget,
        ],
      ),
    );
  }

  Divider _divider(BuildContext context, double size) {
    return Divider(
      thickness: 1,
      indent: MediaQuery.of(context).size.width * size,
    );
  }

  InkWell _inkwell(String svg, String text) {
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/images/$svg.png"),
            const SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text,
                  style: TextStyle(fontSize: 18),
                ),
                TelegramText(
                  text: "25 stickers",
                  color: ColorsConst.color8E8E93,
                  size: 15,
                ),
              ],
            ),
          ],
        ),
      ),
      onTap: () {},
    );
  }

  Container _container(BuildContext context, double h, Widget child) {
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width,
      height: h,
      color: ColorsConst.colorWhite,
      child: child,
    );
  }

  AppBar _appBar(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(color: ColorsConst.color007AFF),
      elevation: 0,
      backgroundColor: ColorsConst.colorF6F6F6,
      centerTitle: true,
      title: TelegramText(
        text: "Stickers",
      ),
      actions: [
        TextButton(
          child: TelegramText(
            text: "Edit",
            color: ColorsConst.color037EE5,
            size: 17,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
