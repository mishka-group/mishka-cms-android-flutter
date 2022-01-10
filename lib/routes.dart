//
//  router.dart
//  mishka-cms-android-flutter
//
//  Created by Husen on 2022 09 Jan.
//

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mishka_cms_android_flutter/templates/intro/intro.dart';

import 'apps/helper/router_schema.dart';

class Routes {
  Route? getNavigation(RouteSettings routeSettings) {
    // dynamic data = routeSettings.arguments;
    if (routeSettings.name == '/') {
      return MaterialPageRoute(builder: (_) => const Intro());
    }
    RouterSchema routerSchema = routers.firstWhere(
        (RouterSchema routerSchema) =>
            routerSchema.routeName.name == routeSettings.name);

    return routerSchema.controller == null
        ? routerSchema.nav.materialPageRoute()
        : routerSchema.nav
            // .blocProvider(routerSchema.controller!)
            .materialPageRoute();
  }
}

class AppRouter {
  AppRouter(this.context);
  final BuildContext context;

  getRoot() {
    Navigator.of(context).pushNamed('/');
  }

  getTo(SelectNavigation nav, {arguments}) {
    Navigator.of(context).pushNamed(nav.name, arguments: arguments);
  }

  getUntilTo(SelectNavigation nav, {arguments}) {
    Navigator.of(context).pushNamedAndRemoveUntil(nav.name, (route) => false,
        arguments: arguments);
  }

  pop() {
    Navigator.of(context).pop();
  }
}

extension View on Widget {
  MaterialPageRoute materialPageRoute() =>
      MaterialPageRoute(builder: (_) => this);

  blocProvider(StateStreamableSource<Object?> bloc) => MaterialPageRoute(
      builder: (_) => BlocProvider.value(
            value: bloc,
            child: this,
          ));
}
