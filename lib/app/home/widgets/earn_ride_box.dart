import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:giro_kab/app/utils/color_const/color_const.dart';
import 'package:giro_kab/app/utils/sized_box_const/sized_box_const.dart';

class EarnRideWidget extends StatelessWidget {
  final String? titleText;
  final String? image;
  final String? subTitleText;
  const EarnRideWidget({
    Key? key,
    this.titleText,
    this.image,
    this.subTitleText,
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
            children: [
              SizedBox(
                child: image != null
                    ? SvgPicture.asset(
                        image!,
                        width: 16,
                        height: 22,
                      )
                    : const SizedBox(),
              ),
              image == null ? kWidth1 : kWidth10,
              Flexible(
                child: Text(
                  titleText ?? "",
                  maxLines: 1,
                  style: const TextStyle(
                    overflow: TextOverflow.ellipsis,
                    color: kTextColor,
                    fontSize: 26,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
          kHeight10,
          Flexible(
            child: Text(
              subTitleText ?? "",
              maxLines: 1,
              style: const TextStyle(
                overflow: TextOverflow.ellipsis,
                color: kTextPrimaryColor,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          )
        ],
      ),
    );
  }
}
