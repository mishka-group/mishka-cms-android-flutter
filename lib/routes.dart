//
//  router.dart
//  mishka-cms-android-flutter
//
//  Created by Husen on 2022 09 Jan.
//

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'apps/helper/router_schema.dart';

class Routes {
  Widget getNavigation({required SelectNavigation nav}) {
    String routeName = nav.name;
    RouterSchema routerSchema = routers.firstWhere(
        (RouterSchema routerSchema) =>
            routerSchema.routeName.name == routeName);

    return routerSchema.blocProviderValue == null
        ? routerSchema.nav
        : routerSchema.nav.blocProviderValue(routerSchema.blocProviderValue!);
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
