import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum ButtonVariant { outline, filled }

class Button extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final ButtonVariant variant;

  const Button(
      {super.key,
      required this.text,
      required this.onPressed,
      this.variant = ButtonVariant.filled});

  Map<String, dynamic> getStyles() {
    switch (variant) {
      case ButtonVariant.outline:
        return {
          "background": Colors.white,
          "side": const BorderSide(color: Color(0xff3498DB)),
          "textColor": const Color(0xff3498DB),
        };
      case ButtonVariant.filled:
        return {
          "background": const Color(0xff3498DB),
          "side": null,
          "textColor": Colors.white,
        };
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 52,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          side: getStyles()["side"],
          backgroundColor: getStyles()["background"],
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        child: Text(
          text,
          style: GoogleFonts.arimo(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: getStyles()["textColor"],
          ),
        ),
      ),
    );
  }
}
