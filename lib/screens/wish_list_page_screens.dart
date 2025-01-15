import 'package:flutter/material.dart';

import '../utils/constants/app_colors.dart';
import '../utils/constants/app_images.dart';
import '../utils/constants/app_strings.dart';
import '../utils/constants/app_text_style.dart';
class WishListPageScreens extends StatelessWidget {
  const WishListPageScreens({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.seeAllColor,
      //backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text(AppString.wishlist,
          style: mediumTextstyle,
        ),
        leading: InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: Image.asset(AppImage.leftarrow,color: Colors.black54,)),
        actions: [

          SizedBox(width: 20,),
          Image.asset(AppImage.more,color: Colors.black54,),
        ],
        backgroundColor: AppColor.backgroundColor,
        centerTitle: true,
      ),
      body: Column(
        children: [
          /// container and text and container

          SizedBox(height: 90,),
          /// calender Image
          Image.asset(AppImage.listWish,
            width: 200,
            fit: BoxFit.fitHeight,
          ),
          /// line box
          Container(
            width: double.infinity,
            height: 4,
            color: AppColor.lineColor,
          ),
          SizedBox(height: 40,),
          /// text
          Text(AppString.nothingList,
            style: mediumTextstyle,
          ),
          SizedBox(height: 20,),
          Text(AppString.wishlistBox,
            style: emptyText,
          ),
          SizedBox(height: 150),
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
