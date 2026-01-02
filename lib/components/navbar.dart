// ignore: file_names
import 'package:appilon/theme/colors.dart';
import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 64,
      color: AppColors.sideNav,
      child: Column(
        children: [
          SizedBox(height: 16),
          Icon(
            Icons.auto_awesome_mosaic,
            color: AppColors.whiteColor,
            size: 30,
          ),
          SizedBox(height: 24),
          Container(
            margin: EdgeInsets.symmetric(vertical: 14),
            child: Icon(Icons.add, color: AppColors.iconGrey, size: 22),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 14),
            child: Icon(Icons.search, color: AppColors.iconGrey, size: 22),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 14),
            child: Icon(Icons.language, color: AppColors.iconGrey, size: 22),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 14),
            child: Icon(
              Icons.auto_awesome,
              color: AppColors.iconGrey,
              size: 22,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 14),
            child: Icon(
              Icons.cloud_outlined,
              color: AppColors.iconGrey,
              size: 22,
            ),
          ),
          Spacer(),
          Container(
            margin: EdgeInsets.symmetric(vertical: 14),
            child: Icon(
              Icons.keyboard_arrow_right,
              color: AppColors.iconGrey,
              size: 22,
            ),
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}
