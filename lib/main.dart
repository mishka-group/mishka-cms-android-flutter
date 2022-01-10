// Copyright (c) 2021, Mishka Group (Trangell)
// https://trangell.com/
//
// Use of this source code is governed by an Apache-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/Apache-2.0.
//
//  main.dart
//  mishka-cms-android-flutter
//
//  Created by Husen on 2022 09 Jan.
//

import 'package:mishka_cms_android_flutter/routes.dart';

import 'bootstrap.dart';
import 'templates/app/view/app.dart';

void main() {
  bootstrap(() => App(
        routes: Routes(),
      ));
}
