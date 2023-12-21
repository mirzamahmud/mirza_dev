import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mirza_dev/utils/constant/color/app_colors.dart';
import 'package:mirza_dev/utils/constant/image_string/app_icons.dart';
import 'package:mirza_dev/utils/constant/image_string/app_images.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeSection extends StatelessWidget {

  const HomeSection({super.key});

  @override
  Widget build(BuildContext context) {

    return Stack(
      children: [

        /// TODO: center_image
        /*Positioned.fill(
          right: 150,
          child: Align(
            alignment: Alignment.centerRight,
            child: Container(
              height: 700, width: 700,
              decoration: BoxDecoration(
                  color: AppColors.offWhiteColor,
                  shape: BoxShape.circle,
                  border: Border.all(color: AppColors.colorBlack, width: 32),
                  boxShadow: [
                    BoxShadow(color: AppColors.colorBlack.withOpacity(0.5), offset: const Offset(-2, -2), blurRadius: 50),
                    BoxShadow(color: AppColors.colorBlack.withOpacity(0.5), offset: const Offset(2, 2), blurRadius: 50),
                  ]
              ),
            ),
          ),
        ),*/
        Align(
          alignment: Alignment.bottomRight,
          child: Image.asset(
            AppImages.profileImage,
            height: 700,
            width: 700
          )
        ),

        // TODO: software_developer
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsetsDirectional.only(start: 80),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Hello I'm ",
                        style: GoogleFonts.montserrat(
                          color: AppColors.primaryColor,
                          fontWeight: FontWeight.w400,
                          fontSize: 32
                        )
                      ),
                      TextSpan(
                        text: "Mirza Mahmud Hossan.",
                        style: GoogleFonts.montserrat(
                            color: AppColors.primaryColor,
                            fontSize: 32,
                            fontWeight: FontWeight.w800
                        ),
                      ),
                    ]
                  ),
                ),
                const Gap(12),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Software ",
                        style: GoogleFonts.montserrat(color: AppColors.primaryColor, fontWeight: FontWeight.w500, fontSize: 32)
                      ),
                      TextSpan(
                          text: "Developer",
                          style: GoogleFonts.montserrat(
                            fontSize: 32,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                    ]
                  ),
                ),
                const Gap(12),
                RichText(
                  text: TextSpan(
                      children: [
                        TextSpan(
                            text: "Based In ",
                            style: GoogleFonts.montserrat(
                                color: AppColors.primaryColor,
                                fontWeight: FontWeight.w400,
                                fontSize: 32
                            )
                        ),
                        TextSpan(
                          text: "Bangladesh.",
                          style: GoogleFonts.montserrat(
                              color: AppColors.primaryColor,
                              fontSize: 32,
                              fontWeight: FontWeight.w800
                          ),
                        ),
                      ]
                  ),
                ),
                const Gap(32),
                SizedBox(
                  width: 600,
                  child: Text(
                    "I'm a Software Developer who is enthusiastic about designing and creating Mobile Apps and who loves to code. "
                    "In my own opinion, Flutter is great. I like using the Flutter framework for my work. "
                    "Now I'm learning Kotlin and PostgreSQL while using a Dart and Flutter. ",
                    overflow: TextOverflow.ellipsis,
                    maxLines: 4,
                    style: GoogleFonts.montserrat(
                      color: AppColors.primaryColor,
                      fontSize: 14,
                      fontWeight: FontWeight.normal
                    ),
                  ),
                )
              ],
            ),
          ),
        ),

        // TODO: follow_me
        Positioned(
          bottom: 120,
          left: 80,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Follow Me On",
                    style: GoogleFonts.montserrat(
                        color: AppColors.primaryColor,
                        fontSize: 20,
                        fontWeight: FontWeight.w600
                    ),
                  ),
                  const Gap(12),
                  Container(
                    width: 400, height: 2,
                    color: AppColors.primaryColor,
                  )
                ],
              ),
              const Gap(16),
              Row(
                children: [
                  // linkedin
                  GestureDetector(
                    onTap: () async {
                      const url = 'https://linkedin.com/in/mirzamahmudhossan/';
                      if (await canLaunchUrl(Uri.parse(url))) {
                        await launchUrl(Uri.parse(url));
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: Image.asset(AppIcons.linkedinIcon, color: AppColors.primaryColor, height: 32, width: 32),
                  ),
                  const Gap(24),

                  // github
                  GestureDetector(
                    onTap: () async {
                      const url = 'https://github.com/mirzamahmud';
                      if (await canLaunchUrl(Uri.parse(url))) {
                        await launchUrl(Uri.parse(url));
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: Image.asset(AppIcons.githubIcon, color: AppColors.primaryColor, height: 32, width: 32),
                  ),
                  const Gap(24),

                  // stack_overflow
                  GestureDetector(
                    onTap: () async {
                      const url = 'https://stackoverflow.com/users/19278134/mirza-mahmud-hossan';
                      if (await canLaunchUrl(Uri.parse(url))) {
                        await launchUrl(Uri.parse(url));
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: Image.asset(AppIcons.stackOverflowIcon, color: AppColors.primaryColor, height: 32, width: 32),
                  ),
                  const Gap(24),

                  // let_code
                  GestureDetector(
                    onTap: () async {
                      const url = 'https://leetcode.com/Piyash_Mirza/';
                      if (await canLaunchUrl(Uri.parse(url))) {
                        await launchUrl(Uri.parse(url));
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: Image.asset(AppIcons.letCodeIcon, color: AppColors.primaryColor, height: 32, width: 32),
                  ),
                  const Gap(24),

                  // facebook
                  GestureDetector(
                    onTap: () async {
                      const url = 'https://www.facebook.com/piyash.mirza.1';
                      if (await canLaunchUrl(Uri.parse(url))) {
                        await launchUrl(Uri.parse(url));
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: Image.asset(AppIcons.facebookIcon, color: AppColors.primaryColor, height: 32, width: 32),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
