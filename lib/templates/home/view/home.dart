//
//  home.dart
//  Created on 2022 24 Jan.
//  Copyright © Mishka Group Flutter application,
//  Developed by 2021 Hossein HassanNejad.
//

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mishka_cms_android_flutter/apps/helper/router_schema.dart';
import 'package:mishka_cms_android_flutter/routes.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  @nonVirtual
  // ignore: invalid_override_of_non_virtual_member
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Home && runtimeType == other.runtimeType;

  @override
  @nonVirtual
  // ignore: invalid_override_of_non_virtual_member
  int get hashCode => super.hashCode;

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
