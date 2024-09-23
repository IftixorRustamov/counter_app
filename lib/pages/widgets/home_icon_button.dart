import 'package:flutter/material.dart';

class HomeIconButton extends StatelessWidget {
  final void Function()? onPressed;
  final IconData icon;

  const HomeIconButton(
      {super.key, required this.onPressed, required this.icon});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(
        icon,
        size: 30,
        color: Colors.white,
      ),
    );
  }
}
