import 'package:flutter/material.dart';
import 'package:advanced_mobile_gpt/core/components/constant/image_const.dart';
import 'package:advanced_mobile_gpt/core/components/extensions/string_extensions.dart';
import 'package:advanced_mobile_gpt/mvvm/me/entities/feature_category.dart';

class Constant {
  static DateTime timeNow = DateTime.now();
  static List<String> boardNumber = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    'Exit',
    '0',
    '🗑️'
  ];

  static List<FeatureCategory> featureCategories = [
    FeatureCategory(
        content: 'Chat bot',
        image: ImageConst.chat,
        color: '#7CD4FD'.toColor()),
    FeatureCategory(
        content: 'keyboard',
        image: ImageConst.board,
        color: '#07AEAF'.toColor()),
    FeatureCategory(
        content: 'Writer',
        image: ImageConst.write,
        color: '#FF5757'.toColor()),
  ];
}
