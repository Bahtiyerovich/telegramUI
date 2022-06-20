import 'package:flutter/material.dart';
import 'package:telegram/core/constants/font_const.dart';
import 'package:easy_localization/easy_localization.dart';

class TelegramText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  double height;
  FontWeight? fontWeight = WeightConst.kNormalWeight;
  TextAlign? textAlign = TextAlign.center;

  TelegramText({
    Key? key,
    this.color = const Color(0xFF6A6975),
    required this.text,
    this.size = 0,
    this.height = 1.2,
    this.fontWeight,
    this.textAlign,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text.tr(),
      style: TextStyle(
        color: color,
        fontFamily: 'SFProText',
        fontSize: size == 0 ? FontConst.kSmallFont : size,
        fontWeight: fontWeight,
      ),
    );
  }
}
