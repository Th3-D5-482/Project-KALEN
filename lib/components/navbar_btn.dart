import 'package:appilon/theme/colors.dart';
import 'package:flutter/material.dart';

class NavbarBtn extends StatelessWidget {
  final bool isCollapsed;
  final IconData icon;
  final String label;
  const NavbarBtn({
    super.key,
    required this.isCollapsed,
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: isCollapsed
          ? MainAxisAlignment.center
          : MainAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 14, horizontal: 10),
          child: Icon(icon, color: AppColors.iconGrey, size: 22),
        ),
        isCollapsed
            ? const SizedBox()
            : Text(
                label,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
      ],
    );
  }
}
