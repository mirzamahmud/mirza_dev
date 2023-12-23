import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mirza_dev/data/my_experiences_data.dart';
import 'package:mirza_dev/utils/constant/color/app_colors.dart';

class ExperienceSection extends StatelessWidget {

  const ExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
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
                      text: "My ",
                      style: GoogleFonts.montserrat(
                          color: AppColors.primaryColor,
                          fontSize: 24,
                          fontWeight: FontWeight.w400
                      )
                  ),
                  TextSpan(
                      text: "Experiences",
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
        const Gap(60),
        Column(
          children: List.generate(MyExperiencesData.experienceData.length, (index) => Container(
            margin: const EdgeInsetsDirectional.only(bottom: 32),
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsetsDirectional.symmetric(horizontal: 24, vertical: 30),
            decoration: BoxDecoration(
              color: MyExperiencesData.experienceData[index].boxColor,
              borderRadius: BorderRadius.circular(12),
              border: index % 2 == 0 ? Border.all(color: AppColors.primaryColor, width: 1) : null
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Container(
                            height: 36, width: 36,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: AppColors.transparentColor,
                              image: DecorationImage(image: AssetImage(MyExperiencesData.experienceData[index].imageSrc), fit: BoxFit.fill),
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(8)
                            ),
                          ),
                          const Gap(24),
                          Expanded(
                            child: Text(
                                MyExperiencesData.experienceData[index].companyName,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                style: GoogleFonts.montserrat(
                                  color: index % 2 != 0 ? AppColors.colorWhite : AppColors.primaryColor,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600
                                ),
                              ),
                          )
                        ],
                      ),
                    ),
                    Text(
                      MyExperiencesData.experienceData[index].duration,
                      style: GoogleFonts.montserrat(
                          color: index % 2 != 0 ? AppColors.colorWhite : AppColors.primaryColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w400
                      ),
                    )
                  ],
                ),
                const Gap(30),
                Text(
                  MyExperiencesData.experienceData[index].description,
                  style: GoogleFonts.montserrat(
                      color: index % 2 != 0 ? AppColors.colorWhite : AppColors.primaryColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w400
                  ),
                )
              ],
            ),
          )),
        )
      ],
    );
  }
}
