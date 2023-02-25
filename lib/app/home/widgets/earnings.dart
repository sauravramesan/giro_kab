import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:giro_kab/app/home/widgets/booking_popup.dart';
import 'package:giro_kab/app/home/widgets/ride_details.dart';
import 'package:giro_kab/app/utils/color_const/color_const.dart';
import 'package:giro_kab/app/utils/image_const/image_const.dart';
import 'package:giro_kab/app/utils/sized_box_const/sized_box_const.dart';

class EarningsPage extends StatelessWidget {
  const EarningsPage({super.key});

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
        title: "Earnings",
      ),
      body: Padding(
        padding: const EdgeInsets.all(26.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            BuildEarningsTop(),
            BuildEarningsListView(),
            Center(
              child: CustomButton(
                  horizontalPadding: 100,
                  verticalPadding: 20,
                  title: 'Submit',
                  color: kTextColor),
            )
          ],
        ),
      ),
    );
  }

}

class BuildEarningsListView extends StatelessWidget {
  const BuildEarningsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: GridView.builder(
        itemCount: 8,
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          mainAxisSpacing: 10,
          crossAxisSpacing: 5,
          childAspectRatio: 1 / .45,
        ),
        itemBuilder: (context, index) {
          return Container(
            alignment: Alignment.center,
            decoration: const ShapeDecoration(
              shape: StadiumBorder(),
              color: kDeclineColor,
            ),
            child: Text(
              "Ride ${index + 1}",
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          );
        },
      ),
    );
  }
}
class BuildEarningsTop extends StatelessWidget {
  const BuildEarningsTop({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
            "21 Feb 2023",
            style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.w500,
              color: kTextSecondaryColor,
            ),
          ),
          kHeight10,
          Row(
            children: [
              SvgPicture.asset(kMoney),
              kWidth5,
              const Text(
                "500",
                style: TextStyle(
                  color: kTextColor,
                  fontSize: 26,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          kHeight10,
          const Divider(
            thickness: 1,
          ),
          kHeight10,
          Row(
            children: const [
              Text(
                "Rides :",
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.w500,
                  color: kTextSecondaryColor,
                ),
              ),
              kWidth5,
              Text(
                "8",
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          kHeight10,
          const Divider(
            thickness: 1,
          ),
          kHeight10,
              ],
            ),
          );
  }
}