import 'package:flutter/material.dart';

class MyExperiencesModel{

  final String imageSrc;
  final String companyName;
  final String duration;
  final String description;
  final Color boxColor;

  const MyExperiencesModel({required this.imageSrc, required this.companyName, required this.duration, required this.description, required this.boxColor});
}