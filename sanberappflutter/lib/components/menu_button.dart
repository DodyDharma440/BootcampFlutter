import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  final VoidCallback? onTap;

  const MenuButton({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Material(
        color: Colors.black,
        child: InkWell(
          splashColor: Colors.black87,
          onTap: onTap,
          child: const SizedBox(
            width: 40,
            height: 40,
            child: Padding(
              padding: EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(),
                  ClipRRect(
                    borderRadius: BorderRadius.all(
                      Radius.circular(1),
                    ),
                    child: Material(
                      color: Colors.white,
                      child: SizedBox(
                        width: 16,
                        height: 2,
                      ),
                    ),
                  ),
                  SizedBox(height: 4),
                  ClipRRect(
                    borderRadius: BorderRadius.all(
                      Radius.circular(1),
                    ),
                    child: Material(
                      color: Colors.white,
                      child: SizedBox(
                        width: 10,
                        height: 2,
                      ),
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
