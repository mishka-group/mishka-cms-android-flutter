//
//  app.dart
//  Created on 2022 09 Jan.
//  Copyright © Mishka Group Flutter application,
//  Developed by 2021 Hossein HassanNejad.
//

import 'package:flutter/material.dart';
import 'package:mishka_cms_android_flutter/routes.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Routes(context).initialNavigate(),
    );
  }
}
