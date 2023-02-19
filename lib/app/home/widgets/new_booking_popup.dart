import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:giro_kab/app/utils/color_const/color_const.dart';
import 'package:giro_kab/app/utils/padding_const/padding_const.dart';
import 'package:giro_kab/app/utils/sized_box_const/sized_box_const.dart';

class NewBookingPopUP extends StatelessWidget {
  const NewBookingPopUP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Material(
          color: const Color(0xFFFFFFFF),
          clipBehavior: Clip.antiAlias,
          type: MaterialType.card,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
          child: Padding(
            padding: kSymHorizo21,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                kHeight31,
                SvgPicture.asset("assests/svg_images/alert.svg"),
                kHeight20,
                const Text(
                  "New Booking Arrived",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                kHeight30,
                ElevatedButton(
                  onPressed: () {},
                  style: const ButtonStyle(
                      elevation: MaterialStatePropertyAll(0),
                      padding: MaterialStatePropertyAll(
                          EdgeInsets.symmetric(horizontal: 100, vertical: 20)),
                      backgroundColor: MaterialStatePropertyAll(kTextColor),
                      shape: MaterialStatePropertyAll(StadiumBorder())),
                  child: const Text(
                    "Go to Order",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                kHeight45,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
