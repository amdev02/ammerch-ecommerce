import 'package:flutter/material.dart';

import '../thema.dart';

class WhistlistItem extends StatelessWidget {
  const WhistlistItem({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: marginTop,
      ),
      padding: EdgeInsets.only(
        top: 10,
        left: 12,
        bottom: 14,
        right: 20,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: kWhiteColor,
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              "assets/white_tshirt.jpg",
              width: 80,
            ),
          ),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "White Basic T-Shirt",
                  style: blackTextStyle.copyWith(
                    fontWeight: semiBold,
                  ),
                ),
                Text(
                  "Rp. 60.000",
                  style: purpleTextStyle,
                ),
              ],
            ),
          ),
          Icon(
            Icons.favorite,
            color: kPurpleColor,
          ),
        ],
      ),
    );
  }
}
