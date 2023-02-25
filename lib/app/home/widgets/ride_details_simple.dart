import 'package:flutter/material.dart';
import 'package:giro_kab/app/home/widgets/ride_details.dart';
import 'package:giro_kab/app/utils/color_const/color_const.dart';
import 'package:giro_kab/app/utils/sized_box_const/sized_box_const.dart';

class RideSimpleDetailsPage extends StatelessWidget {
  const RideSimpleDetailsPage({super.key});

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
        title: "Ride Details",
      ),
      body: Padding(
        padding: const EdgeInsets.all(26.0),
        child: Column(children: [
          buildDetailsRow(title: "Source", value: "Kollam"),
          kHeight10,
          const Divider(
            thickness: 1,
          ),
          kHeight10,
          buildDetailsRow(title: "Destination", value: "Islamabad"),
          kHeight10,
          const Divider(
            thickness: 1,
          ),
          kHeight10,
          buildDetailsRow(title: "Customer Name", value: "Ali"),
          kHeight10,
          const Divider(
            thickness: 1,
          ),
          kHeight10,
          buildDetailsRow(title: "Phone Number", value: "+919633984101"),
          kHeight10,
          const Divider(
            thickness: 1,
          ),
          kHeight10,
          buildDetailsRow(title: "Vehicle Type", value: "Car"),
        ]),
      ),
    );
  }

  Row buildDetailsRow({String? title, String? value}) {
    return Row(
      children: [
        SizedBox(
          width: 170,
          child: Text(
            title ?? "",
            style: const TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.w500,
              color: kTextSecondaryColor,
            ),
          ),
        ),
        const Text(
          ":",
          style: TextStyle(
            fontSize: 21,
            fontWeight: FontWeight.w500,
            color: kTextSecondaryColor,
          ),
        ),
        kWidth10,
        Text(
          value ?? "",
          style: const TextStyle(
            fontSize: 21,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
