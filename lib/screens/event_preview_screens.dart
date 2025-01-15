import 'package:assignment_06/utils/constants/app_colors.dart';
import 'package:assignment_06/utils/constants/app_images.dart';
import 'package:assignment_06/utils/constants/app_strings.dart';
import 'package:assignment_06/utils/constants/app_text_style.dart';
import 'package:flutter/material.dart';
import 'empty_event_page_screens.dart';
class EventPreviewScreens extends StatelessWidget {
  const EventPreviewScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// use container
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            /// add full body image
              image: AssetImage(AppImage.fullBodyImage),
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
                    /// use navigator pop
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
              SizedBox(height: 350),
              /// add text
              Text(AppString.bodyText,
                  style: largeText
              ),
              Text(AppString.bodyText1,
                style:largeText,
              ),
              SizedBox(height: 20),
              /// use icons and text
              Row(
                children: [
                  Image.asset(AppImage.location1,color: Colors.orange,),
                  SizedBox(width: 6,),
                  Text(AppString.locationAddress,style: hitText,),
                  SizedBox(width: 6,),
                  Image.asset(AppImage.calender,color: Colors.orange,),
                  SizedBox(width: 6,),
                  Text(AppString.date,style: hitText,),
                ],
              ),
              SizedBox(height: 20),
              /// use stack and positioned widget
              Row(
                children: [

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
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 40,
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
                      Positioned(
                        left: 60,
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
                      Positioned(
                        left: 80,
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
                  SizedBox(width: 90),
                  Text(AppString.joinMembar,style: hitText,),
                ],
              ),
              SizedBox(height: 60),
              /// EmptyEventPageScreens set navigator push
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>EmptyEventPageScreens()));
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 300,
                  height: 55,
                  decoration: BoxDecoration(
                    color: AppColor.bigContainer,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Text(AppString.boxMembar,
                    style: largeText.copyWith(fontSize: 16),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
