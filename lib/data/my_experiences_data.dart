import 'package:mirza_dev/model/my_experiences_model.dart';
import 'package:mirza_dev/utils/constant/color/app_colors.dart';
import 'package:mirza_dev/utils/constant/image_string/app_images.dart';

class MyExperiencesData{

  static List<MyExperiencesModel> experienceData = [

    MyExperiencesModel(
        imageSrc: AppImages.bdCallingImage,
        companyName: "Software Developer at bdCalling IT Ltd.",
        duration: "Jul 5, 2023 -- Running",
        description: "As a Software Developer at bdCalling IT LTD. I played a pivotal role in developing high-quality Mobile Applications using Flutter. "
        "I designed, built, and maintained reusable and reliable code, focusing on performance and responsiveness. Here I worked on projects such as QR Code Scanning, Car Rental Application, Residence Booking Application, etc."
        "Collaborating with a dynamic team, I contributed to the enhancement of search accuracy and efficiency, optimizing user experiences for millions of users worldwide. "
        "Identified and resolved bottlenecks and fixed bugs. Deployed apps on both the App Store and Play Store, ensuring a seamless user experience.",
        boxColor: AppColors.colorBlack.withOpacity(0.2)
    ),

    const MyExperiencesModel(
        imageSrc: AppImages.theSoftKingImage,
        companyName: "Jr. Software Developer at THESOFTKING Limited",
        duration: "Aug 5, 2022 -- Jun 30, 2023",
        description: "As a Junior Software Developer at THESOFTKING Limited. I played a pivotal role in developing high-quality Mobile Application using Flutter. "
        "Here I Converted a Figma design into efficient Flutter code, created reusable and dependable code while focusing on performance and responsiveness. "
        "Worked with outside data sources and APIs and worked on projects such as Fintech, Crypto Wallet, Service Apps, etc. "
        "Worked with cross-functional teams to validate requirements, devise solutions, execute new features and apps were deployed to ensure a unified user experience.",
        boxColor: AppColors.colorBlack
    ),

    MyExperiencesModel(
        imageSrc: AppImages.opusImage,
        companyName: "Software Developer Intern at OPUS Technology Ltd.",
        duration: "Apr 9, 2022 -- Jul 31, 2022",
        description: "As a Junior Software Developer Intern at OPUS Technology Ltd. I gained knowledge about Flutter State Management. Gathered knowledge about REST APIs. In this company, I worked some few projects such as Online GD, BD Police Inventory Management, etc."
        "From here, I can learn about professional life teamwork, communication, behavior, and many more things.",
        boxColor: AppColors.colorBlack.withOpacity(0.2)
    ),
  ];
}