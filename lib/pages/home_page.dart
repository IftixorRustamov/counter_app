import 'package:exercise/pages/home_page_mixin.dart';
import 'package:exercise/pages/widgets/button.dart';
import 'package:exercise/pages/widgets/home_icon_button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with HomePageMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                HomeIconButton(onPressed: () {}, icon: Icons.info),
                HomeIconButton(onPressed: () {}, icon: Icons.settings_sharp),
                HomeIconButton(onPressed: refresh, icon: Icons.refresh),
              ],
            ),
            Text(
              count.toString(),
              style: const TextStyle(
                  fontSize: 180,
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
            ),
            Column(
              children: [
                Text(
                  countLimit.toString(),
                  style: const TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
                const Text(
                  "LIMIT REACHED",
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Button(icon: Icons.remove, onTap: decrement),
                    Button(icon: Icons.add, onTap: increment)
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
