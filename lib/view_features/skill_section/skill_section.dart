import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mirza_dev/data/my_skills_data.dart';
import 'package:mirza_dev/utils/constant/color/app_colors.dart';

class SkillSection extends StatelessWidget {

  const SkillSection({super.key});

  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: 300,
          padding: const EdgeInsetsDirectional.symmetric(horizontal: 32, vertical: 16),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: AppColors.transparentColor,
            border: Border.all(color: AppColors.colorWhite, width: 1.5),
            borderRadius: BorderRadius.circular(12)
          ),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              children: [
                TextSpan(
                  text: "My ",
                  style: GoogleFonts.montserrat(
                    color: AppColors.colorWhite,
                    fontSize: 24,
                    fontWeight: FontWeight.w400
                  )
                ),
                TextSpan(
                    text: "Skills",
                    style: GoogleFonts.montserrat(
                        color: AppColors.colorWhite,
                        fontSize: 24,
                        fontWeight: FontWeight.w700
                    )
                )
              ]
            ),
          ),
        ),
        const Gap(120),
        GridView.builder(
            shrinkWrap: true,
            addAutomaticKeepAlives: true,
            padding: EdgeInsets.zero,
            scrollDirection: Axis.vertical,
            itemCount: MySkillsData.skillData.length,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 6,
              childAspectRatio: MediaQuery.of(context).size.width,
              crossAxisSpacing: 10,
              mainAxisSpacing: 40,
              mainAxisExtent: 200
            ),
          itemBuilder: (context, index) => Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 150, width: 150,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: AppColors.transparentColor,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: AppColors.colorWhite, width: 2)
                ),
                child: Image.asset(
                  MySkillsData.skillData[index].imageSrc,
                  color: index == 11 ? AppColors.colorWhite : null,
                  height: 50, width: 50,
                ),
              ),
              const Gap(16),
              Expanded(
                child: Text(
                  MySkillsData.skillData[index].title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                    color: AppColors.colorWhite ,
                    fontWeight: FontWeight.w500,
                    fontSize: 20
                  ),
                ),
              )
            ],
          )
        )
      ],
    );
  }
}
