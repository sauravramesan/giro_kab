import 'package:flutter/material.dart';
import 'package:giro_kab/app/utils/color_const/color_const.dart';
import 'package:giro_kab/app/utils/sized_box_const/sized_box_const.dart';

class NewBottomRightContainer extends StatelessWidget {
  const NewBottomRightContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 125,
      width: 151.5,
      decoration: const BoxDecoration(
        color: kTaxiContainerColor,
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              kWidth10,
              Text(
                "10",
                style: TextStyle(
                  color: kTextColor,
                  fontSize: 26,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          kHeight10,
          const Text(
            "My Rides",
            style: TextStyle(
              color: kTextPrimaryColor,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }
}
