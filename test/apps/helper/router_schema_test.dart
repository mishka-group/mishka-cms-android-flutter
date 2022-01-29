//
//  router_schema_test.dart
//  Created on 2022 15 January.
//  Copyright © Mishka Group Flutter application,
//  Developed by 2021 Hossein HassanNejad.
//

import 'package:flutter_test/flutter_test.dart';
import 'package:mishka_cms_android_flutter/apps/helper/router_schema.dart';

void main() {
  group('Routers Schema', () {
    test('the list of routers should not be empty', () {
      bool isNotRoutersEmpty = routers.isNotEmpty;
      expect(isNotRoutersEmpty, true);
    });
    test(
        'the number of SelectNavigation Enum should be equal to the routers list',
        () {
      int selectNavigationItemsLength = SelectNavigation.values.length;
      int routersLength = routers.length;
      expect(routersLength, selectNavigationItemsLength);
    });
  });
}
