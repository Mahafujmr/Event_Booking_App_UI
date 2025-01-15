import 'package:flutter/material.dart';
import '../utils/constants/app_colors.dart';
import '../utils/constants/app_images.dart';
import '../utils/constants/app_strings.dart';
import '../utils/constants/app_text_style.dart';
class EmptyEventPageScreens extends StatelessWidget {
  const EmptyEventPageScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.seeAllColor,
      //backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text(AppString.event,
          style: mediumTextstyle,
        ),
        leading: InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: Image.asset(AppImage.leftarrow,color: Colors.black54,)),
        actions: [
          Image.asset(AppImage.search,color: Colors.black54,),
          SizedBox(width: 20,),
          Image.asset(AppImage.more,color: Colors.black54,),
        ],
        backgroundColor: AppColor.backgroundColor,
        centerTitle: true,
      ),
      body: Column(
        children: [
          /// container and text and container
          Padding(
            padding: const EdgeInsets.only(left: 10,top: 20),
            child: Container(
              padding: EdgeInsets.only(left: 15),
              width: 320,
              height: 70,
             decoration: BoxDecoration(
               color: Colors.black12,
               //color: Color (0xfff6f6f6),
               borderRadius: BorderRadius.circular(20),
             ),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 15),
                    width: 130,
                    height: 45,
                    decoration: BoxDecoration(
                      color: AppColor.backgroundColor,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: AppColor.backgroundColor,
                          offset: Offset(1, 1),
                          spreadRadius: 5
                        ),
                      ]
                    ),
                    child: Text(AppString.buttonText,
                    style:emptyText1,
                    textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(width: 30),
                  Text(AppString.boxText,
                  style:emptyText2
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 60,),
          /// calender Image
          Image.asset(AppImage.calenderPhoto,
            width: 200,
          ),
          /// line box
          Container(
            width: double.infinity,
            height: 4,
            color: AppColor.lineColor,
          ),
          SizedBox(height: 40,),
          /// text
          Text(AppString.noEvent,
          style: mediumTextstyle,
          ),
          SizedBox(height: 20,),
          Text(AppString.textBox,
          style: emptyText,
          ),
          SizedBox(height: 80),
          /// container and text
          Container(
            padding: EdgeInsets.only(top: 25),
            width: 320,
            height: 70,
            decoration: BoxDecoration(
              color: AppColor.box,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(AppString.exploreEvent,
            style: box,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
