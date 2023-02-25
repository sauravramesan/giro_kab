import 'package:flutter/material.dart';
import 'package:giro_kab/app/home/widgets/booking_popup.dart';
import 'package:giro_kab/app/utils/color_const/color_const.dart';
import 'package:giro_kab/app/utils/padding_const/padding_const.dart';
import 'package:giro_kab/app/utils/sized_box_const/sized_box_const.dart';

class PaymentPopUp extends StatelessWidget {
  const PaymentPopUp({Key? key}) : super(key: key);

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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Payment",
                      style: TextStyle(
                        color: kTextPrimaryColor,
                        fontSize: 21,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Row(
                      children: [
                        Container(
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
                        kWidth9,
                        const Text("Online"),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
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
                        kWidth9,
                        const Text("Off Line")
                      ],
                    ),
                  ],
                ),
                kHeight15,
                const Divider(
                  thickness: 1,
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
                    tileColor: kListTileColor,
                    leading: const Text(
                      "Extra charge",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  separatorBuilder: (context, index) => kHeight10,
                  itemCount: 2,
                ),
                kHeight31,
                const CustomButton(
                  horizontalPadding: 125,
                  verticalPadding: 20,
                  title: "Submit",
                  color: kTextColor,
                ),
                kHeight21,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
