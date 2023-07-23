import 'package:flutter/material.dart';
import 'package:gpt/src/core/components/Custom_Divider.dart';
import 'package:gpt/src/core/components/Custom_textField.dart';
import 'package:gpt/src/core/components/chatui.dart';
import 'package:gpt/src/core/components/custom_chat.dart';
import 'package:gpt/src/core/constants/dimensions.dart';
import 'package:gpt/src/core/constants/palette.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
       //
        children: [
          Row(
            children: [
              Container(
                 height: height_40,
                 width: MediaQuery.of(context).size.width*.5,
                child: Row(
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.library_books_sharp, size: font_15,)),
                    Icon(Icons.flare, size: font_15,),
                    Text('   OpenAI', style: TextStyle(fontSize: font_15, fontFamily: 'Gilroy', fontWeight: FontWeight.w500),),
                  ],
                ),
              ),
              Container(
                height: height_40,
                width: MediaQuery.of(context).size.width*.5,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.notifications_none_outlined, size: font_15,)),
                    IconButton(onPressed: (){}, icon: Icon(Icons.nightlight_outlined, size: font_15,)),
                    IconButton(onPressed: (){}, icon: Icon(Icons.logout_outlined, size: font_15,)),
                    CircleAvatar(
                      radius: radius_8,
                      backgroundColor: AppColors.green,
                    ),
                    Text('  Mizan Umair            ', style: TextStyle(fontSize: font_12, fontFamily: 'Gilroy', fontWeight: FontWeight.normal),),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                height: height_40,
                width: MediaQuery.of(context).size.width*.5,
                child: Row(
                  children: [
                    Text('   Chats', style: TextStyle(color: AppColors.black, fontFamily: 'Gilroy', fontSize: font_15, fontWeight: FontWeight.w600),),
                    TextButton(onPressed: (){}, child: Row(
                      children: [
                        Text('Chats', style: TextStyle(color: AppColors.black),),
                        CircleAvatar(
                          backgroundColor: AppColors.green,
                          radius: radius_7,
                          child: Text('12', style: TextStyle(fontSize: font_7, color: Colors.white), textAlign: TextAlign.center,),
                        ),
                      ],
                    )),
                    TextButton(onPressed: (){}, child: Text('  Groups', style: TextStyle(color: AppColors.darkGrey, fontFamily: 'Gilroy', fontSize: font_10,),)),
                    TextButton(onPressed: (){}, child: Text('Archieved', style: TextStyle(color: AppColors.darkGrey, fontFamily: 'Gilroy', fontSize: font_10,),)),
                    TextButton(onPressed: (){}, child: Text('Deleted', style: TextStyle(color: AppColors.darkGrey, fontFamily: 'Gilroy', fontSize: font_10,),)),
                  ],
                ),
              ),
              Container(
                height: height_40,
                width: MediaQuery.of(context).size.width*.5,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: margin_6),
                      child: TextButton(
                          onPressed: (){},
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(AppColors.green),
                            elevation: MaterialStatePropertyAll(0),
                          ),
                          child: Text('New Group', style: TextStyle(color: AppColors.white, fontSize: font_11, fontFamily: 'Gilroy'),)),
                    ),
                  ],
                ),
              ),
            ],
          ),

          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width*.25,
               // height: height_120,
                color: AppColors.green,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomTextField(),
                    for(int i=1; i<40; i++)
                      CustomChat()

                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width*.75,
                height: MediaQuery.of(context).size.height*.88,
                color: AppColors.green,
                child: ChatUI(),
              ),
            ],
          )
        ],
      ),
    );
  }
}
