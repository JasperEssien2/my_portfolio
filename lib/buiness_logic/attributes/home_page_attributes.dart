import 'package:flutter/material.dart';

class HomePageAttributes {
  final ValueNotifier<int> tabController = ValueNotifier(1);

  void dispose() {
    tabController.dispose();
  }
}
