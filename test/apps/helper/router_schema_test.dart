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
      int selectNavigationItemsLength = SelectRoute.values.length;
      int routersLength = routers.length;
      expect(routersLength, selectNavigationItemsLength);
    });

    test('routeName should not be duplicates', () {
      bool isRoutesNameUniq = false;
      List<SelectRoute> routesName = [];
      for (var routerSchema in routers) {
        if (routesName.contains(routerSchema.routeName)) {
          isRoutesNameUniq = true;
        } else {
          routesName.add(routerSchema.routeName);
        }
      }
      expect(isRoutesNameUniq, false);
    });

    test('route should not be duplicates', () {
      bool isRoutesUniq = false;
      List<dynamic> routes = [];
      for (var routerSchema in routers) {
        if (routes.contains(routerSchema.route(null))) {
          isRoutesUniq = true;
        } else {
          routes.add(routerSchema.route(null));
        }
      }
      expect(isRoutesUniq, false);
    });
  });
}
