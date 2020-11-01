import 'package:flutter/material.dart';
import 'home_screen.dart';

class ImgCryptApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ImgCrypt - ISA",
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/send': (context) => EncodeScreen(),
        '/receive': (context) => DecodeScreen(),
        '/encoded': (context) => EncodingResultScreen(),
        '/decoded': (context) => DecodingResultScreen(),

      },

    );
  }
}
