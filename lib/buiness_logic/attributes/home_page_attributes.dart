import 'package:flutter/material.dart';

class HomePageAttributes {
  final ValueNotifier<int> tabController = ValueNotifier(1);
  final ScrollController scrollController = ScrollController();

  void dispose() {
    tabController.dispose();
  }

  void scrollToBottom() {
    scrollController.jumpTo(scrollController.position.maxScrollExtent);
  }

  void scrollToTop() {
    scrollController.jumpTo(scrollController.position.minScrollExtent);
  }
}
