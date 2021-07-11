import 'package:flutter/material.dart';
import 'package:amerchendice/thema.dart';

class PageTitle extends StatelessWidget {
  const PageTitle({
    Key key,
    @required this.name,
    @required this.onTap,
  }) : super(key: key);

  final String name;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          name,
          style: blackTextStyle.copyWith(
            fontSize: 16,
            fontWeight: semiBold,
          ),
        ),
        GestureDetector(
          onTap: onTap,
          child: Row(
            children: [
              Text(
                "View All",
                style: greyTextStyle.copyWith(
                  fontSize: 12,
                  fontWeight: light,
                ),
              ),
              SizedBox(
                width: 4,
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: kGreyColor,
                size: 12,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
