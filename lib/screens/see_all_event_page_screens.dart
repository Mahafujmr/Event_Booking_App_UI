import 'package:assignment_06/event_book_custom_widget/see_all_event_page_custom_widget.dart';
import 'package:assignment_06/utils/constants/app_colors.dart';
import 'package:assignment_06/utils/constants/app_images.dart';
import 'package:assignment_06/utils/constants/app_strings.dart';
import 'package:assignment_06/utils/constants/app_text_style.dart';
import 'package:flutter/material.dart';
class SeeAllEventPageScreens extends StatefulWidget {
  const SeeAllEventPageScreens({super.key});

  @override
  State<SeeAllEventPageScreens> createState() => _SeeAllEventPageScreensState();
}

class _SeeAllEventPageScreensState extends State<SeeAllEventPageScreens> {
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

      body: SizedBox(
        width:  MediaQuery.of(context).size.width,
      // height:  MediaQuery.of(context).size.height,
        child: ListView(
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          //padding: EdgeInsets.all(10),
          children: [
            /// use see all event page custom widget
            SeeAllEventPageCustomWidget(photo: AppImage.photo1, title: AppString.meetUp1, date: AppString.dateTime1, address: AppString.address1, payment: AppString.offer1),
            SeeAllEventPageCustomWidget(photo: AppImage.photo2, title: AppString.meetUp2, date: AppString.dateTime2, address: AppString.address2, payment: AppString.offer2),
            SeeAllEventPageCustomWidget(photo: AppImage.photo3, title: AppString.meetUp3, date: AppString.dateTime3, address: AppString.address3, payment: AppString.offer3),
            SeeAllEventPageCustomWidget(photo: AppImage.photo4, title: AppString.meetUp4, date: AppString.dateTime4, address: AppString.address4, payment: AppString.offer4),
            SeeAllEventPageCustomWidget(photo: AppImage.photo5, title: AppString.meetUp5, date: AppString.dateTime5, address: AppString.address5, payment: AppString.offer5),
            SeeAllEventPageCustomWidget(photo: AppImage.photo6, title: AppString.meetUp6, date: AppString.dateTime6, address: AppString.address6, payment: AppString.offer6),
            SeeAllEventPageCustomWidget(photo: AppImage.photo1, title: AppString.meetUp1, date: AppString.dateTime1, address: AppString.address1, payment: AppString.offer1),
            SeeAllEventPageCustomWidget(photo: AppImage.photo3, title: AppString.meetUp3, date: AppString.dateTime3, address: AppString.address3, payment: AppString.offer3),
            SeeAllEventPageCustomWidget(photo: AppImage.photo6, title: AppString.meetUp6, date: AppString.dateTime6, address: AppString.address6, payment: AppString.offer6),
          ],
        ),
      ),
    );
  }
}
