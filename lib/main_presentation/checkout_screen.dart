import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/colors.dart';
import '../utils/textstyles.dart';
import 'boarding_pass/boarding_pass.dart';

class Checkout extends StatelessWidget {
  const Checkout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Color(0xFFF3F3F3),
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
                    "Checkout",
                    style: TextStyles().black20w800(),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10.w,
                        ),
                        Column(
                          children: [
                            SizedBox(
                                height: 40.h,
                                width: 40.w,
                                child: Image.asset("assets/mastercard.png")),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Mastercard",
                              style: TextStyles().black12w700(),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 28,
                        ),
                        Column(
                          children: [
                            SizedBox(
                                height: 40.h,
                                width: 40.w,
                                child: Image.asset("assets/paypal.png")),
                            SizedBox(
                              height: 5.h,
                            ),
                            Text(
                              "Paypal",
                              style: TextStyles().black12w700(),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 28.w,
                        ),
                        Column(
                          children: [
                            SizedBox(
                                height: 40.h,
                                width: 40.w,
                                child: Image.asset("assets/visa.png")),
                            SizedBox(
                              height: 5.h,
                            ),
                            Text(
                              "Visa",
                              style: TextStyles().black12w700(),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 28,
                        ),
                        Column(
                          children: [
                            SizedBox(
                                height: 40.h,
                                width: 40.w,
                                child: Image.asset("assets/payoneer.png")),
                            SizedBox(
                              height: 5.h,
                            ),
                            Text(
                              "Payoneer",
                              style: TextStyles().black12w700(),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Column(children: [
                    Stack(
                      children: [
                        Image.asset("assets/airplane.png"),
                        Positioned(
                          top: 18,
                          left: 20,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: Colors.black,
                            ),
                            height: 25,
                            width: 50,
                            child: Center(
                              child: Text(
                                "\$250",
                                style: TextStyles().white10w700(),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Flight Yogyakarta",
                            style: TextStyles().black14w700(),
                          ),
                          Text(
                            "HJB- JKM",
                            style: TextStyles().black12w400(),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 12.0, bottom: 12.0, right: 12.0),
                      child: DottedLine(
                        direction: Axis.horizontal,
                        lineLength: double.infinity,
                        lineThickness: 1.0,
                        dashLength: 4.0,
                        dashColor: Colors.grey.shade500,
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      "Booking Details",
                      style: TextStyles().black18w700(),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 12.0, bottom: 20, top: 10),
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
                                "Price:",
                                style: TextStyles().black14w700(),
                              ),
                              SizedBox(
                                width: 50.w,
                              ),
                              Text(
                                "\$250 10% Offer",
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
                                "Tax:",
                                style: TextStyles().black14w700(),
                              ),
                              SizedBox(
                                width: 59.w,
                              ),
                              Text(
                                "12%",
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
                                "Total price:",
                                style: TextStyles().black14w700(),
                              ),
                              SizedBox(
                                width: 14.w,
                              ),
                              Text(
                                "\$300",
                                style: TextStyles().black13w500(),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ]),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 16.0, left: 16, right: 16),
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
                            pageBuilder: (_, __, ___) => const BoardingPass(),
                            transitionDuration: Duration(seconds: 1),
                            transitionsBuilder: (_, a, __, c) =>
                                FadeTransition(opacity: a, child: c),
                          ));
                    },
                    child: Text("Pay \$300")),
              )
            ],
          ),
        ),
      ),
    );
  }
}
