//
//  app.dart
//  mishka-cms-android-flutter
//
//  Created by Husen on 2022 09 Jan.
//

import 'package:flutter/material.dart';
import 'package:mishka_cms_android_flutter/apps/helper/router_schema.dart';
import 'package:mishka_cms_android_flutter/routes.dart';

class App extends StatelessWidget {
  const App({Key? key, required this.routes}) : super(key: key);
  final Routes routes;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: routes.getNavigation(nav: SelectNavigation.home),
    );
  }
}
