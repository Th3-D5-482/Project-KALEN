import 'package:appilon/theme/colors.dart';
import 'package:flutter/material.dart';

class SearchbarBtn extends StatefulWidget {
  const SearchbarBtn({super.key});

  @override
  State<SearchbarBtn> createState() => _SearchbarBtnState();
}

class _SearchbarBtnState extends State<SearchbarBtn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: Colors.transparent,
      ),
      child: Row(
        children: [
          Icon(Icons.plus_one, color: AppColors.iconGrey, size: 20),
          Text('Focus', style: TextStyle(color: AppColors.textGrey)),
        ],
      ),
    );
  }
}
