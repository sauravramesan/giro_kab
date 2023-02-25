import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:giro_kab/app/home/widgets/booking_popup.dart';
import 'package:giro_kab/app/home/widgets/earn_ride_box.dart';
import 'package:giro_kab/app/home/widgets/payment_pop_up.dart';
import 'package:giro_kab/app/home/widgets/rejection_pop_up.dart';
import 'package:giro_kab/app/utils/color_const/color_const.dart';
import 'package:giro_kab/app/utils/image_const/image_const.dart';
import 'package:giro_kab/app/utils/padding_const/padding_const.dart';
import 'package:giro_kab/app/utils/sized_box_const/sized_box_const.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      key: _key,
      backgroundColor: kPrimaryColor,
      drawer: const Drawer(),
      appBar: buildAppBar(context),
      body: Padding(
        padding: kSymHorizo16,
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            kHeight12,
            Container(
              height: 146,
              width: size.width,
              decoration: const BoxDecoration(color: kTaxiContainerColor),
              child: Image.asset(
                kTaxi,
                width: 400,
                height: 146,
              ),
            ),
            kHeight12,
            Container(
              height: 342,
              width: size.width,
              decoration: const BoxDecoration(
                color: kTaxiContainerColor,
              ),
            ),
            kHeight26,
            Container(
              height: 165,
              width: size.width,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade400,
                    offset: const Offset(0.0, 1.0),
                    blurRadius: 6,
                  ),
                ],
              ),
              child: Container(
                height: 165,
                width: size.width,
                decoration: const BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(6.0),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    EarnRideWidget(
                        titleText: "500",
                        subTitleText: "My Earnings",
                        image: kMoney),
                    kWidth20,
                    EarnRideWidget(
                      titleText: "10",
                      subTitleText: "My Rides",
                      image: null,
                    ),
                    // NewBottomRightContainer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar(context) {
    return AppBar(
      backgroundColor: kPrimaryColor,
      elevation: 0,
      leading: IconButton(
        onPressed: () => _key.currentState!.openDrawer(),
        icon: SvgPicture.asset(
          kDrawer,
        ),
      ),
      actions: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              CupertinoDialogRoute(
                transitionDuration: const Duration(seconds: 0),
                builder: (context) => const PaymentPopUp(),
                context: context,
              ),
            );
          },
          child: SvgPicture.asset(
            kWallet,
            width: 24.86,
            height: 20.03,
          ),
        ),
        kWidth20,
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                CupertinoDialogRoute(
                    transitionDuration: const Duration(seconds: 0),
                    builder: (context) => const RejectionPopUp(),
                    context: context));
          },
          child: SvgPicture.asset(
            kBell,
            width: 24.86,
            height: 20.03,
          ),
        ),
        kWidth20,
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              CupertinoDialogRoute(
                transitionDuration: const Duration(seconds: 0),
                builder: (context) => const NewBookingPopUP(),
                context: context,
              ),
            );
          },
          child: SvgPicture.asset(
            kBell,
            width: 24.86,
            height: 20.03,
          ),
        ),
        kWidth10,
      ],
    );
  }
}
