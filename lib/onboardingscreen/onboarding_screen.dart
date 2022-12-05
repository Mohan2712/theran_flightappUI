import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../main_presentation/flight_booking/flight_search_page_home.dart';
import '../utils/colors.dart';
import '../utils/textstyles.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Image.asset("assets/maps.png")),
          Container(
            color: eucalyptusGreen,
          ),
          Positioned(
              top: 60.h,
              left: 20.w,
              child: Text(
                "Find and Book",
                style: TextStyles().white25w700(),
              )),
          Positioned(
              top: 87.h,
              left: 20.w,
              child: Text(
                "A Great Experience",
                style: TextStyles().white25w700(),
              )),
          Positioned(
              top: 120.h,
              left: 20.w,
              child: Text(
                "Lorem ipsum dolor sit amet. Cum sint au",
                style: TextStyle(color: Colors.white60, fontSize: 11.sp),
              )),
          Positioned(
              top: 130.h,
              left: 20.w,
              child: Text(
                "Lorem ipsum dolor sit amet.",
                style: TextStyle(color: Colors.white60, fontSize: 11.sp),
              )),
          Positioned(
              top: 155.h,
              left: 20.w,
              child: ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0))),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(lightOrange)),
                onPressed: () {
                  Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (_, __, ___) => FlightSearchPage(),
                        transitionDuration: Duration(seconds: 1),
                        transitionsBuilder: (_, a, __, c) =>
                            FadeTransition(opacity: a, child: c),
                      ));
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Get Tickets",
                    style: TextStyles().white10w700(),
                  ),
                ),
              )),
          Positioned(
              top: 210.h,
              child: SizedBox(
                height: 550.h,
                child: Image.asset(
                  "assets/couple.png",
                  fit: BoxFit.cover,
                ),
              )),
        ],
      ),
    );
  }
}
