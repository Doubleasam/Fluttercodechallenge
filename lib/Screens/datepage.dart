import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'appointment.dart';

class DatePage extends StatefulWidget {
  @override
  _DatePageState createState() => _DatePageState();
}

class _DatePageState extends State<DatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: VStack([
        HStack(
          [
            VxCircle(
              radius: 40,
              backgroundColor: Colors.transparent,
              border: Border.all(
                color: Colors.blue,
              ),
              child: Icon(
                Icons.arrow_back_ios_outlined,
                color: Colors.blue,
              ).centered(),
            ),
            "Appointments".text.bold.size(30).blue500.make(),
            Icon(
              Icons.calendar_today_rounded,
              color: Colors.blue,
              size: 28,
            )
          ],
          alignment: MainAxisAlignment.spaceBetween,
          axisSize: MainAxisSize.max,
        ),
        20.heightBox,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => Appointments()));
              },
              child: VxCapsule(
                width: 140,
                height: 50,
                child: "Appointments"
                    .text
                    .blue500
                    .semiBold
                    .size(18)
                    .makeCentered(),
                backgroundColor: Vx.gray200,
              ).centered(),
            ),
            VxCapsule(
              width: 160,
              height: 50,
              child: "Availablity".text.white.semiBold.size(18).makeCentered(),
              backgroundColor: Colors.blue,
              border: Border.all(color: Colors.blue),
            )
          ],
        ),
        25.heightBox,
        HStack(
          [
            "Mon 13".text.size(16).gray600.make(),
            "Mon 14".text.size(16).gray600.make(),
            VxCapsule(
                backgroundColor: Colors.pink[200],
                width: 80,
                height: 40,
                child: "Mon 15"
                    .text
                    .size(16)
                    .semiBold
                    .black
                    .make()
                    .centered()
                    .p8()),
            "Mon 16".text.size(16).gray600.make(),
            "Mon 17".text.size(16).gray600.make(),
          ],
          alignment: MainAxisAlignment.spaceBetween,
          axisSize: MainAxisSize.max,
        ),
        15.heightBox,
        VxBox(
                child: VStack([
          "Morning".text.black.size(20).bold.make(),
          4.heightBox,
          "8:00AM - 12:00PM".text.gray500.size(16).make(),
          15.heightBox,
          Wrap(
            spacing: 4,
            runSpacing: 6,
            alignment: WrapAlignment.spaceBetween,
            children: [
              VxBox(
                      child: "8:00AM"
                          .text
                          .semiBold
                          .blue500
                          .size(16)
                          .makeCentered())
                  .width(80)
                  .height(37)
                  .withDecoration(BoxDecoration(
                      border: Border.all(
                        color: Colors.blue,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(12))))
                  .make(),
              VxBox(
                      child: "8:10AM"
                          .text
                          .semiBold
                          .gray500
                          .size(16)
                          .makeCentered())
                  .width(80)
                  .height(37)
                  .withDecoration(BoxDecoration(
                      border: Border.all(
                        color: Vx.gray500
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(12))))
                  .make(),
              VxBox(
                      child: "9:00AM"
                          .text
                          .semiBold
                          .blue500
                          .size(16)
                          .makeCentered())
                  .width(80)
                  .height(37)
                  .withDecoration(BoxDecoration(
                      border: Border.all(
                        color: Colors.blue,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(12))))
                  .make(),
              VxBox(
                      child: "9:30AM"
                          .text
                          .semiBold
                          .gray500
                          .size(16)
                          .makeCentered())
                  .width(80)
                  .height(37)
                  .withDecoration(BoxDecoration(
                      border: Border.all(
                        color: Vx.gray500,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(12))))
                  .make(),
              VxBox(
                      child: "10:00AM"
                          .text
                          .semiBold
                          .blue500
                          .size(16)
                          .makeCentered())
                  .width(80)
                  .height(37)
                  .withDecoration(BoxDecoration(
                      border: Border.all(
                        color: Colors.blue,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(12))))
                  .make(),
              VxBox(
                      child: "10:30AM"
                          .text
                          .semiBold
                          .blue500
                          .size(16)
                          .makeCentered())
                  .width(80)
                  .height(37)
                  .withDecoration(BoxDecoration(
                      border: Border.all(
                        color: Colors.blue,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(12))))
                  .make(),
              VxBox(
                      child: "11:00AM"
                          .text
                          .semiBold
                          .gray500
                          .size(16)
                          .makeCentered())
                  .width(80)
                  .height(37)
                  .withDecoration(BoxDecoration(
                      border: Border.all(
                        color: Vx.gray500
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(12))))
                  .make(),
              VxBox(
                      child: "11:30AM"
                          .text
                          .semiBold
                          .gray500
                          .size(16)
                          .makeCentered())
                  .width(80)
                  .height(37)
                  .withDecoration(BoxDecoration(
                      border: Border.all(
                        color: Vx.gray500
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(12))))
                  .make(),
              VxBox(
                      child: "8:00AM"
                          .text
                          .semiBold
                          .blue500
                          .size(16)
                          .makeCentered())
                  .width(80)
                  .height(37)
                  .withDecoration(BoxDecoration(
                      border: Border.all(
                        color: Colors.blue,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(12))))
                  .make(),
            ],
          ).centered().expand()
        ]).p16())
            .height(250)
            .width(double.infinity)
            .withDecoration(BoxDecoration(
                border: Border.all(
                  color: Colors.grey[300],
                ),
                borderRadius: BorderRadius.all(Radius.circular(20))))
            .rounded
            .makeCentered(),
            15.heightBox,
        VxBox(
                child: VStack([
          "Afternoon".text.black.size(20).bold.make(),
          4.heightBox,
          "12:00AM - 04:00PM".text.gray500.size(16).make(),
          15.heightBox,
          Wrap(
            spacing: 4,
            runSpacing: 6,
            alignment: WrapAlignment.spaceBetween,
            children: [
              VxBox(
                      child: "8:00AM"
                          .text
                          .semiBold
                          .blue500
                          .size(16)
                          .makeCentered())
                  .width(80)
                  .height(37)
                  .withDecoration(BoxDecoration(
                      border: Border.all(
                        color: Colors.blue,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(12))))
                  .make(),
              VxBox(
                      child: "8:10AM"
                          .text
                          .semiBold
                          .gray500
                          .size(16)
                          .makeCentered())
                  .width(80)
                  .height(37)
                  .withDecoration(BoxDecoration(
                      border: Border.all(
                        color: Vx.gray500
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(12))))
                  .make(),
              VxBox(
                      child: "9:00AM"
                          .text
                          .semiBold
                          .blue500
                          .size(16)
                          .makeCentered())
                  .width(80)
                  .height(37)
                  .withDecoration(BoxDecoration(
                      border: Border.all(
                        color: Colors.blue,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(12))))
                  .make(),
              VxBox(
                      child: "9:30AM"
                          .text
                          .semiBold
                          .gray500
                          .size(16)
                          .makeCentered())
                  .width(80)
                  .height(37)
                  .withDecoration(BoxDecoration(
                      border: Border.all(
                        color: Vx.gray500,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(12))))
                  .make(),
              VxBox(
                      child: "10:00AM"
                          .text
                          .semiBold
                          .blue500
                          .size(16)
                          .makeCentered())
                  .width(80)
                  .height(37)
                  .withDecoration(BoxDecoration(
                      border: Border.all(
                        color: Colors.blue,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(12))))
                  .make(),
              VxBox(
                      child: "10:30AM"
                          .text
                          .semiBold
                          .blue500
                          .size(16)
                          .makeCentered())
                  .width(80)
                  .height(37)
                  .withDecoration(BoxDecoration(
                      border: Border.all(
                        color: Colors.blue,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(12))))
                  .make(),
              VxBox(
                      child: "11:00AM"
                          .text
                          .semiBold
                          .gray500
                          .size(16)
                          .makeCentered())
                  .width(80)
                  .height(37)
                  .withDecoration(BoxDecoration(
                      border: Border.all(
                        color: Vx.gray500
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(12))))
                  .make(),
              VxBox(
                      child: "11:30AM"
                          .text
                          .semiBold
                          .gray500
                          .size(16)
                          .makeCentered())
                  .width(80)
                  .height(37)
                  .withDecoration(BoxDecoration(
                      border: Border.all(
                        color: Vx.gray500
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(12))))
                  .make(),
              VxBox(
                      child: "8:00AM"
                          .text
                          .semiBold
                          .blue500
                          .size(16)
                          .makeCentered())
                  .width(80)
                  .height(37)
                  .withDecoration(BoxDecoration(
                      border: Border.all(
                        color: Colors.blue,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(12))))
                  .make(),
            ],
          ).centered().expand()
        ]).p16())
            .height(250)
            .width(double.infinity)
            .withDecoration(BoxDecoration(
                border: Border.all(
                  color: Colors.grey[300],
                ),
                borderRadius: BorderRadius.all(Radius.circular(20))))
            .rounded
            .makeCentered(),
            15.heightBox,
        VxBox(
                child: VStack([
          "Morning".text.black.size(20).bold.make(),
          4.heightBox,
          "8:00AM - 12:00PM".text.gray500.size(16).make(),
          15.heightBox,
          Wrap(
            spacing: 4,
            runSpacing: 6,
            alignment: WrapAlignment.spaceBetween,
            children: [
              VxBox(
                      child: "8:00AM"
                          .text
                          .semiBold
                          .blue500
                          .size(16)
                          .makeCentered())
                  .width(80)
                  .height(37)
                  .withDecoration(BoxDecoration(
                      border: Border.all(
                        color: Colors.blue,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(12))))
                  .make(),
              VxBox(
                      child: "8:10AM"
                          .text
                          .semiBold
                          .gray500
                          .size(16)
                          .makeCentered())
                  .width(80)
                  .height(37)
                  .withDecoration(BoxDecoration(
                      border: Border.all(
                        color: Vx.gray500
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(12))))
                  .make(),
              VxBox(
                      child: "9:00AM"
                          .text
                          .semiBold
                          .blue500
                          .size(16)
                          .makeCentered())
                  .width(80)
                  .height(37)
                  .withDecoration(BoxDecoration(
                      border: Border.all(
                        color: Colors.blue,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(12))))
                  .make(),
              VxBox(
                      child: "9:30AM"
                          .text
                          .semiBold
                          .gray500
                          .size(16)
                          .makeCentered())
                  .width(80)
                  .height(37)
                  .withDecoration(BoxDecoration(
                      border: Border.all(
                        color: Vx.gray500,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(12))))
                  .make(),
              VxBox(
                      child: "10:00AM"
                          .text
                          .semiBold
                          .blue500
                          .size(16)
                          .makeCentered())
                  .width(80)
                  .height(37)
                  .withDecoration(BoxDecoration(
                      border: Border.all(
                        color: Colors.blue,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(12))))
                  .make(),
              VxBox(
                      child: "10:30AM"
                          .text
                          .semiBold
                          .blue500
                          .size(16)
                          .makeCentered())
                  .width(80)
                  .height(37)
                  .withDecoration(BoxDecoration(
                      border: Border.all(
                        color: Colors.blue,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(12))))
                  .make(),
              VxBox(
                      child: "11:00AM"
                          .text
                          .semiBold
                          .gray500
                          .size(16)
                          .makeCentered())
                  .width(80)
                  .height(37)
                  .withDecoration(BoxDecoration(
                      border: Border.all(
                        color: Vx.gray500
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(12))))
                  .make(),
              VxBox(
                      child: "11:30AM"
                          .text
                          .semiBold
                          .gray500
                          .size(16)
                          .makeCentered())
                  .width(80)
                  .height(37)
                  .withDecoration(BoxDecoration(
                      border: Border.all(
                        color: Vx.gray500
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(12))))
                  .make(),
              VxBox(
                      child: "8:00AM"
                          .text
                          .semiBold
                          .blue500
                          .size(16)
                          .makeCentered())
                  .width(80)
                  .height(37)
                  .withDecoration(BoxDecoration(
                      border: Border.all(
                        color: Colors.blue,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(12))))
                  .make(),
            ],
          ).centered().expand()
        ]).p16())
            .height(250)
            .width(double.infinity)
            .withDecoration(BoxDecoration(
                border: Border.all(
                  color: Colors.grey[300],
                ),
                borderRadius: BorderRadius.all(Radius.circular(20))))
            .rounded
            .makeCentered(),
            15.heightBox,
        VxBox(
                child: VStack([
          "Morning".text.black.size(20).bold.make(),
          4.heightBox,
          "8:00AM - 12:00PM".text.gray500.size(16).make(),
          15.heightBox,
          Wrap(
            spacing: 4,
            runSpacing: 6,
            alignment: WrapAlignment.spaceBetween,
            children: [
              VxBox(
                      child: "8:00AM"
                          .text
                          .semiBold
                          .blue500
                          .size(16)
                          .makeCentered())
                  .width(80)
                  .height(37)
                  .withDecoration(BoxDecoration(
                      border: Border.all(
                        color: Colors.blue,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(12))))
                  .make(),
              VxBox(
                      child: "8:10AM"
                          .text
                          .semiBold
                          .gray500
                          .size(16)
                          .makeCentered())
                  .width(80)
                  .height(37)
                  .withDecoration(BoxDecoration(
                      border: Border.all(
                        color: Vx.gray500
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(12))))
                  .make(),
              VxBox(
                      child: "9:00AM"
                          .text
                          .semiBold
                          .blue500
                          .size(16)
                          .makeCentered())
                  .width(80)
                  .height(37)
                  .withDecoration(BoxDecoration(
                      border: Border.all(
                        color: Colors.blue,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(12))))
                  .make(),
              VxBox(
                      child: "9:30AM"
                          .text
                          .semiBold
                          .gray500
                          .size(16)
                          .makeCentered())
                  .width(80)
                  .height(37)
                  .withDecoration(BoxDecoration(
                      border: Border.all(
                        color: Vx.gray500,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(12))))
                  .make(),
              VxBox(
                      child: "10:00AM"
                          .text
                          .semiBold
                          .blue500
                          .size(16)
                          .makeCentered())
                  .width(80)
                  .height(37)
                  .withDecoration(BoxDecoration(
                      border: Border.all(
                        color: Colors.blue,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(12))))
                  .make(),
              VxBox(
                      child: "10:30AM"
                          .text
                          .semiBold
                          .blue500
                          .size(16)
                          .makeCentered())
                  .width(80)
                  .height(37)
                  .withDecoration(BoxDecoration(
                      border: Border.all(
                        color: Colors.blue,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(12))))
                  .make(),
              VxBox(
                      child: "11:00AM"
                          .text
                          .semiBold
                          .gray500
                          .size(16)
                          .makeCentered())
                  .width(80)
                  .height(37)
                  .withDecoration(BoxDecoration(
                      border: Border.all(
                        color: Vx.gray500
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(12))))
                  .make(),
              VxBox(
                      child: "11:30AM"
                          .text
                          .semiBold
                          .gray500
                          .size(16)
                          .makeCentered())
                  .width(80)
                  .height(37)
                  .withDecoration(BoxDecoration(
                      border: Border.all(
                        color: Vx.gray500
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(12))))
                  .make(),
              VxBox(
                      child: "8:00AM"
                          .text
                          .semiBold
                          .blue500
                          .size(16)
                          .makeCentered())
                  .width(80)
                  .height(37)
                  .withDecoration(BoxDecoration(
                      border: Border.all(
                        color: Colors.blue,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(12))))
                  .make(),
            ],
          ).centered().expand()
        ]).p16())
            .height(250)
            .width(double.infinity)
            .withDecoration(BoxDecoration(
                border: Border.all(
                  color: Colors.grey[300],
                ),
                borderRadius: BorderRadius.all(Radius.circular(20))))
            .rounded
            .makeCentered()
      ])
          .pOnly(top: context.screenPadding.top + 20, left: 20, right: 20)
          .scrollVertical(),
    );
  }
}
