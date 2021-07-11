import 'package:amerchendice/thema.dart';
import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget navbar() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "AM Merchandise",
            style: whiteTextStyle.copyWith(
              fontWeight: semiBold,
              fontSize: 20,
              letterSpacing: 1.5,
            ),
          ),
          Icon(
            Icons.settings,
            color: kWhiteColor,
          ),
        ],
      );
    }

    Widget profile() {
      return Container(
        margin: EdgeInsets.symmetric(
          vertical: marginTop,
        ),
        child: Row(
          children: [
            Image.asset(
              "assets/Profile - Default.png",
              width: 70,
            ),
            SizedBox(
              width: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Muhammad Aepril",
                  style: whiteTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold,
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  "@maefril",
                  style: greyTextStyle.copyWith(),
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget header() {
      return Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: kPurpleColor,
        ),
        child: Column(
          children: [
            navbar(),
            profile(),
          ],
        ),
      );
    }

    Widget myAccount() {
      return Container(
        margin: EdgeInsets.only(
          top: 10,
        ),
        padding: EdgeInsets.symmetric(
          vertical: 12,
          horizontal: defaultMargin,
        ),
        decoration: BoxDecoration(
          color: kWhiteColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "My Account",
              style: purpleTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Divider(),
            Container(
              padding: EdgeInsets.symmetric(
                vertical: 12,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Edit Your Profile",
                    style: blackTextStyle.copyWith(
                      fontWeight: medium,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 18,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                vertical: 12,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Sign Out",
                    style: blackTextStyle.copyWith(
                      fontWeight: medium,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 18,
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }

    Widget myPurchases() {
      return Container(
        padding: EdgeInsets.symmetric(
          vertical: 12,
          horizontal: defaultMargin,
        ),
        decoration: BoxDecoration(
          color: kWhiteColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "My Purchases",
              style: purpleTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Divider(),
            Container(
              padding: EdgeInsets.symmetric(
                vertical: 12,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "To Pay",
                    style: blackTextStyle.copyWith(
                      fontWeight: medium,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 18,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                vertical: 12,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "To Ship",
                    style: blackTextStyle.copyWith(
                      fontWeight: medium,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 18,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                vertical: 12,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "To Receive",
                    style: blackTextStyle.copyWith(
                      fontWeight: medium,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 18,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                vertical: 12,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "To Rate",
                    style: blackTextStyle.copyWith(
                      fontWeight: medium,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 18,
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }

    Widget general() {
      return Container(
        margin: EdgeInsets.only(
          top: 10,
        ),
        padding: EdgeInsets.symmetric(
          vertical: 12,
          horizontal: defaultMargin,
        ),
        decoration: BoxDecoration(
          color: kWhiteColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "General",
              style: purpleTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Divider(),
            Container(
              padding: EdgeInsets.symmetric(
                vertical: 12,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Privacy & Policy",
                    style: blackTextStyle.copyWith(
                      fontWeight: medium,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 18,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                vertical: 12,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Help Center",
                    style: blackTextStyle.copyWith(
                      fontWeight: medium,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 18,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                vertical: 12,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "App Rate",
                    style: blackTextStyle.copyWith(
                      fontWeight: medium,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 18,
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: ListView(
        children: [
          header(),
          myPurchases(),
          myAccount(),
          general(),
        ],
      ),
    );
  }
}
