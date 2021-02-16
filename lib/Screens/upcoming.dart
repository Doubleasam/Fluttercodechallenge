import 'package:doctor_app/Screens/appointment.dart';
import 'package:doctor_app/Screens/datepage.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Upcoming extends StatefulWidget {
  @override
  _UpcomingState createState() => _UpcomingState();
}

class _UpcomingState extends State<Upcoming> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        selectedLabelStyle: TextStyle(color: Colors.blue),
        selectedItemColor: Colors.blue,
        showSelectedLabels: true,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.blue[200],
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.blue[200],
              ),
              label: "Appointments"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.account_balance_wallet,
                color: Colors.blue[200],
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.blue[200],
              ),
              label: "Home")
        ],
      ),
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
            VxCapsule(
              width: 160,
              height: 50,
              child: "Appointments".text.white.semiBold.size(18).makeCentered(),
              backgroundColor: Colors.blue,
              border: Border.all(color: Colors.blue),
            ).centered(),
            InkWell(
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => DatePage()));
              },
              child: VxCapsule(
                width: 140,
                height: 50,
                child:
                    "Availablity".text.blue500.semiBold.size(18).makeCentered(),
                backgroundColor: Vx.gray200,
              ),
            )
          ],
        ),
        20.heightBox,
        HStack(
          [
            "Upcoming Appointments".text.blue500.semiBold.size(18).make(),
            InkWell(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Appointments()));
                },
                child:
                    "Past Appointments".text.gray500.semiBold.size(18).make()),
          ],
          alignment: MainAxisAlignment.spaceBetween,
          axisSize: MainAxisSize.max,
        ),
        15.heightBox,
        "Today, Jan 15th".text.gray500.semiBold.size(18).makeCentered(),
        20.heightBox,
        appointmentCard(),
        10.heightBox,
        appointmentCard(),
        10.heightBox,
        appointmentCard(),
        10.heightBox,
        appointmentCard(),
      ])
          .pOnly(top: context.screenPadding.top + 20, left: 20, right: 20)
          .scrollVertical(),
    );
  }
}

Widget appointmentCard() {
  return VxBox(
      child: Column(
    children: [
      HStack(
        [
          VxBox(
                  child: VStack(
            [
              "Jan".text.white.make().centered(),
              "15".text.semiBold.white.make().centered()
            ],
            alignment: MainAxisAlignment.center,
          ).centered())
              .height(85)
              .width(80)
              .color(Colors.deepOrange[300])
              .rounded
              .make(),
          10.widthBox,
          VStack([
            5.heightBox,
            "Chukwudi Duru".text.bold.black.size(18).make(),
            3.heightBox,
            "Category: Eye, Teeth".text.gray600.semiBold.size(14).make(),
            8.heightBox,
            "Complaints".text.italic.gray600.semiBold.size(14).make(),
            8.heightBox,
            "Lorem Ipsum is simply dummy text of the printing...."
                .text
                .italic
                .gray600
                .semiBold
                .size(14)
                .make(),
            12.heightBox,
            "08:30AM-09:30AM".text.gray700.bold.size(16).make(),
          ]).expand()
        ],
        crossAlignment: CrossAxisAlignment.start,
      ).pOnly(left: 12, right: 12),
      Column(
        children: [
          Divider(
            color: Colors.grey[300],
            thickness: 1.5,
          ),
          15.heightBox,
          HStack(
            [
              Icon(Icons.chat, color: Colors.blue),
              Icon(Icons.call, color: Colors.grey),
              Icon(Icons.video_call_outlined, color: Colors.grey),
            ],
            alignment: MainAxisAlignment.spaceEvenly,
            axisSize: MainAxisSize.max,
          )
        ],
        mainAxisAlignment: MainAxisAlignment.center,
      ).expand()
    ],
  ).pOnly(
    top: 20,
    bottom: 20,
  )).gray300.rounded.height(250).width(double.infinity).makeCentered();
}
