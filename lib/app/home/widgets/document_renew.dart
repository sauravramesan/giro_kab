import 'package:flutter/material.dart';
import 'package:giro_kab/app/home/widgets/booking_popup.dart';
import 'package:giro_kab/app/home/widgets/ride_details.dart';
import 'package:giro_kab/app/utils/color_const/color_const.dart';
import 'package:giro_kab/app/utils/sized_box_const/sized_box_const.dart';

class DocumentationPage extends StatelessWidget {
  const DocumentationPage({super.key});

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
        title: "Document Renewal",
      ),
      body: Padding(
        padding: const EdgeInsets.all(26.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            doucumentRow(
              title: "Reg - Certificate",
              value: "Expired on 21 Feb 2025",
            ),
            kHeight10,
            const Divider(
              thickness: 1,
            ),
            kHeight10,
            doucumentRow(
              title: "License",
              value: "",
            ),
            kHeight10,
            const Divider(
              thickness: 1,
            ),
            kHeight10,
            doucumentRow(
              title: "Pollution",
              value: "Expired on 21 Feb 2025",
            ),
            kHeight10,
            const Divider(
              thickness: 1,
            ),
            kHeight10,
            doucumentRow(
              title: "Insurance",
              value: "",
            ),
            kHeight10,
            const Divider(
              thickness: 1,
            ),
            kHeight10,
            doucumentRow(
              title: "Vehicle Permit",
              value: "",
            ),
          ],
        ),
      ),
    );
  }

  Row doucumentRow({String? title, String? value}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title ?? "",
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            kHeight5,
            title == "Reg - Certificate" || title == "Pollution"
                ? Text(
                    value ?? "",
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.red,
                    ),
                  )
                : const SizedBox(),
          ],
        ),
        title == "Reg - Certificate" || title == "Pollution"
            ? const CustomButton(
                horizontalPadding: 20,
                verticalPadding: 10,
                title: "Update",
                color: kTextColor,
              )
            : const SizedBox(),
      ],
    );
  }
}
