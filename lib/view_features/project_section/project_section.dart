import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mirza_dev/data/my_project_data.dart';
import 'package:mirza_dev/utils/constant/color/app_colors.dart';

class ProjectSection extends StatelessWidget {

  const ProjectSection({super.key});

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
                      text: "Projects",
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

        // TODO: content
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(MyProjectData.projectData.length, (index) {

            return Padding(
              padding: EdgeInsetsDirectional.only(bottom: index == 3 ? 0 : 40),
              child: index % 2 == 0 ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 400, width: 500,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        image: DecorationImage(image: AssetImage(MyProjectData.projectData[index].imageSrc), fit: BoxFit.fill)
                    ),
                  ),
                  const Gap(40),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${index + 1}".padLeft(2, "0"),
                          style: GoogleFonts.montserrat(color: AppColors.primaryColor, fontWeight: FontWeight.bold, fontSize: 32),
                        ),
                        const Gap(16),
                        Text(
                          MyProjectData.projectData[index].projectName,
                          style: GoogleFonts.montserrat(color: AppColors.primaryColor, fontWeight: FontWeight.w700, fontSize: 24),
                        ),
                        const Gap(8),
                        Text(
                          MyProjectData.projectData[index].shortDescription,
                          style: GoogleFonts.montserrat(color: AppColors.primaryColor, fontWeight: FontWeight.normal, fontSize: 16),
                        ),
                        const Gap(16),
                        Wrap(
                            spacing: 8,
                            runSpacing: 8,
                            children: List.generate(MyProjectData.projectData[index].tools.length, (toolIndex) => Container(
                              width: 100,
                              padding: const EdgeInsetsDirectional.all(8),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(color: AppColors.transparentColor, borderRadius: BorderRadius.circular(8), border: Border.all(color: AppColors.primaryColor, width: 1)),
                              child: Text(
                                MyProjectData.projectData[index].tools[toolIndex],
                                textAlign: TextAlign.center,
                                style: GoogleFonts.montserrat(
                                    color: AppColors.primaryColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500
                                ),
                              ),
                            ))
                        )
                      ],
                    ),
                  ),
                ],
              ) : Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${index + 1}".padLeft(2, "0"),
                          style: GoogleFonts.montserrat(color: AppColors.primaryColor, fontWeight: FontWeight.bold, fontSize: 32),
                        ),
                        const Gap(16),
                        Text(
                          MyProjectData.projectData[index].projectName,
                          style: GoogleFonts.montserrat(color: AppColors.primaryColor, fontWeight: FontWeight.w700, fontSize: 24),
                        ),
                        const Gap(8),
                        Text(
                          MyProjectData.projectData[index].shortDescription,
                          style: GoogleFonts.montserrat(color: AppColors.primaryColor, fontWeight: FontWeight.normal, fontSize: 16),
                        ),
                        const Gap(16),
                        Wrap(
                            spacing: 8,
                            runSpacing: 8,
                            children: List.generate(MyProjectData.projectData[index].tools.length, (toolIndex) => Container(
                              width: 100,
                              padding: const EdgeInsetsDirectional.all(8),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(color: AppColors.transparentColor, borderRadius: BorderRadius.circular(8), border: Border.all(color: AppColors.primaryColor, width: 1)),
                              child: Text(
                                MyProjectData.projectData[index].tools[toolIndex],
                                textAlign: TextAlign.center,
                                style: GoogleFonts.montserrat(
                                    color: AppColors.primaryColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500
                                ),
                              ),
                            ))
                        )
                      ],
                    )
                  ),
                  const Gap(40),
                  Container(
                    height: 400, width: 500,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        image: DecorationImage(image: AssetImage(MyProjectData.projectData[index].imageSrc), fit: BoxFit.fill)
                    ),
                  ),
                ],
              ),
            );
          }),
        )
      ],
    );
  }
}
