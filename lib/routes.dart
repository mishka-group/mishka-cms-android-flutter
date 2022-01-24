//
//  routes.dart
//  Created on 2022 09 Jan.
//  Copyright © Mishka Group Flutter application,
//  Developed by 2021 Hossein HassanNejad.
//

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'apps/helper/router_schema.dart';

class Routes {
  final BuildContext context;
  Routes(this.context);

  Widget initialNavigate({dynamic argument}) {
    return _findRoute(route: initialRoute).nav(argument);
  }

  Widget getNavigation({required SelectNavigation nav}) {
    String routeName = nav.name;
    RouterSchema routerSchema = routers.firstWhere(
        (RouterSchema routerSchema) =>
            routerSchema.routeName.name == routeName);

    return routerSchema.blocProviderValue == null
        ? routerSchema.nav
        : routerSchema.nav.blocProviderValue(routerSchema.blocProviderValue!);
  }

  RouterSchema _findRoute({required SelectRoute route}) {
    String routeName = route.name;
    RouterSchema routerSchema = routers.firstWhere(
        (RouterSchema routerSchema) =>
            routerSchema.routeName.name == routeName);

    return routerSchema;
  }
}

extension RouteWrapper on Widget {
  BlocProvider<StateStreamableSource<Object?>> blocProviderValue(
          StateStreamableSource<Object?> bloc) =>
      BlocProvider.value(
        value: bloc,
        child: this,
      );
}
