import 'package:flutter/material.dart';

import '../utils/constants/app_colors.dart';
import '../utils/constants/app_strings.dart';
import '../utils/constants/app_text_style.dart';
class SeeAllEventPageCustomWidget extends StatelessWidget {
  final String photo;
  final String title;
  final String date;
  final String address;
  final String payment;
  const SeeAllEventPageCustomWidget({super.key,
  required this.photo,
  required this.title,
  required this.date,
  required this.address,
  required this.payment
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10),
      margin: EdgeInsets.all(10),
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: AppColor.everyContainerColor,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              image: DecorationImage(
                image: AssetImage(photo),
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(width: 10,),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,style: mediumTextstyle.copyWith(fontSize: 13),),
                SizedBox(height: 15),
                Row(
                  children: [
                    Text(date,
                      style: dateTextStyle,
                    ),
                    Container(
                      width: 7,
                      height: 7,
                      decoration: BoxDecoration(
                        color: AppColor.smallContainerColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    SizedBox(width: 4,),
                    Text(address,
                      style:addressTextStyle,
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(width: 12),
          Container(
            width: 80,
            height: 60,
            padding: EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
              color: AppColor.everyContainerColor,
              border: Border(
                left: BorderSide(width: 1,color: Colors.black26),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text(payment,style: smallSizeText,),
                  SizedBox(height: 13,),
                  Text(AppString.joinNow,
                    style: joinTextStyle,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
