import 'package:flutter/material.dart';
import 'package:gpt/src/core/constants/dimensions.dart';
import 'package:gpt/src/core/constants/palette.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({Key?key,
    required this.height,
  }):super(key: key);

  final double height;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: height_8,
          width: width_3,
        ),
        Divider(
          height: height,
          color: AppColors.grey,
          thickness: .5,
          endIndent: 20,
          indent: 20,
        ),

      ],
    );
  }
}
