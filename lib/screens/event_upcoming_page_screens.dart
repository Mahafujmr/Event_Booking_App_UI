import 'package:assignment_06/event_book_custom_widget/event_upcoming_page_custom_widget.dart';
import 'package:assignment_06/screens/wish_list_page_screens.dart';
import 'package:flutter/material.dart';
import '../utils/constants/app_colors.dart';
import '../utils/constants/app_images.dart';
import '../utils/constants/app_strings.dart';
import '../utils/constants/app_text_style.dart';
class EventUpcomingPageScreens extends StatelessWidget {
  const EventUpcomingPageScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bodyBoxColor,
      appBar: AppBar(
        title: Text(AppString.event,
          style: mediumTextstyle,
        ),
        /// use navigator pop
        leading: InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: Image.asset(AppImage.leftarrow,color: Colors.black54,)),
        /// use image
        actions: [
          Image.asset(AppImage.search,color: Colors.black54,),
          SizedBox(width: 20,),
          Image.asset(AppImage.more,color: Colors.black54,),
        ],
        backgroundColor: AppColor.backgroundColor,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 30,right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          /// container and image add
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              /// use container
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
            SizedBox(height: 20,),
            /// use event upcoming page custom widget
            EventUpcomingPageCustomWidget(photo: AppImage.pic1, name: AppString.internation, date: AppString.date, title: AppString.stadium),

            EventUpcomingPageCustomWidget(photo: AppImage.pic2, name: AppString.concert, date: AppString.intDate, title: AppString.stadium),
          ],
        ),
      ),
    );
  }
}
