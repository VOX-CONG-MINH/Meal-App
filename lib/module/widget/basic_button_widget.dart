import 'package:flutter/material.dart';
import '../../res/res.dart';

class BasicButtonWidget extends StatelessWidget {
  const BasicButtonWidget({
    super.key,
    required this.label,
    this.icon,
    required this.onPressed,
    this.borderRadius = 10.0,
    this.isSelected = false,
    this.backgroundColor,
    this.contentColor,
    this.width,
  });

  final String label;
  final IconData? icon;
  final VoidCallback onPressed;
  final double borderRadius;
  final bool isSelected;
  final double? width;
  final Color? backgroundColor;
  final Color? contentColor;

  @override
  Widget build(BuildContext context) {
    final bgColor =
        backgroundColor ?? (isSelected ? AppColors.primary600 : Colors.white);
    final textColor =
        contentColor ?? (isSelected ? Colors.white : AppColors.neuture800);

    return SizedBox(
      width: width, // Nếu null thì tự động co
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: bgColor,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(label, style: TextStyle(fontSize: 16, color: textColor)),
            if (icon != null) ...[
              const SizedBox(width: 8),
              Icon(icon, color: textColor),
            ],
          ],
        ),
      ),
    );
  }
}
