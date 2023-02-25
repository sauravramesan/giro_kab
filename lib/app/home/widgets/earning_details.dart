import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:giro_kab/app/home/widgets/earnings.dart';
import 'package:giro_kab/app/home/widgets/ride_details.dart';
import 'package:giro_kab/app/utils/color_const/color_const.dart';
import 'package:giro_kab/app/utils/sized_box_const/sized_box_const.dart';

class EarningsDetailsPage extends StatelessWidget {
  const EarningsDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leading: Transform.translate(
          offset: const Offset(-6, 0),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              size: 30,
              color: Colors.black,
            ),
          ),
        ),
        title: " ",
      ),
      body: Padding(
        padding: const EdgeInsets.all(26.0),
        child: Column(
          children: [
            const BuildEarningsTop(),
            kHeight10,
            const BuildEarningsListView(),
            kHeight10,
            newRideDetailRow(
              title: "Rejection Rides :",
              value: "3",
            ),
            kHeight10,
            const Divider(
              thickness: 1,
            ),
            kHeight10,
            newRideDetailRow(
              title: "Extra Charge :",
              value: "30",
            ),
            kHeight10,
            const Divider(
              thickness: 1,
            ),
            kHeight10,
            newRideDetailRow(
              title: "Total Earnings :",
              value: "300",
            ),
            kHeight10,
            const Divider(
              thickness: 1,
            ),
          ],
        ),
      ),
    );
  }

  Row newRideDetailRow({String? title, String? value}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title ?? "",
          style: const TextStyle(
            fontSize: 21,
            fontWeight: FontWeight.w500,
            color: kTextSecondaryColor,
          ),
        ),
        Row(
          children: [
            SizedBox(
              child: title == "Rejection Rides :"
                  ? const SizedBox()
                  : SvgPicture.asset(
                      "assests/svg_images/rupee.svg",
                      height: 20,
                      width: 20,
                    ),
            ),
            kWidth3,
            Text(
              value ?? "",
              style: const TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
