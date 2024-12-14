import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const Spacer(),
          const Text("Setting Page"),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, "/", (Route<dynamic> route) => false);
              },
              child: const Text("Logout")),
          const Spacer(),
        ],
      ),
    );
  }
}
