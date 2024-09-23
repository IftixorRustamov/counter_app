import 'package:flutter/cupertino.dart';
import 'home_page.dart';

mixin HomePageMixin on State<HomePage> {
  int count = 0;
  final int countLimit = -12;

  void refresh() {
    setState(() {
      count = 0;
    });
  }

  void increment() {
    setState(() {
      count++;
    });
  }

  void decrement() {
    setState(() {
      count--;
    });
  }
}
