import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mirza_dev/utils/constant/color/app_colors.dart';

class CustomTextFormField extends StatefulWidget {

  final String hintText;
  final int maxLines;

  const CustomTextFormField({
    required this.hintText,
    this.maxLines = 1,
    super.key
  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {

    return TextFormField(
      cursorColor: AppColors.primaryColor,
      keyboardType: TextInputType.text,
      style: GoogleFonts.montserrat(color: AppColors.primaryColor, fontSize: 16),
      maxLines: widget.maxLines,
      decoration: InputDecoration(
        fillColor: AppColors.transparentColor,
        filled: true,
        hintText: widget.hintText,
        hintStyle: GoogleFonts.montserrat(color: const Color(0xff71717a), fontSize: 16),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: AppColors.colorBlack.withOpacity(0.2), width: 1)
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: AppColors.colorBlack.withOpacity(0.2), width: 1)
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: AppColors.primaryColor, width: 1)
        ),
      ),
    );
  }
}
