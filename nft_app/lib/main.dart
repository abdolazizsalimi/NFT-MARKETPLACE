import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nft_app/screens/profile/widgets/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // hide status bar
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: Colors.transparent,
      ),
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'nft app'.toUpperCase(),
      home: const ProfilePage(),
    );
  }
}
