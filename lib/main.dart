
import 'package:flutter/material.dart';
import 'package:my_apk2/first.dart';
import 'package:my_apk2/register.dart';

void main() {

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      'login': (context)=>Login(),
      'register': (context)=>Register()
    },
  ) );
}


