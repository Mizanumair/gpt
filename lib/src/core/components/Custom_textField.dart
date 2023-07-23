import 'package:flutter/material.dart';
import 'package:gpt/src/core/constants/dimensions.dart';
import 'package:gpt/src/core/constants/palette.dart';

import 'Custom_Divider.dart';

class CustomTextField extends StatelessWidget {
   CustomTextField({super.key});

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: margin_5),
            child: TextFormField(
              cursorColor: AppColors.green,
              style: TextStyle(color: AppColors.green, fontSize: font_11),
              textAlign: TextAlign.start,
              decoration: InputDecoration(
                fillColor: AppColors.grey.withOpacity(.15),
                filled: true,
                prefixIcon: Icon(Icons.search, size: font_18,),
                prefixIconColor: AppColors.black,
                labelText: 'Search for chats',
                  labelStyle: TextStyle(color: AppColors.darkGrey, fontSize: font_10, fontFamily: 'Gilroy'),
                  enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.transparent),
              ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(color: Colors.transparent),
                ),
              ),
            ),
          ),
          CustomDivider(height: height_1),
        ],
      ),

    );
  }
}
