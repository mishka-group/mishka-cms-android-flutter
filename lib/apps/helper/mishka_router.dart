import 'package:flutter/material.dart';

class MishkaRouter {
  MishkaRouter(this.context);
  final BuildContext context;

  getRoot() {
    Navigator.of(context).pushNamed('/');
  }

  getTo(String route, {dynamic args}) {
    Navigator.of(context).pushNamed('/' + route, arguments: args);
  }

  getUntilTo(String route, {dynamic args}) {
    Navigator.of(context).pushNamedAndRemoveUntil('/' + route, (route) => false,
        arguments: args);
  }

  pop() {
    Navigator.of(context).pop();
  }
}
