import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nft_app/screens/auth/LoginForm.dart';
import 'package:nft_app/screens/profile/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // hide status bar
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    );

    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NFT Marketplace',
      home: LoginForm(),
    );
  }
}
