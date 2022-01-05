import 'package:flutter/material.dart';
import 'package:mishka_cms_android_flutter/apps/enums/route_name.dart';

class MishkaRouter {
  MishkaRouter(this.context);
  final BuildContext context;

  getRoot() {
    Navigator.of(context).pushNamed('/');
  }

  getTo(RouteName route, {dynamic args}) {
    Navigator.of(context).pushNamed('/' + route.name, arguments: args);
  }

  getUntilTo(RouteName route, {dynamic args}) {
    Navigator.of(context).pushNamedAndRemoveUntil(
        '/' + route.name, (route) => false,
        arguments: args);
  }

  pop() {
    Navigator.of(context).pop();
  }
}
