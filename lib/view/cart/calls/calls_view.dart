import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:telegram/core/constants/color_const.dart';
import 'package:telegram/core/extensions/context.dart';
import 'package:telegram/core/widgets/telgrm_text_w.dart';

class CallsView extends StatelessWidget {
  const CallsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      body: SizedBox(
        // TabBar qoshsak shu yerda height da hato berishi mumkin
        height: MediaQuery.of(context).size.height, //* 1.772
        child: ListView.builder(
          itemBuilder: (context, index) => Column(
            children: [
              InkWell(
                child: ListTile(
                  leading: SizedBox(
                    width: 60,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset("assets/icons/callsIncoming.svg"),
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage(
                            "https://source.unsplash.com/random/$index",
                          ),
                          backgroundColor: ColorsConst.color007AFF,
                        ),
                      ],
                    ),
                  ),
                  title: TelegramText(
                    text: "Nick Name",
                    // style: MyTextStyleComp.contactsAppBarTitleStyle,
                  ),
                  subtitle: TelegramText(
                    text: "Outgoing",
                    color: ColorsConst.color8E8E93,
                    size: 15,
                  ),
                  trailing: SizedBox(
                    width: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("$index/${index + 10}"),
                        const SizedBox(width: 5),
                        InkWell(
                          child: SvgPicture.asset("assets/icons/callsInfo.svg"),
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                ),
                onTap: () {},
              ),
              Divider(
                thickness: 1,
                height: 0,
                indent: context.w * 0.28,
              ),
            ],
          ),
          itemCount: 20,
        ),
      ),
    );
  }

  AppBar _appBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: ColorsConst.colorF6F6F6,
      centerTitle: true,
      leading: TextButton(
        child: TelegramText(
          text: "Edit",
          color: ColorsConst.color037EE5,
          size: 17,
        ),
        onPressed: () {},
      ),
      actions: [
        IconButton(
          icon: SvgPicture.asset("assets/icons/callsAppBarAddCall.svg"),
          onPressed: () {},
        ),
      ],
      title: Container(
        padding: const EdgeInsets.only(left: 3, right: 20),
        height: 32,
        width: 160,
        decoration: BoxDecoration(
          color: ColorsConst.color767680_12,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              alignment: Alignment.center,
              height: 28,
              width: 76,
              decoration: BoxDecoration(
                color: ColorsConst.colorWhite,
                borderRadius: BorderRadius.circular(8),
              ),
              child: TelegramText(
                text: "All",
              ),
            ),
            TelegramText(
              text: "Missed",
            ),
          ],
        ),
      ),
    );
  }
}
