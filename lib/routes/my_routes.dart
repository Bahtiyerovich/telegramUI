import 'package:flutter/material.dart';
import 'package:telegram/view/auth/view/auth_view.dart';
import 'package:telegram/view/cart/cart_view.dart';
import 'package:telegram/view/cart/chats/chat_view.dart';
import 'package:telegram/view/pages/apperance/apperance_view.dart';
import 'package:telegram/view/pages/data_and_storage/data_and_storage_view.dart';
import 'package:telegram/view/pages/info/info_view.dart';
import 'package:telegram/view/pages/languages/languages_view.dart';
import 'package:telegram/view/pages/notifications/view/notifications_view.dart';
import 'package:telegram/view/pages/privacy_and_security/privacy_and_security_view.dart';

class MyRoutes {
  static final MyRoutes _instanse = MyRoutes.init();
  static MyRoutes get instanse => MyRoutes._instanse;
  MyRoutes.init();

  Route? onGenerate(RouteSettings s) {
    var args = s.arguments;
    switch (s.name) {
      case '/auth':
        return MaterialPageRoute(builder: (_) => AuthView());
      case '/cart':
        return MaterialPageRoute(builder: (_) => const CartView());
      case '/chat':
        return MaterialPageRoute(builder: (_) => const ChatView());
      case '/info':
        return MaterialPageRoute(builder: (_) => const InfoView());
      case '/notifications':
        return MaterialPageRoute(builder: (_) => const NotificationsView());
      case '/privacyAndSecurityView':
        return MaterialPageRoute(builder: (_) => PrivacyAndSecurityView());
      case '/dataAndStorage':
        return MaterialPageRoute(builder: (_) => const DataAndStorageView());
      case '/appearance':
        return MaterialPageRoute(builder: (_) => const ApperanceView());
      case '/language':
        return MaterialPageRoute(builder: (_) => LanguagesView());
    }
  }
}
