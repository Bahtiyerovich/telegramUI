import 'package:flutter/material.dart';
import 'package:telegram/view/auth/auth_view.dart';
import 'package:telegram/view/cart/cart_view.dart';
import 'package:telegram/view/cart/chats/chat_view.dart';
import 'package:telegram/view/pages/info/info_view.dart';
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
        return MaterialPageRoute(builder: (_) => const AuthView());
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
      // case '/auth':
      //   return MaterialPageRoute(builder: (_) => const AuthView());
    }
  }
}
