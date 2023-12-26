import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mirza_dev/utils/constant/color/app_colors.dart';
import 'package:mirza_dev/view_features/contact_section/inner_widget/custom_text_form_field.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        Container(
          width: 300,
          padding: const EdgeInsetsDirectional.symmetric(horizontal: 32, vertical: 16),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: AppColors.transparentColor,
              border: Border.all(color: AppColors.primaryColor, width: 1.5),
              borderRadius: BorderRadius.circular(12)
          ),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                children: [
                  TextSpan(
                      text: "Contact ",
                      style: GoogleFonts.montserrat(
                          color: AppColors.primaryColor,
                          fontSize: 24,
                          fontWeight: FontWeight.w400
                      )
                  ),
                  TextSpan(
                      text: "Me",
                      style: GoogleFonts.montserrat(
                          color: AppColors.primaryColor,
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      )
                  )
                ]
            ),
          ),
        ),
        const Gap(80),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomTextFormField(hintText: "Your name"),
                  const Gap(20),

                  const CustomTextFormField(hintText: "Email"),
                  const Gap(20),

                  const CustomTextFormField(hintText: "Your website (If exists"),
                  const Gap(20),

                  const CustomTextFormField(hintText: "How can I help?", maxLines: 6),
                  const Gap(20),
                  SizedBox(
                    height: 56, width: 200,
                    child: MaterialButton(
                      onPressed: () {},
                      elevation: 0,
                      color: AppColors.primaryColor,
                      shape: RoundedRectangleBorder(
                          side: const BorderSide(color: AppColors.primaryColor, width: 1),
                          borderRadius: BorderRadius.circular(4)
                      ),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.symmetric(horizontal: 16, vertical: 8),
                        child: Text(
                          "Get In Touch",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                              color: AppColors.colorWhite,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1.5
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const Gap(110),
            Expanded(
              flex: 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 800,
                    child: Text(
                      "Let's talk for Something special & Discuss Your Projects.",
                      style: GoogleFonts.montserrat(color: AppColors.primaryColor, fontSize: 48, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Gap(24),
                  SizedBox(
                    width: 600,
                    child: Text(
                      "I seek to push the limits of creativity to create high-engaging, user-friendly, and memorable interactive experiences. "
                      "Let’s make something new, different, meaningful, or more visual or conceptual.",
                      style: GoogleFonts.montserrat(
                        color: AppColors.colorBlack,
                        fontWeight: FontWeight.w400,
                        fontSize: 14
                      ),
                    ),
                  ),
                  const Gap(24),
                  Row(
                    children: [
                      const Icon(Icons.email_sharp, color: AppColors.primaryColor, size: 24),
                      const Gap(12),
                      Expanded(
                        child: Text(
                          "mirza.dev25@gmail.com",
                          style: GoogleFonts.montserrat(color: AppColors.primaryColor, fontSize: 20, fontWeight: FontWeight.w600),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  const Gap(12),
                  Row(
                    children: [
                      const Icon(Icons.phone, color: AppColors.primaryColor, size: 24),
                      const Gap(12),
                      Text(
                        "+8801846235375",
                        style: GoogleFonts.montserrat(color: AppColors.primaryColor, fontSize: 20, fontWeight: FontWeight.w600),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}
