import 'package:flutter/material.dart';
import 'package:giro_kab/app/home/widgets/booking_popup.dart';
import 'package:giro_kab/app/utils/color_const/color_const.dart';
import 'package:giro_kab/app/utils/padding_const/padding_const.dart';
import 'package:giro_kab/app/utils/sized_box_const/sized_box_const.dart';

class RejectionPopUp extends StatelessWidget {
  const RejectionPopUp({Key? key}) : super(key: key);

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
                const Text(
                  "Reason for Rejection",
                  style: TextStyle(
                    color: kTextPrimaryColor,
                    fontSize: 28,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                kHeight20,
                ListView.separated(
                  padding: EdgeInsets.zero,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) => ListTile(
                    onTap: () {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    leading: Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        border: Border.all(color: kTextColor),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(
                            4.0,
                          ),
                        ),
                      ),
                    ),
                    title: Transform.translate(
                      offset: const Offset(-20, -2),
                      child: const Text(
                        "Reason for Reject",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  separatorBuilder: (context, index) => const Divider(
                    thickness: 0.75,
                  ),
                  itemCount: 4,
                ),
                kHeight30,
                const CustomButton(
                  horizontalPadding: 125,
                  verticalPadding: 20,
                  title: "Submit",
                  color: kTextColor,
                ),
                kHeight30,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
