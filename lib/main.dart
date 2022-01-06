import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_designs/screens/home_screen.dart';
import 'package:flutter_designs/screens/basic_design.dart';
import 'package:flutter_designs/screens/scroll_design.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: ThemeData.dark(),
      initialRoute: 'home_screen',
      routes: {
        'home_screen': (_) => const HomeScreen(),
        'basic_design': (_) => const BasicDesignScreen(),
        'scroll_screen': (_) => const ScrollScreen(),
      },
    );
  }
}
