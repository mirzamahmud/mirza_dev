import 'package:mirza_dev/model/my_skills_model.dart';
import 'package:mirza_dev/utils/constant/image_string/app_icons.dart';

class MySkillsData{
  
  static final List<MySkillsModel> skillData = [
    const MySkillsModel(imageSrc: AppIcons.cPlusPlusIcon, title: "C++"),
    const MySkillsModel(imageSrc: AppIcons.javaIcon, title: "Java"),
    const MySkillsModel(imageSrc: AppIcons.dartIcon, title: "Dart"),
    const MySkillsModel(imageSrc: AppIcons.flutterIcon, title: "Flutter"),
    const MySkillsModel(imageSrc: AppIcons.androidIcon, title: "Android"),
    const MySkillsModel(imageSrc: AppIcons.iosIcon, title: "iOS"),
    const MySkillsModel(imageSrc: AppIcons.gitIcon, title: "Git"),
    const MySkillsModel(imageSrc: AppIcons.firebaseIcon, title: "Firebase"),
    const MySkillsModel(imageSrc: AppIcons.mySQLIcon, title: "MySQL"),
    const MySkillsModel(imageSrc: AppIcons.postgreSQLIcon, title: "PostgreSQL"),
    const MySkillsModel(imageSrc: AppIcons.socketIoIcon, title: "Socket.io"),
    const MySkillsModel(imageSrc: AppIcons.figmaIcon, title: "Figma")
  ];
}