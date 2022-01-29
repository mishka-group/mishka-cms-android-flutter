//
//  home.dart
//  Created on 2022 24 Jan.
//  Copyright © Mishka Group Flutter application,
//  Developed by 2021 Hossein HassanNejad.
//

import 'package:flutter/material.dart';
import 'package:mishka_cms_android_flutter/apps/helper/router_schema.dart';
import 'package:mishka_cms_android_flutter/routes.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: TextButton(
            onPressed: () => Routes(context)
                .navigate(route: SelectRoute.post, argument: 'some data'),
            child: const Text('data')));
  }
}
