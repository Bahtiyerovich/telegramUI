import 'package:flutter/material.dart';
import 'package:telegram/routes/my_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Telegram',
      theme: ThemeData(),
      onGenerateRoute: MyRoutes.instanse.onGenerate,
      initialRoute: '/auth',
    );
  }
}
