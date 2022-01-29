//
//  post.dart
//  Created on 2022 24 Jan.
//  Copyright © Mishka Group Flutter application,
//  Developed by 2021 Hossein HassanNejad.
//

import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  final String arg;
  const Post({required this.arg, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(), body: Text(arg));
  }
}
