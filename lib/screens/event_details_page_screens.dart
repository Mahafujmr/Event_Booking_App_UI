import 'package:flutter/material.dart';
import '../utils/constants/app_colors.dart';
import '../utils/constants/app_images.dart';
import '../utils/constants/app_strings.dart';
import '../utils/constants/app_text_style.dart';
import 'event_booked_page_screens.dart';
class EventDetailsPageScreens extends StatelessWidget {
  const EventDetailsPageScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// use stack and container
      body: Stack(
        clipBehavior: Clip.none,
       children: [
       Container(
           width: double.infinity,
           height: double.infinity,
           decoration: BoxDecoration(
             image: DecorationImage(
               /// add full body image add
                 image: AssetImage(AppImage.bodyImage),
                 fit: BoxFit.cover
             ),
           ),
           child: Padding(
             padding: const EdgeInsets.only(left: 25,top: 70,right: 25),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Container(
                       alignment: Alignment.center,
                       width: 45,
                       height: 45,
                       decoration: BoxDecoration(
                         color: AppColor.smallContainer,
                         borderRadius: BorderRadius.circular(25),
                       ),
                       child: InkWell(
                           onTap: (){
                             Navigator.pop(context);
                           },
                           child: Icon(Icons.arrow_back_ios_outlined,color: Colors.white,)),
                     ),
                     Container(
                       alignment: Alignment.center,
                       width: 45,
                       height: 45,
                       decoration: BoxDecoration(
                         color: AppColor.smallContainer,
                         borderRadius: BorderRadius.circular(25),
                       ),
                       child: Text('❤',
                         style: TextStyle(color: Colors.red,fontSize: 17),
                       ),
                     ),
                   ],
                 ),

                 // Row(
                 //   children: [
                 //
                 //     Stack(
                 //       clipBehavior: Clip.none,
                 //       children: [
                 //         Container(
                 //           width: 25,
                 //           height: 25,
                 //           decoration: BoxDecoration(
                 //               color: Colors.red,
                 //               borderRadius: BorderRadius.circular(20),
                 //               image: DecorationImage(
                 //                 image: AssetImage(AppImage.profile),
                 //                 fit: BoxFit.fill,
                 //               )
                 //           ),
                 //         ),
                 //         Positioned(
                 //           left: 18,
                 //           width: 25,
                 //           height: 25,
                 //           child: Container(
                 //             decoration: BoxDecoration(
                 //               color: Colors.red,
                 //               borderRadius: BorderRadius.circular(20),
                 //               image: DecorationImage(
                 //                 image: AssetImage(AppImage.profile),
                 //                 fit: BoxFit.fill,
                 //               ),
                 //             ),
                 //           ),
                 //         ),
                 //         Positioned(
                 //           left: 40,
                 //           width: 25,
                 //           height: 25,
                 //           child: Container(
                 //             decoration: BoxDecoration(
                 //               color: Colors.red,
                 //               borderRadius: BorderRadius.circular(20),
                 //               image: DecorationImage(
                 //                 image: AssetImage(AppImage.profile),
                 //                 fit: BoxFit.fill,
                 //               ),
                 //             ),
                 //           ),
                 //         ),
                 //         Positioned(
                 //           left: 60,
                 //           width: 25,
                 //           height: 25,
                 //           child: Container(
                 //             alignment: Alignment.center,
                 //             decoration: BoxDecoration(
                 //               color: Colors.red,
                 //               borderRadius: BorderRadius.circular(20),
                 //               image: DecorationImage(
                 //                 image: AssetImage(AppImage.profile),
                 //                 fit: BoxFit.fill,
                 //               ),
                 //             ),
                 //           ),
                 //         ),
                 //         Positioned(
                 //           left: 80,
                 //           width: 25,
                 //           height: 25,
                 //           child: Container(
                 //             alignment: Alignment.center,
                 //             decoration: BoxDecoration(
                 //               color: Colors.orange[800],
                 //               borderRadius: BorderRadius.circular(20),
                 //             ),
                 //             child: Text('5K+',
                 //                 style: textStyle.copyWith(color: Colors.white)
                 //             ),
                 //           ),
                 //         ),
                 //
                 //       ],
                 //     ),
                 //     SizedBox(width: 90),
                 //     Text(AppString.joinMembar,style: hitText,),
                 //   ],
                 // ),

               ],
             ),
           ),
         ),
         /// use positioned widget for stack
         Positioned(
           bottom: 0,
           /// use container
           child: Container(
             width: 350,
             height: 400,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.only(
                 topLeft: Radius.circular(30),
                 topRight: Radius.circular(30),
               ),
                 boxShadow: [
                   BoxShadow(
                     color: Colors.white,
                     spreadRadius: 6,
                     offset: Offset(2, 2),
                   ),
                 ]
             ),
             child: Padding(
               padding: const EdgeInsets.only(left: 25,top: 15),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Row(
                     children: [
                       /// Icon and text add
                       Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text(AppString.eventText,style: mediumText,),
                           SizedBox(height: 15,),
                           Row(
                             children: [
                               Icon(Icons.location_on,color: Colors.orange,size: 20,),
                               Text(AppString.locationAddress,
                                 style:realSizeText,
                               ),
                               SizedBox(width: 5),
                               /// Icon and text add
                               Icon(Icons.date_range_outlined,color: Colors.orangeAccent,size: 20),
                               Text(AppString.date,
                                 style: realSizeText,
                               ),
                             ],
                           ),
                         ],
                       ),
                       SizedBox(width: 6,),
                       /// paydollar text 
                       Container(
                         alignment: Alignment.center,
                         width: 76,
                         height: 40,
                         decoration: BoxDecoration(
                           color: AppColor.usdBox,
                           borderRadius: BorderRadius.circular(10),

                         ),
                         child: Text(AppString.payDollarText,style: smallSizeText,),
                       )
                     ],
                   ),
                   SizedBox(height: 10,),
                   Row(
                     children: [
                       /// add text 
                       Text(AppString.joinMembar,
                         style:realSizeText
                       ),
                       SizedBox(width: 8),
                       Row(
                         children: [
                           /// use stack and use profile image  
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
                               /// use positioned and profile image
                               Positioned(
                                 left: 14,
                                 width: 25,
                                 height: 25,
                                 child: Container(
                                   decoration: BoxDecoration(
                                     color: Colors.red,
                                     borderRadius: BorderRadius.circular(20),
                                     image: DecorationImage(
                                       image: AssetImage(AppImage.profile),
                                       fit: BoxFit.fill,
                                     ),
                                   ),
                                 ),
                               ),
                               /// use positioned and profile image
                               Positioned(
                                 left: 27,
                                 width: 25,
                                 height: 25,
                                 child: Container(
                                   decoration: BoxDecoration(
                                     color: Colors.red,
                                     borderRadius: BorderRadius.circular(20),
                                     image: DecorationImage(
                                       image: AssetImage(AppImage.profile),
                                       fit: BoxFit.fill,
                                     ),
                                   ),
                                 ),
                               ),
                               /// use positioned and profile image
                               Positioned(
                                 left: 40,
                                 width: 25,
                                 height: 25,
                                 child: Container(
                                   alignment: Alignment.center,
                                   decoration: BoxDecoration(
                                     color: Colors.red,
                                     borderRadius: BorderRadius.circular(20),
                                     image: DecorationImage(
                                       image: AssetImage(AppImage.profile),
                                       fit: BoxFit.fill,
                                     ),
                                   ),
                                 ),
                               ),
                               /// use positioned and profile image
                               Positioned(
                                 left: 53,
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
                         ],
                       ),
                       Spacer(),
                       /// add view all text 
                       Text(AppString.view1,style: smallSizeText,),
                     ],
                   ),
                   SizedBox(height: 40),
                   Row(
                     children: [
                       /// use stack and profile image 
                        Stack(
                         clipBehavior: Clip.none,
                         children: [
                           CircleAvatar(
                             backgroundImage: AssetImage(AppImage.profile),
                           ),
                           Positioned(
                             bottom: 0,
                             right: 0,
                             child: Container(
                               width: 10,
                               height: 10,
                               decoration: BoxDecoration(
                                   color: Colors.green,
                                   borderRadius: BorderRadius.circular(10)
                               ),
                             ),
                           )
                         ],
                       ),
                       SizedBox(width: 10,),
                       Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           /// add text and subtext 
                           Text(AppString.tamim,style: mediumText),
                           Text(AppString.tamimEvent)
                         ],
                       ),
                       SizedBox(width: 40),
                       /// use container and chat image 
                       Container(
                         height: 45,
                         width: 45,
                         decoration: BoxDecoration(
                             color: AppColor.usdBox1,
                             borderRadius: BorderRadius.circular(20)
                         ),
                         child: Image.asset(AppImage.chat),
                       ),
                       SizedBox(width: 30),
                       /// use container and call image 
                       Container(
                         height: 45,
                         width: 45,
                         decoration: BoxDecoration(
                             color: AppColor.usdBox1,
                             borderRadius: BorderRadius.circular(20)
                         ),
                         child: Image.asset(AppImage.call),
                       ),
                     ],
                   ),
                   SizedBox(height: 20),
                   /// use rich text
                   RichText(
                     textAlign: TextAlign.start,
                       text: TextSpan(
                           text: AppString.descriptionText,
                           style: TextStyle(
                             color: Colors.black38,
                             fontSize: 16,
                           ),

                         children: <TextSpan>[
                           TextSpan(
                             text: AppString.otherText
                           ),
                           TextSpan(
                               text: AppString.readMore,
                             style: TextStyle(
                               color: AppColor.bigContainer,
                               fontWeight: FontWeight.w400
                             )
                           ),

                         ]
                       )
                   ),
                   SizedBox(height: 25),
                   /// use 2 container
                   Row(
                     children: [
                       /// use container
                       Container(
                         width: 60,
                         height: 60,
                         decoration: BoxDecoration(
                           color: Colors.white30,
                           borderRadius: BorderRadius.circular(15),
                           border: Border.all(color: Colors.black),
                           image: DecorationImage(
                               image: AssetImage(AppImage.bookMark),
                             scale: 5
                           ),
                         ),
                       ),
                       SizedBox(width: 10,),
                       /// use container
                       InkWell(
                         onTap:(){
                           Navigator.push(context, MaterialPageRoute(builder: (context)=>EventBookedPageScreens()));
                         },
                         child: Container(
                           padding: EdgeInsets.only(left: 70,top: 25),
                           width: 250,
                           height: 75,
                           decoration: BoxDecoration(
                             color: AppColor.ticketBoxColor,
                             borderRadius: BorderRadius.circular(20),
                           ),
                           child: Text(AppString.buy,
                           style: TextStyle(
                             color: AppColor.backgroundColor,
                             fontSize: 15,
                             fontWeight: FontWeight.w800,
                           ),
                           ),
                         ),
                       )
                     ],
                   )
                 ],
               ),
             ),
           ),
         ),
       ],
      ),
    );
  }
}
