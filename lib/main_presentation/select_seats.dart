import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/colors.dart';
import '../utils/textstyles.dart';
import '../widgets/seat_buttons.dart';
import 'checkout_screen.dart';

class SelectSeat extends StatelessWidget {
  SelectSeat({Key? key}) : super(key: key);
  List<String> _seatNumbers = [
    "A1",
    "B1",
    "C1",
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: grey88,
        body: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back)),
                  SizedBox(
                    width: 80.w,
                  ),
                  Text(
                    "Select Seat",
                    style: TextStyles().black20w800(),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Canada Airlines",
                              style: TextStyles().black18w700(),
                            ),
                            Icon(Icons.more_vert)
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("SPO"),
                            SizedBox(
                              width: 6.w,
                            ),
                            DottedLine(
                              direction: Axis.horizontal,
                              lineLength: 200,
                              dashLength: 4.0,
                              dashColor: Colors.grey.shade500,
                            ),
                            SizedBox(
                              width: 6.w,
                            ),
                            Text("NYC")
                          ],
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Row(
                          children: [
                            Text("9.00AM"),
                            SizedBox(
                              width: 160.w,
                            ),
                            Text("10.00PM")
                          ],
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ElevatedButton(
                                  style: ButtonStyle(
                                      shape: MaterialStateProperty.all(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8.0))),
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              greenDark)),
                                  onPressed: () {},
                                  child: Text("Show Details")),
                              Text(
                                "\$250",
                                style: TextStyles().black14w700(),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                "Business Class",
                style: TextStyles().black18w700(),
              ),
              SizedBox(
                height: 2.h,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Wrap(
                        direction: Axis.vertical,
                        spacing: 20.0,
                        children: List.generate(_seatNumbers.length, (index) {
                          return SeatButtons(
                            colors: _seatNumbers[index] == "A1"
                                ? lightOrange
                                : Colors.white,
                            borderColor: _seatNumbers[index] == "A1"
                                ? lightOrange
                                : Colors.white,
                            backgroundColor: Colors.black,
                            text: _seatNumbers[index].toString(),
                          );
                        }),
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Expanded(
                      child: Wrap(
                        direction: Axis.vertical,
                        spacing: 20.0,
                        children: List.generate(_seatNumbers.length, (index) {
                          return SeatButtons(
                            colors: _seatNumbers[index] == "C1"
                                ? greenDark
                                : Colors.white,
                            borderColor: _seatNumbers[index] == "C1"
                                ? greenDark
                                : Colors.white,
                            backgroundColor: Colors.black,
                            text: _seatNumbers[index].toString(),
                          );
                        }),
                      ),
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Expanded(
                      child: Wrap(
                        direction: Axis.vertical,
                        spacing: 20.0,
                        children: List.generate(_seatNumbers.length, (index) {
                          return SeatButtons(
                            colors: _seatNumbers[index] == "B1"
                                ? lightOrange
                                : Colors.white,
                            borderColor: _seatNumbers[index] == "B1"
                                ? lightOrange
                                : Colors.white,
                            backgroundColor: Colors.black,
                            text: _seatNumbers[index].toString(),
                          );
                        }),
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Expanded(
                      child: Wrap(
                        direction: Axis.vertical,
                        spacing: 20.0,
                        children: List.generate(_seatNumbers.length, (index) {
                          return SeatButtons(
                            colors: Colors.white,
                            borderColor: Colors.white,
                            backgroundColor: Colors.black,
                            text: _seatNumbers[index].toString(),
                          );
                        }),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                "Passenger Details",
                style: TextStyles().black18w700(),
              ),
              SizedBox(
                height: 2.h,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0)),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "Name:",
                              style: TextStyles().black14w700(),
                            ),
                            SizedBox(
                              width: 43.w,
                            ),
                            Text(
                              "Mohanavel",
                              style: TextStyles().black13w500(),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          children: [
                            Text(
                              "Address:",
                              style: TextStyles().black14w700(),
                            ),
                            SizedBox(
                              width: 28.w,
                            ),
                            Expanded(
                              child: Text(
                                "No: 12/27, Gandhi road, Porur, Chennai-21",
                                style: TextStyles().black13w500(),
                                overflow: TextOverflow.visible,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          children: [
                            Text(
                              "Adhaar No:",
                              style: TextStyles().black14w700(),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Text(
                              "1234567890",
                              style: TextStyles().black13w500(),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          children: [
                            Text(
                              "Passport Id:",
                              style: TextStyles().black14w700(),
                            ),
                            SizedBox(
                              width: 7.w,
                            ),
                            Text(
                              "1234567890",
                              style: TextStyles().black13w500(),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(bottom: 16.0, left: 16, right: 16),
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(bottleGreen),
                        fixedSize: MaterialStateProperty.all<Size>(
                          Size(MediaQuery.of(context).size.width, 55),
                        ),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)))),
                    onPressed: () {
                      Navigator.push(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (_, __, ___) => Checkout(),
                            transitionDuration: Duration(seconds: 1),
                            transitionsBuilder: (_, a, __, c) =>
                                FadeTransition(opacity: a, child: c),
                          ));
                      // MaterialPageRoute(builder: (context) => Checkout()));
                    },
                    child: Text("Checkout")),
              )
            ],
          ),
        ),
      ),
    );
  }
}
