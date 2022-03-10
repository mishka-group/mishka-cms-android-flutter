//
//  post.dart
//  Created on 2022 24 Jan.
//  Copyright © Mishka Group Flutter application,
//  Developed by 2021 Hossein HassanNejad.
//

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  final String? arg;
  const Post({required this.arg, Key? key}) : super(key: key);

  @override
  @nonVirtual
  // ignore: invalid_override_of_non_virtual_member
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Post && runtimeType == other.runtimeType && arg == other.arg;

  @override
  @nonVirtual
  // ignore: invalid_override_of_non_virtual_member
  int get hashCode => arg.hashCode;

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(), body: Text(arg!));
  }
}
