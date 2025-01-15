import 'package:assignment_06/screens/see_all_event_page_screens.dart';
import 'package:assignment_06/screens/wish_list_page_screens.dart';
import 'package:assignment_06/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';
import '../utils/constants/app_images.dart';
import '../utils/constants/app_strings.dart';
import '../utils/constants/app_text_style.dart';
import 'event_details_page_screens.dart';
import 'event_past_page_screens.dart';
import 'event_preview_screens.dart';
import 'event_upcoming_page_screens.dart';
class HomePageScreens extends StatelessWidget {
  const HomePageScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// text , photo, location icons , and container use
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      /// container
                      Container(
                        width: 360,
                        height: 300,
                        color: AppColor.containerColor,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 15,left: 15,right: 10),
                              child: Row(
                                children: [
                                  /// image use
                                  CircleAvatar(
                                    backgroundImage: AssetImage(AppImage.profile),
                                  ),
                                  SizedBox(width: 15,),
                                  Column(
                                    /// text
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(AppString.message,
                                          style: nameText
                                      ),
                                      Text(AppString.name,style: smallTextStyle,),
                                    ],
                                  ),
                                  Spacer(),
                                  /// text add
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(AppString.location,style: nameText,),
                                      Row(
                                        children: [
                                          Text(AppString.address,style: smallTextStyle,),
                                          Icon(Icons.location_on,color: Colors.red,size: 18,),
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),

                            ),
                            SizedBox(height: 30),
                            /// text box and icon and text
                            Padding(
                              padding: const EdgeInsets.only(left: 18),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 250,
                                    height: 60,
                                    //margin: EdgeInsets.only(right:50),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: AppColor.filedColor,
                                        prefixIcon: Icon(Icons.search,color: Colors.white,),
                                        hintText: AppString.textFieldText,
                                        hintStyle: hitText,
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(16),
                                          borderSide: BorderSide(
                                            color: AppColor.filedColor,
                                          ),
                                        ),

                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 20),
                                  /// icons add
                                  Container(
                                    width: 50,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      color: AppColor.filedColor,
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Icon(Icons.filter_alt_outlined,color: Colors.white,),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 30),
                            /// text
                            Padding(
                              padding: const EdgeInsets.only(left: 22,right: 20),
                              /// use navigator push
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  /// EventPastPageScreens set navigator push
                                  InkWell(
                                    onTap:(){
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>EventPastPageScreens()));
                                    },
                                    child: Text(AppString.events,
                                      style: nameText.copyWith(
                                          color: Colors.white,fontSize: 18
                                      ),
                                    ),
                                  ),
                                    /// EventUpcomingPageScreens set navigator push
                                  InkWell(
                                    onTap:(){
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>EventUpcomingPageScreens()));
                                    },
                                    child: Text(AppString.view,
                                      style: smallSizeText,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                          ],
                        ),
                      ),
                      SizedBox(height: 100,),
                      /// use positioned
                      Positioned(
                        bottom: -160,
                        left: 22,

                        child: Container(
                          width: 230,
                          height: 230,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white,
                                spreadRadius: 6,
                                offset: Offset(2, 2),
                              ),
                            ],

                          ),
                          child: Column(
                            /// container and image add
                            children: [
                              Container(
                                width: 220,
                                height: 140,
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                        image: AssetImage(AppImage.pic1,),
                                        fit: BoxFit.fill
                                    )
                                ),

                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  /// text add
                                  Text(AppString.bandMusic,
                                    style:mediumText,
                                  ),
                                  SizedBox(height: 5,),
                                  Row(
                                    children: [
                                      /// Icon and text add
                                      Icon(Icons.date_range_outlined,color: Colors.orangeAccent,size: 20),
                                      Text(AppString.date,
                                        style: textStyle,
                                      ),
                                      /// Icon and text add
                                      Icon(Icons.location_on,color: Colors.orange,size: 20,),
                                      Text(AppString.locationAddress,
                                        style:textStyle,
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
                                        style: boxText,
                                      ),
                                      SizedBox(width: 10),
                                      /// container
                                      Container(
                                        alignment: Alignment.center,
                                        width: 60,
                                        height: 30,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color: Colors.black87,
                                        ),
                                        child: Text(AppString.joinNow,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 8,
                                              fontWeight: FontWeight.w600
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 10),

                      Positioned(
                        bottom: -160,
                        left: 300,

                        child: Container(
                          width: 230,
                          height: 230,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white,
                                spreadRadius: 6,
                                offset: Offset(2, 2),
                              ),
                            ],

                          ),
                          child: Column(
                            /// container and image add
                            children: [
                              Container(
                                width: 220,
                                height: 140,
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                        image: AssetImage(AppImage.pic1,),
                                        fit: BoxFit.fill
                                    )
                                ),

                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  /// text add
                                  Text(AppString.bandMusic,
                                    style:mediumText,
                                  ),
                                  SizedBox(height: 5,),
                                  Row(
                                    children: [
                                      /// Icon and text add
                                      Icon(Icons.date_range_outlined,color: Colors.orangeAccent,size: 20),
                                      Text(AppString.date,
                                        style: textStyle,
                                      ),
                                      /// Icon and text add
                                      Icon(Icons.location_on,color: Colors.orange,size: 20,),
                                      Text(AppString.locationAddress,
                                        style:textStyle,
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
                                        style: boxText,
                                      ),
                                      SizedBox(width: 10),
                                      /// container
                                      Container(
                                        alignment: Alignment.center,
                                        width: 60,
                                        height: 30,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color: Colors.black87,
                                        ),
                                        child: Text(AppString.joinNow,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 8,
                                              fontWeight: FontWeight.w600
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height:200),
           ///
           Padding(
             padding: const EdgeInsets.only(left: 20,right: 20),
             child: Column(
               children: [
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Text(AppString.categoryText,
                       style:mediumText.copyWith(fontSize: 20),
                     ),
                    // Spacer(),
                     Text(AppString.view,
                       style:smallSizeText,
                     ),

                   ],
                 ),
                 SizedBox(height: 15,),
                 SingleChildScrollView(
                   scrollDirection: Axis.horizontal,
                   child: Row(
                     children: [
                       Container(
                         width: 115,
                         height: 55,
                         decoration: BoxDecoration(
                           color: Colors.orangeAccent,
                           borderRadius: BorderRadius.circular(25),
                         ),
                         child: Padding(
                           padding: const EdgeInsets.only(left: 5),
                           child: Row(
                             children: [
                               Container(
                                 width: 45,
                                 height: 45,
                                 decoration: BoxDecoration(
                                   color: Colors.white,
                                   borderRadius: BorderRadius.circular(20)
                                 ),
                                 child: Image.asset(AppImage.precdion),
                               ),
                               SizedBox(width: 8),
                               Text(AppString.design,style: hitText.copyWith(color: Colors.white,fontSize: 14),),
                             ],
                           ),
                         ),
                       ),
                       SizedBox(width: 15,),
                       Container(
                         width: 40,
                         height: 40,
                         decoration: BoxDecoration(
                           color: Colors.black12,
                           borderRadius: BorderRadius.circular(20),
                         ),
                         child: Image.asset(AppImage.art),
                       ),
                       SizedBox(width: 10,),
                       Text(AppString.artText,
                         style:sizeText
                         ),
                       SizedBox(width: 15,),
                       Container(
                         width: 40,
                         height: 40,
                         decoration: BoxDecoration(
                           color: Colors.black12,
                           borderRadius: BorderRadius.circular(20),
                         ),
                         child: Image.asset(AppImage.sport),
                       ),
                       SizedBox(width: 10,),
                       Text(AppString.sports,
                           style:sizeText
                       ),
                       SizedBox(width: 15,),
                       Container(
                         width: 40,
                         height: 40,
                         decoration: BoxDecoration(
                           color: Colors.black12,
                           borderRadius: BorderRadius.circular(20),
                         ),
                         child: Image.asset(AppImage.music),
                       ),
                       SizedBox(width: 10,),
                       Text(AppString.music,
                           style:sizeText
                       ),
                     ],
                   ),
                 )
               ],
             ),
           ),
            SizedBox(height: 25),

            Padding(
              padding: const EdgeInsets.only(left: 17),
              child: Container(
                width: 330,
                height: 100,
                decoration: BoxDecoration(
                    color: AppColor.container,
                  borderRadius: BorderRadius.circular(20),
                 boxShadow: [
                            BoxShadow(
                           color: Colors.white,
                               spreadRadius: 6,
                          offset: Offset(2, 2),
                              ),
                               ]
                ),
                child:Row(
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(20),

                          image: DecorationImage(
                              image: AssetImage(AppImage.man),
                              fit: BoxFit.fill
                          )
                      ),

                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 25),
                        Text(AppString.meetupText,style: mediumText),
                        SizedBox(height: 15,),
                        Row(
                          children: [
                            Text(AppString.date1,style: boxText,),
                            SizedBox(width: 5),
                            Container(
                              width: 8,
                              height: 8,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            SizedBox(width: 5),
                            Text(AppString.hotelName,style: boxText,),
                          ],
                        ),
                      ],
                    ),
                    Image.asset(AppImage.line,width:10,height: 50,color: Colors.black38,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 30),
                        Text(AppString.payDollar,style: smallSizeText,),
                        SizedBox(height: 15),
                        Text(AppString.joinNow,style: mediumText.copyWith(fontSize: 10),),
                      ],
                    ),
                  ],

                ), 
              ),
            ),
            SizedBox(height: 10,),
            Container(
              width: double.infinity,
              height: 70,
              color: AppColor.container,
              child: Row(
                /// use navigator push
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  /// SeeAllEventPageScreens set navigator push
                  InkWell(
                      onTap:(){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>SeeAllEventPageScreens()));
    },
                      child: Icon(Icons.home,color: Colors.orangeAccent,size: 25,)),
                  ///EventDetailsPageScreens set navigator push
                  InkWell(
                      onTap:(){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>EventDetailsPageScreens()));

    },
                      child: Image.asset(AppImage.calender,height: 40,)),
                  /// WishListPageScreens set navigator push
                  InkWell(
                      onTap:(){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>WishListPageScreens()));

                      },

                      child: Image.asset(AppImage.location1,height: 40,)),
                  /// EventPreviewScreens set navigator push
                  InkWell(
                      onTap:(){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>EventPreviewScreens()));

                      },
                      child: Image.asset(AppImage.user,height: 40,)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
