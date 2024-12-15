import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingItem extends StatelessWidget {
  final String iconName;
  final String title;
  final String description;

  const SettingItem({
    super.key,
    required this.iconName,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 56,
          height: 56,
          decoration: BoxDecoration(
            color: const Color(0x141E2814),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: SizedBox(
              width: 22,
              height: 22,
              child: Image.asset(
                "assets/icons/$iconName.png",
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.montserrat(fontSize: 14),
                ),
                const SizedBox(height: 2),
                Text(
                  description,
                  style: GoogleFonts.montserrat(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          width: 16,
          height: 16,
          child: Image.asset(
            "assets/icons/arrow-forward-circle-outline.png",
            fit: BoxFit.contain,
          ),
        )
      ],
    );
  }
}
