import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mirza_dev/utils/constant/color/app_colors.dart';
import 'package:mirza_dev/utils/constant/image_string/app_images.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

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
                      text: "About ",
                      style: GoogleFonts.montserrat(
                          color: AppColors.colorWhite,
                          fontSize: 24,
                          fontWeight: FontWeight.w400
                      )
                  ),
                  TextSpan(
                      text: "Me",
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
        const Gap(150),
        Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                height: 350, width: 350,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: AppColors.colorWhite, width: 5),
                    image: const DecorationImage(image: AssetImage(AppImages.myImage), fit: BoxFit.fill)
                ),
              ),
            ),
            const Gap(80),
            Expanded(
              flex: 3,
              child: SizedBox(
                width: 800,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "I'm a passionate, self-proclaimed developer who specializes in Mobile App Development using Flutter & Firebase. "
                          "I am very enthusiastic about bringing the technical and visual aspects of digital products to life. "
                          "User experience, pixel perfect design, and writing clear, readable, highly performant code matters to me.",
                      style: GoogleFonts.montserrat(
                        color: AppColors.colorWhite,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const Gap(20),
                    Text(
                      "I began my journey as a Mobile App Developer in 2021, and since then, I've continued to grow and evolve as a developer, taking on new challenges and learning the latest technologies along the way. "
                          "Now, in my early thirties, 2 years after starting my app development journey, "
                          "I'm building mobile applications using modern technologies such as Flutter, Dart, Firebase, Socket.io, and much more.",
                      style: GoogleFonts.montserrat(
                        color: AppColors.colorWhite,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const Gap(20),
                    Text(
                      "When I'm not in full-on developer mode, you can find me hovering around on Linkedin or on Facebook, "
                          "witnessing the journey of early startups or enjoying some free time. "
                          "You can follow me on LinkedIn where I share tech-related bites and build in public, or you can follow me on GitHub.",
                      style: GoogleFonts.montserrat(
                        color: AppColors.colorWhite,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                )
              ),
            )
          ],
        )
      ],
    )



      /*Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 1,
          child: Container(
            height: 550, width: 550,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: AppColors.colorWhite, width: 5),
              image: const DecorationImage(image: AssetImage(AppImages.myImage), fit: BoxFit.fill)
            ),
          ),
        ),
        const Gap(80),
        Expanded(
          flex: 2,
          child: SizedBox(
            width: 800,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                              text: "About ",
                              style: GoogleFonts.montserrat(
                                  color: AppColors.colorWhite,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w400
                              )
                          ),
                          TextSpan(
                              text: "Me",
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
                const Gap(60),
                SizedBox(
                  width: 800,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "I'm a passionate, self-proclaimed developer who specializes in Mobile App Development using Flutter & Firebase. "
                        "I am very enthusiastic about bringing the technical and visual aspects of digital products to life. "
                        "User experience, pixel perfect design, and writing clear, readable, highly performant code matters to me.",
                        style: GoogleFonts.montserrat(
                          color: AppColors.colorWhite,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const Gap(20),
                      Text(
                        "I began my journey as a Mobile App Developer in 2021, and since then, I've continued to grow and evolve as a developer, taking on new challenges and learning the latest technologies along the way. "
                        "Now, in my early thirties, 2 years after starting my app development journey, "
                        "I'm building mobile applications using modern technologies such as Flutter, Dart, Firebase, Socket.io, and much more.",
                        style: GoogleFonts.montserrat(
                          color: AppColors.colorWhite,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const Gap(20),
                      Text(
                        "When I'm not in full-on developer mode, you can find me hovering around on Linkedin or on Facebook, "
                        "witnessing the journey of early startups or enjoying some free time. "
                        "You can follow me on LinkedIn where I share tech-related bites and build in public, or you can follow me on GitHub.",
                        style: GoogleFonts.montserrat(
                          color: AppColors.colorWhite,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    )*/;
  }
}
