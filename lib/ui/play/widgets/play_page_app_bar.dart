import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

PreferredSizeWidget playPageAppBar(
  BuildContext context, String title, String backPressRoute) {
  return AppBar(
    title: Text(title),
    centerTitle: true,
    titleTextStyle: const TextStyle(
      fontSize: 30
    ),
    leading: IconButton(
      icon: const Icon(Icons.arrow_back), onPressed: () {
        context.go(backPressRoute);
    },),
  );
}