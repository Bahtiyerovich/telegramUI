import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:telegram/core/constants/color_const.dart';
import 'package:telegram/core/widgets/telgrm_text_w.dart';

class ContactsView extends StatelessWidget {
  const ContactsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsConst.colorWhite,
      appBar: _appBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            InkWell(
              child: ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.transparent,
                  child: SvgPicture.asset("assets/icons/contactsLocation.svg"),
                ),
                title: TelegramText(text:
                  "Add People Nearby",
                  // style: MyTextStyleComp.contactsLocationTitleStyle,
                ),
              ),
              onTap: () {},
            ),
            Divider(
              thickness: 1,
              height: 0,
              indent: MediaQuery.of(context).size.width * 0.23,
            ),
            InkWell(
              child: ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.transparent,
                  child: SvgPicture.asset(
                      "assets/icons/contactsInviteFriends.svg"),
                ),
                title: TelegramText(text:
                  "Invite Friends",
                  // style: MyTextStyleComp.contactsLocationTitleStyle,
                ),
              ),
              onTap: () {},
            ),
            Divider(
              thickness: 1,
              height: 0,
              indent: MediaQuery.of(context).size.width * 0.23,
            ),
            SizedBox(
              // TabBar qoshsak shu yerda height da hato berishi mumkin
              height: MediaQuery.of(context).size.height * 1.772,
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => Column(
                  children: [
                    InkWell(
                      child: ListTile(
                        leading: CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage(
                            "https://source.unsplash.com/random/$index",
                          ),
                          backgroundColor: ColorsConst.color007AFF,
                        ),
                        title: Text(
                          "Nick Name",
                          // style: MyTextStyleComp.contactsAppBarTitleStyle,
                        ),
                        subtitle: Text(
                          "Last sin recently",
                          // style: MyTextStyleComp.contactsListViewSubTitleStyle,
                        ),
                      ),
                      onTap: () {},
                    ),
                    Divider(
                      thickness: 1,
                      height: 0,
                      indent: MediaQuery.of(context).size.width * 0.23,
                    ),
                  ],
                ),
                itemCount: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: ColorsConst.colorF6F6F6,
      centerTitle: true,
      title: TelegramText(text:
        "Contacts",
        // style: MyTextStyleComp.contactsAppBarTitleStyle,
      ),
      actions: [
        IconButton(
          icon: Icon(
            Icons.add,
            color: ColorsConst.color007AFF,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
