import 'package:cupertino_tabbar/cupertino_tabbar.dart' as CupertinoTabBar;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/colors.dart';
import '../../utils/textstyles.dart';

class SearchFligts extends StatefulWidget {
  const SearchFligts({super.key});

  @override
  State<SearchFligts> createState() => _SearchFligtsState();
}

class _SearchFligtsState extends State<SearchFligts> {
  int cupertinoTabBarValue = 0;
  int cupertinoTabBarValueGetter() => cupertinoTabBarValue;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.0, right: 20.0),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        child: Padding(
          padding: EdgeInsets.only(
            left: 16.0,
            right: 16,
          ),
          child: Column(
            children: [
              SizedBox(
                height: 18.h,
              ),
              CupertinoTabBar.CupertinoTabBar(
                borderRadius: BorderRadius.circular(22),
                const Color(0xFFF6F6F6),
                const Color(0xFF3D968F),
                [
                  SizedBox(
                    height: 40.h,
                    width: (MediaQuery.of(context).size.width) / 4,
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "One way",
                        style: TextStyle(
                          color: cupertinoTabBarValue == 0
                              ? Colors.white
                              : Colors.black,
                          fontSize: 15.0,
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Text(
                    "Round Trip",
                    style: TextStyle(
                      color: cupertinoTabBarValue == 1
                          ? Colors.white
                          : Colors.black,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "Multi-way",
                    style: TextStyle(
                      color: cupertinoTabBarValue == 2
                          ? Colors.white
                          : Colors.black,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
                cupertinoTabBarValueGetter,
                (int index) {
                  setState(() {
                    cupertinoTabBarValue = index;
                    print(index);
                  });
                },
                useShadow: false,
                innerHorizontalPadding: 5,
              ),
              SizedBox(
                height: 7.h,
              ),
              Container(
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                      color: Color(0xFFD7D7D8),
                    )),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 16.0, right: 16),
                      child: Icon(
                        Icons.flight_takeoff_outlined,
                        color: Color(0xFFDE9D65),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'From',
                          style: TextStyle(color: greyshade),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          'London, NCD',
                          style: TextStyles().black14w600(),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 18.h,
              ),
              Container(
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                      color: const Color(0xFFD7D7D8),
                    )),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0, right: 16),
                      child: Icon(
                        Icons.flight_land_rounded,
                        color: blueShade,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'To',
                          style: TextStyle(color: greyshade),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          'Barstow, BSW',
                          style: TextStyles().black14w600(),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
