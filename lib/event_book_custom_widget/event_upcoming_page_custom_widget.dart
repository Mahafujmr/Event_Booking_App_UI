import 'package:flutter/material.dart';

import '../utils/constants/app_colors.dart';
import '../utils/constants/app_images.dart';
import '../utils/constants/app_strings.dart';
import '../utils/constants/app_text_style.dart';
class EventUpcomingPageCustomWidget extends StatelessWidget {
  final String photo;
  final String name;
  final String date;
  final String title;
  const EventUpcomingPageCustomWidget({super.key,
  required this.photo,
    required this.name,
    required this.date,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 300,
          height: 270,
          decoration: BoxDecoration(
              color: AppColor.eventBoxColor,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: AppColor.eventBoxColor,
                  offset: Offset(2, 2),
                  spreadRadius: 5,
                )
              ]
          ),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 7),
                width: 295,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: AssetImage(photo),
                      fit: BoxFit.fill
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /// text add
                    Text(name,
                      style:mediumText.copyWith(fontSize: 16),
                    ),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        /// Icon and text add
                        Icon(Icons.date_range_outlined,color: Colors.orangeAccent,size: 20),
                        Text(date,
                          style: textStyle.copyWith(fontSize: 12),
                        ),
                        SizedBox(width: 5,),
                        /// Icon and text add
                        Icon(Icons.location_on,color: Colors.orange,size: 20,),
                        Text(title,
                          style:textStyle.copyWith(fontSize: 10),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        /// use stack and positioned stack
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Container(
                              width: 25,
                              height: 25,
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                    image: AssetImage(AppImage.profile),
                                    fit: BoxFit.fill,
                                  )
                              ),
                            ),
                            Positioned(
                              left: 18,
                              width: 25,
                              height: 25,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                      image: AssetImage(AppImage.profile),
                                      fit: BoxFit.fill,
                                    )
                                ),
                              ),
                            ),
                            Positioned(
                              left: 35,
                              width: 25,
                              height: 25,
                              child: Container(
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Colors.orange[800],
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Text('5K+',
                                    style: textStyle.copyWith(color: Colors.white)
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 35),
                        /// add text
                        Text(AppString.member,
                          style: boxText.copyWith(fontSize: 11),
                        ),
                        SizedBox(width: 10),
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Colors.white30,
                            borderRadius: BorderRadius.circular(7),
                            border: Border.all(color: Colors.black),
                            image: DecorationImage(
                              image: AssetImage(AppImage.bookMark),
                              scale: 2,
                            ),
                          ),
                        ),
                        SizedBox(width: 5,),
                        /// container
                        Container(
                          alignment: Alignment.center,
                          width: 90,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.black87,
                          ),
                          child: Text(AppString.joinNow,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.w600
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        // love icons
        Positioned(
          right: 20,
          top: 20,
          child: Container(
            padding: EdgeInsets.only(left: 10,top: 10),
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.black54,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Text(AppString.love,style: TextStyle(fontSize: 25),),
          ),
        ),
      ],
    );
  }
}
