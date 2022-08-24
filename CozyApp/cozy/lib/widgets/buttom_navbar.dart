import 'package:cozy/theme.dart';
import 'package:flutter/material.dart';

class ButtonNavbar extends StatelessWidget {
  const ButtonNavbar({
    super.key,
    required this.imageUrl,
    required this.isActive,
  });

  final String imageUrl;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Image.asset(
          imageUrl,
          width: 26,
        ),
        const Spacer(),
        isActive
            ? Container(
                width: 30,
                height: 2,
                decoration: BoxDecoration(
                  color: purpleColor,
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(10000),
                  ),
                ),
              )
            : Container(),
      ],
    );
  }
}
