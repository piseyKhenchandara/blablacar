import 'package:blabla/ui/theme/theme.dart';
import 'package:flutter/material.dart';

class BlaButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonText;
  final bool isPrimaryColor;
  final IconData? icon;

  const BlaButton({
    super.key,
    required this.onPressed,
    required this.buttonText,
    this.isPrimaryColor = true,
    this.icon,
  });

  Color get backgroundColor =>
      isPrimaryColor ? BlaColors.primary : BlaColors.white;
  Color get textColor => isPrimaryColor ? BlaColors.white : BlaColors.primary;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 48,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          foregroundColor: textColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 0,
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            if (icon != null) ...[
              Icon(icon, color: textColor),
              SizedBox(width: 8),
            ],
            Text(buttonText, style: TextStyle(fontSize: 18, color: textColor)),
          ],
        ),
      ),
    );
  }
}
