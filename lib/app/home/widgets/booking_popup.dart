import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:giro_kab/app/home/widgets/ride_details.dart';
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
                const CustomButton(
                  title: "Go to Order",
                  horizontalPadding: 100,
                  verticalPadding: 20,
                  color: kTextColor,
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

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.horizontalPadding,
    required this.verticalPadding,
    required this.title,
    required this.color,
  });
  final double horizontalPadding;
  final double verticalPadding;
  final String title;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          CupertinoPageRoute(
            builder: (context) => const RideDetailsPage(),
          ),
        );
      },
      style: ButtonStyle(
          elevation: const MaterialStatePropertyAll(0),
          padding: MaterialStatePropertyAll(EdgeInsets.symmetric(
              horizontal: horizontalPadding, vertical: verticalPadding)),
          backgroundColor: MaterialStatePropertyAll(color),
          shape: const MaterialStatePropertyAll(StadiumBorder())),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
