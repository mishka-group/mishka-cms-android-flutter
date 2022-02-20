//
//  blog.dart
//  Created on 2022 24 Jan.
//  Copyright © Mishka Group Flutter application,
//  Developed by 2021 Hossein HassanNejad.
//

import 'package:flutter/material.dart';

class Blog extends StatelessWidget {
  const Blog({Key? key}) : super(key: key);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Blog && runtimeType == other.runtimeType;

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container());
  }
}
