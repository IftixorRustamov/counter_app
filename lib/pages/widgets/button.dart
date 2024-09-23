import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final IconData icon;
  final void Function()? onTap;

  const Button({super.key, required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 90,
        width: 90,
        decoration: BoxDecoration(
            shape: BoxShape.circle, border: Border.all(color: Colors.white)),
        child: Icon(
          icon,
          color: Colors.white,
          size: 45,
        ),
      ),
    );
  }
}
