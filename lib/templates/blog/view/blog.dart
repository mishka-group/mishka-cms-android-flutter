//
//  blog.dart
//  Created on 2022 24 Jan.
//  Copyright © Mishka Group Flutter application,
//  Developed by 2021 Hossein HassanNejad.
//

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Blog extends StatelessWidget {
  const Blog({Key? key}) : super(key: key);

  @override
  @nonVirtual
  // ignore: invalid_override_of_non_virtual_member
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Blog && runtimeType == other.runtimeType;

  @override
  @nonVirtual
  // ignore: invalid_override_of_non_virtual_member
  int get hashCode => super.hashCode;

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container());
  }
}
