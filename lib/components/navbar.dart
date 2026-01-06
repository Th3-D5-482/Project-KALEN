// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore

import 'package:appilon/components/navbar_btn.dart';
import 'package:appilon/theme/colors.dart';
import 'package:flutter/material.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  bool isCollapsed = true;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 100),
      width: isCollapsed ? 64 : 150,
      color: AppColors.sideNav,
      child: Column(
        children: [
          SizedBox(height: 16),
          Icon(
            Icons.auto_awesome_mosaic,
            color: AppColors.whiteColor,
            size: isCollapsed ? 30 : 60,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: isCollapsed
                  ? CrossAxisAlignment.center
                  : CrossAxisAlignment.start,
              children: [
                SizedBox(height: 24),
                NavbarBtn(
                  isCollapsed: isCollapsed,
                  icon: Icons.add,
                  label: 'Home',
                ),
                NavbarBtn(
                  isCollapsed: isCollapsed,
                  icon: Icons.search,
                  label: 'Search',
                ),
                NavbarBtn(
                  isCollapsed: isCollapsed,
                  icon: Icons.language,
                  label: 'Spaces',
                ),
                NavbarBtn(
                  isCollapsed: isCollapsed,
                  icon: Icons.auto_awesome,
                  label: 'Discover',
                ),
                NavbarBtn(
                  isCollapsed: isCollapsed,
                  icon: Icons.cloud_outlined,
                  label: 'Library',
                ),
                Spacer(),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                isCollapsed = !isCollapsed;
              });
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 100),
              margin: EdgeInsets.symmetric(vertical: 14, horizontal: 10),
              child: Icon(
                isCollapsed
                    ? Icons.keyboard_arrow_right
                    : Icons.keyboard_arrow_left,
                color: AppColors.iconGrey,
                size: 22,
              ),
            ),
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}
