import 'package:assignment_06/screens/empty_event_page_screens.dart';
import 'package:assignment_06/screens/event_booked_page_screens.dart';
import 'package:assignment_06/screens/event_details_page_screens.dart';
import 'package:assignment_06/screens/event_past_page_screens.dart';
import 'package:assignment_06/screens/event_upcoming_page_screens.dart';
import 'package:assignment_06/screens/home_page_screens.dart';
import 'package:assignment_06/screens/see_all_event_page_screens.dart';
import 'package:assignment_06/screens/wish_list_page_screens.dart';
import 'package:assignment_06/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: AppColor.containerColor,
      title: 'App Ui',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          scrolledUnderElevation: 0,
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),

      home:  HomePageScreens(),

    );
  }
}


