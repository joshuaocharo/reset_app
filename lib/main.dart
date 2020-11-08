import 'package:flutter/material.dart';
import 'package:kpc/LaunchUrl.dart';
import 'widgets/Share/LaunchUrl.dart';
void main() {
  runApp(
      new HomeApp()
  );
}

class HomeApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
         title: 'KPC Passwrord Reset',
         home: new LaunchUrlDemo(),
    );
  }
}


