import 'package:flutter/material.dart';
import '../event_book_custom_widget/see_all_event_page_custom_widget.dart';
import '../utils/constants/app_colors.dart';
import '../utils/constants/app_images.dart';
import '../utils/constants/app_strings.dart';
import '../utils/constants/app_text_style.dart';
class EventPastPageScreens extends StatelessWidget {
  const EventPastPageScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.seeAllColor,
      appBar: AppBar(
        title: Text(AppString.event,
          style: mediumTextstyle,
        ),
        /// navigator pop use
        leading: InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: Image.asset(AppImage.leftarrow,color: Colors.black54,)),
        actions: [
          /// use image for appbar
          Image.asset(AppImage.search,color: Colors.black54,),
          SizedBox(width: 20,),
          Image.asset(AppImage.more,color: Colors.black54,),
        ],
        backgroundColor: AppColor.backgroundColor,
        centerTitle: true,
      ),
      /// use list view widget
      body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15,top: 20,right: 10),
              /// use container and text
              child: Container(
                padding: EdgeInsets.only(left: 30),
                width: 330,
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  //color: Color (0xfff6f6f6),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Text(AppString.buttonText,
                        style:emptyText2
                    ),
                    SizedBox(width: 65),
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
                      child: Text(AppString.boxText,
                        style:emptyText1,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15,),
            /// use see all event page custom widget
            SeeAllEventPageCustomWidget(photo: AppImage.photo4, title: AppString.meetUp4, date: AppString.dateTime4, address: AppString.address4, payment: AppString.offer4),
            SeeAllEventPageCustomWidget(photo: AppImage.photo5, title: AppString.meetUp5, date: AppString.dateTime5, address: AppString.address5, payment: AppString.offer5),
            SeeAllEventPageCustomWidget(photo: AppImage.photo6, title: AppString.meetUp6, date: AppString.dateTime6, address: AppString.address6, payment: AppString.offer6),
            SeeAllEventPageCustomWidget(photo: AppImage.photo1, title: AppString.meetUp1, date: AppString.dateTime1, address: AppString.address1, payment: AppString.offer1),
            SeeAllEventPageCustomWidget(photo: AppImage.photo3, title: AppString.meetUp3, date: AppString.dateTime3, address: AppString.address3, payment: AppString.offer3),
            SeeAllEventPageCustomWidget(photo: AppImage.photo6, title: AppString.meetUp6, date: AppString.dateTime6, address: AppString.address6, payment: AppString.offer6),

          ],
        ),

    );
  }
}
