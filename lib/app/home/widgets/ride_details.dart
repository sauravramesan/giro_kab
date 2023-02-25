import 'package:flutter/material.dart';
import 'package:giro_kab/app/home/widgets/booking_popup.dart';
import 'package:giro_kab/app/utils/color_const/color_const.dart';
import 'package:giro_kab/app/utils/sized_box_const/sized_box_const.dart';

class RideDetailsPage extends StatelessWidget {
  const RideDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CustomAppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.popUntil(
              context,
              (route) => route.isFirst,
            );
          },
          icon: const Icon(
            Icons.arrow_back,
            size: 30,
            color: Colors.black,
          ),
        ),
        title: "Ride Details",
      ),
      body: ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                height: 270,
                width: size.width,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade400,
                      offset: const Offset(0.0, 1.0),
                      blurRadius: 6,
                    ),
                  ],
                ),
                child: Container(
                  height: 165,
                  width: size.width,
                  decoration: const BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(6.0),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        buildRow(
                          leadingText: "From",
                          trailingText: "Kollam",
                        ),
                        const Divider(
                          thickness: 1,
                        ),
                        buildRow(
                          leadingText: "To",
                          trailingText: "Paripally",
                        ),
                        const Divider(
                          thickness: 1,
                        ),
                        buildRow(
                          leadingText: "Fare",
                          trailingText: "100",
                        ),
                        kHeight10,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            CustomButton(
                              horizontalPadding: 55,
                              verticalPadding: 16,
                              title: "Accept",
                              color: kTextColor,
                            ),
                            CustomButton(
                              horizontalPadding: 55,
                              verticalPadding: 16,
                              title: "Decline",
                              color: kDeclineColor,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
          separatorBuilder: (context, index) => const SizedBox(),

          itemCount: 1),
    );
  }

  Padding buildRow({String? leadingText, String? trailingText}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          SizedBox(
            width: 100,
            child: Text(
              leadingText ?? "",
              style: const TextStyle(
                color: Color(0xFF9B9B9B),
                fontSize: 21,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const Text(
            ":",
            style: TextStyle(
              color: Color(0xFF252525),
              fontSize: 21,
              fontWeight: FontWeight.w500,
            ),
          ),
          kWidth20,
          Text(
            trailingText ?? "",
            style: const TextStyle(
              color: Color(0xFF252525),
              fontSize: 21,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Widget leading;

  const CustomAppBar({
    super.key,
    required this.title,
    required this.leading,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListTile(
        leading: leading,
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(70);
}
