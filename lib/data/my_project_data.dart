import 'package:mirza_dev/model/my_project_model.dart';
import 'package:mirza_dev/utils/constant/image_string/app_images.dart';

class MyProjectData{

  static List<MyProjectModel> projectData = [
    const MyProjectModel(
      imageSrc: AppImages.travelAppImage,
      projectName: "Traver ",
      shortDescription: """Traver is a complete travel guide app based on a country that was built entirely using Google's Flutter platform. It also has an admin panel built with Flutter Web. It is compatible with both Android and iOS. We used Firestore Database as the backend, GetX for state management, and several animations to make this user-friendly. We used Google Maps and its APIs to obtain surrounding data such as hotels and restaurants and to provide paths between the source and the destination.""",
      tools: ["Flutter", "Dart", "Firebase", "Figma"]
    ),

    const MyProjectModel(
        imageSrc: AppImages.bettingAppImage,
        projectName: "ByteBet ",
        shortDescription: """ByteBet is a high-end sports betting solution built on the dependable Flutter platform. It is precision-crafted for ambitious entrepreneurs interested in building their own betting apps. ByteBet is a one-stop solution for all of your betting needs. Users may easily join this site, either directly or through referrals, and place wagers across a wide range of categories, including live sports and gaming. ByteBet's administration capabilities provide you complete control over users, website management, game oversight, live betting supervision, and the critical responsibility of picking winners.""",
        tools: ["Flutter", "Dart", "Figma"]
    ),

    const MyProjectModel(
        imageSrc: AppImages.signalLabImage,
        projectName: "SignalLab ",
        shortDescription: """SignalLab is a Professional Trading Signal Solution that comes with Email, SMS & Telegram Integration. It’s developed for those people who want to start their Trading or forex signal website with additional features. There are approximately 10 million forex traders in the world today. 3.2 million are in Asia, and 1.5 million each in Europe and North America. 1 in 10 people currently invest in cryptocurrencies, many for ease of trading, a CNBC survey finds. More people are jumping into cryptocurrency, many because of how easy it’s become to trade digital assets. Trading and Investment Is a Huge industry, a complete solution for signal business. here, users can join via and purchase their desired plan, admin is able to send a signal when we want from the admin panel.""",
        tools: ["Flutter", "Dart", "REST APIs"]
    ),

    const MyProjectModel(
        imageSrc: AppImages.viserBankImage,
        projectName: "ViserBank ",
        shortDescription: """ViserBank is a comprehensive digital banking solution that provides an all-in-one banking experience for individuals and businesses. Our new Flutter(Android & IOS) application makes it easy to manage your finances on the go. With ViserBank mobile application, you can easily manage your finances from anywhere, anytime. ViserBank allows you to manage your profile, make deposits, apply for loans, view and manage your accounts, choose from various plans, transfer funds to other accounts or banks, manage beneficiaries, withdraw your earnings, and much more.""",
        tools: ["Flutter", "Dart", "REST APIs"]
    ),
  ];
}