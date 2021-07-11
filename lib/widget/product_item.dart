import "package:flutter/material.dart";
import 'package:amerchendice/thema.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    Key key,
    @required this.imageUrl,
    @required this.name,
    @required this.price,
    @required this.sold,
  }) : super(key: key);

  final String imageUrl;
  final String name;
  final String price;
  final String sold;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/detail-product');
      },
      child: Container(
        width: 150,
        height: 230,
        margin: EdgeInsets.only(
          right: 16,
          bottom: 16,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: kWhiteColor,
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 4),
              color: Colors.black12,
              blurRadius: 20,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 145,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(12),
                ),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    imageUrl,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    price,
                    style: purpleTextStyle.copyWith(
                      fontWeight: semiBold,
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    name,
                    style: blackTextStyle.copyWith(
                      fontWeight: semiBold,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "Sold : $sold",
                    style: greyTextStyle.copyWith(
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
