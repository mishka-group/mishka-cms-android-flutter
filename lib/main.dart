//
//  main.dart
//  Created on 2022 09 Jan.
//  Copyright © Mishka Group Flutter application,
//  Developed by 2021 Hossein HassanNejad.
//

import 'package:mishka_cms_android_flutter/routes.dart';

import 'bootstrap.dart';
import 'templates/app/view/app.dart';

void main() {
  bootstrap(() => App(
        routes: Routes(),
      ));
}
