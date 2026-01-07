import 'package:appilon/components/searchbar_btn.dart';
import 'package:appilon/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Where Knowledge Begins',
          style: GoogleFonts.ibmPlexMono(
            fontSize: 40,
            fontWeight: FontWeight.w400,
            height: 1.2,
            letterSpacing: -0.5,
          ),
        ),
        SizedBox(height: 32),
        Container(
          width: 700,
          decoration: BoxDecoration(color: AppColors.searchBar),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: 'Search anything...',
                  hintStyle: TextStyle(color: AppColors.textGrey, fontSize: 16),
                  border: InputBorder.none,
                ),
              ),
              Row(
                children: [
                  SearchbarBtn(),
                  SizedBox(width: 12),
                  SearchbarBtn(),
                  Spacer(),
                  Container(
                    padding: EdgeInsets.all(9),
                    decoration: BoxDecoration(
                      color: AppColors.submitButton,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Icon(
                      Icons.arrow_forward,
                      color: AppColors.background,
                      size: 16,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
