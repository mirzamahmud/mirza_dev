import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mirza_dev/utils/constant/color/app_colors.dart';
import 'package:mirza_dev/utils/constant/image_string/app_images.dart';
import 'package:mirza_dev/view_features/about_section/about_section.dart';
import 'package:mirza_dev/view_features/experience_section/experience_section.dart';
import 'package:mirza_dev/view_features/home_section/home_section.dart';
import 'package:mirza_dev/view_features/skill_section/skill_section.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<String> tabList = ["ABOUT ME", "SKILLS", "PROJECTS", "CONTACT"];

  List<GlobalKey> navigatorKeys = [
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
  ];

  final scrollController = ScrollController();

  void scrollToSection(BuildContext context) {
    Scrollable.ensureVisible(
      context,
      duration: const Duration(milliseconds: 600),
    );
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: AppColors.colorWhite,
      body: LayoutBuilder(
        builder: (context, constraint) {
          return constraint.maxWidth < 600 ? Container(color: AppColors.primaryColor) : Column(
            children: [

              // TODO: navigation_menu
              Container(
                width: MediaQuery.of(context).size.width, height: 100,
                padding: const EdgeInsetsDirectional.symmetric(horizontal: 80, vertical: 15),
                color: AppColors.colorWhite,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 40, width: 40,
                      child: GestureDetector(
                        onTap: () => scrollToSection(navigatorKeys[0].currentContext!),
                        child: Image.asset(AppImages.appLogo, color: AppColors.primaryColor)
                      )
                    ),
                    Row(
                      children: [
                        MaterialButton(
                          onPressed: () => scrollToSection(navigatorKeys[2].currentContext!),
                          elevation: 0,
                          hoverColor: AppColors.colorGrey.withOpacity(0.5),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.symmetric(horizontal: 16, vertical: 8),
                            child: Text(
                              "ABOUT ME",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                  color: AppColors.primaryColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 1.5
                              ),
                            ),
                          ),
                        ),
                        const Gap(20),
                        MaterialButton(
                          onPressed: () => scrollToSection(navigatorKeys[1].currentContext!),
                          elevation: 0,
                          hoverColor: AppColors.colorGrey.withOpacity(0.5),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.symmetric(horizontal: 16, vertical: 8),
                            child: Text(
                              "SKILLS",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                  color: AppColors.primaryColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 1.5
                              ),
                            ),
                          ),
                        ),
                        const Gap(20),
                        MaterialButton(
                          onPressed: () => scrollToSection(navigatorKeys[3].currentContext!),
                          elevation: 0,
                          hoverColor: AppColors.colorGrey.withOpacity(0.5),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.symmetric(horizontal: 16, vertical: 8),
                            child: Text(
                              "PROJECTS",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                  color: AppColors.primaryColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 1.5
                              ),
                            ),
                          ),
                        ),
                        const Gap(20),
                        MaterialButton(
                          onPressed: () => scrollToSection(navigatorKeys[4].currentContext!),
                          elevation: 0,
                          hoverColor: AppColors.colorGrey.withOpacity(0.5),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.symmetric(horizontal: 16, vertical: 8),
                            child: Text(
                              "CONTACT",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                  color: AppColors.primaryColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 1.5
                              ),
                            ),
                          ),
                        ),
                        const Gap(20),
                      ],
                    ),
                    MaterialButton(
                      onPressed: () async{
                        const url = 'https://drive.google.com/drive/folders/12QFlQfxmV3iS4-DvcMYiqyg1nek1yp7G';
                        if (await canLaunchUrl(Uri.parse(url))) {
                          await launchUrl(Uri.parse(url));
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      elevation: 0,
                      color: AppColors.primaryColor,
                      shape: RoundedRectangleBorder(
                          side: const BorderSide(color: AppColors.primaryColor, width: 1),
                          borderRadius: BorderRadius.circular(4)
                      ),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.symmetric(horizontal: 16, vertical: 8),
                        child: Text(
                          "RESUME",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                              color: AppColors.colorWhite,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1.5
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),

              // TODO: body
              Expanded(
                child: Scrollbar(
                  thickness: 5,
                  controller: scrollController,
                  trackVisibility: true,
                  child: SingleChildScrollView(
                    physics: const ScrollPhysics(),
                    controller: scrollController,
                    child: Column(
                      children: [
                        // TODO: home_section
                        SizedBox(
                          key: navigatorKeys[0],
                          height: 900, width: MediaQuery.of(context).size.width,
                          child: const HomeSection(),
                        ),

                        // TODO: skill_section
                        SizedBox(
                          key: navigatorKeys[1],
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width,
                                padding: const EdgeInsetsDirectional.symmetric(horizontal: 80, vertical: 60),
                                color: AppColors.primaryColor,
                                child: const SkillSection(),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                padding: const EdgeInsetsDirectional.symmetric(horizontal: 80, vertical: 60),
                                color: AppColors.colorWhite,
                                child: const ExperienceSection(),
                              )
                            ],
                          ),
                        ),

                        // TODO: about_section
                        Container(
                          key: navigatorKeys[2],
                          width: MediaQuery.of(context).size.width,
                          color: AppColors.colorWhite,
                          padding: const EdgeInsetsDirectional.symmetric(vertical: 60, horizontal: 80),
                          child: const AboutSection(),
                        ),

                        // TODO: project_section
                        Container(
                          key: navigatorKeys[3],
                          height: 900,
                          width: MediaQuery.of(context).size.width,
                          color: AppColors.primaryColor,
                          padding: const EdgeInsetsDirectional.symmetric(vertical: 40, horizontal: 40),
                          child: Container(),
                        ),

                        // TODO: contact_section
                        Container(
                          key: navigatorKeys[4],
                          height: 900,
                          width: MediaQuery.of(context).size.width,
                          color: AppColors.colorWhite,
                          padding: const EdgeInsetsDirectional.symmetric(vertical: 40, horizontal: 40),
                          child: Container(),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          );
        }
      ),
    );
  }
}
