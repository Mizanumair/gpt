import 'package:flutter/material.dart';
import 'package:gpt/src/core/constants/dimensions.dart';
import 'package:gpt/src/core/constants/palette.dart';

import 'Custom_Divider.dart';

Widget CustomChat (){
  return Column(
    children: [
      ListTile(
        leading: CircleAvatar(
          radius: 15,
          backgroundColor: Colors.red,
        ),
        horizontalTitleGap: .5,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: height_2,),
            Text(
              'Mizan (Software Engineer)', style: TextStyle(color: AppColors.black, fontFamily: 'Gilroy', fontSize: font_12,),textAlign: TextAlign.start,
            ),
            SizedBox(height: height_2,),
            Text(
              'Tell me about Dart programming language.', style: TextStyle(color: AppColors.grey, fontFamily: 'Gilroy', fontSize: font_9,),textAlign: TextAlign.start,
            ),
          ],
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            CircleAvatar(
              radius: radius_3,
              backgroundColor: AppColors.green,
            ),
            SizedBox(height: height_10,),
            Text(
              '10:02', style: TextStyle(color: AppColors.black, fontFamily: 'Gilroy', fontSize: font_8,),textAlign: TextAlign.start,
            ),
          ],
        ),
      ),
      CustomDivider(height: height_1),

    ],
  );
}
