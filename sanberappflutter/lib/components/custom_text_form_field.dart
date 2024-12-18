import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String label;
  final bool withBottomSpacer;
  final TextEditingController controller;

  const CustomTextFormField({
    super.key,
    required this.label,
    this.withBottomSpacer = true,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: withBottomSpacer ? 25 : 0),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          label: Text(
            label,
            style: const TextStyle(color: Color(0xffc0c0c0)),
          ),
          border: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xffc0c0c0),
            ),
          ),
        ),
      ),
    );
  }
}
