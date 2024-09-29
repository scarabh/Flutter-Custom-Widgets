import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SvgIconButton extends StatelessWidget {
  const SvgIconButton({super.key, this.size = 28, required this.asset});

  final double size;
  final String asset;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 28,
      width: 28,
      padding: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
          width: 0.34,
        ),
        color: Colors.grey.shade50,
        shape: BoxShape.circle,
      ),
      child: SvgPicture.asset(asset),
    );
  }
}
