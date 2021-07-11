import 'dart:math';

import 'package:amerchendice/thema.dart';
import 'package:amerchendice/widget/grid_product_item.dart';
import 'package:amerchendice/widget/page_title.dart';
import 'package:amerchendice/widget/product_item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.symmetric(
          horizontal: defaultMargin,
          vertical: 20,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              "assets/icon_menu.png",
              width: 20,
            ),
            Text(
              "AM Merchandise",
              style: blackTextStyle.copyWith(
                fontWeight: semiBold,
                fontSize: 20,
              ),
            ),
            Icon(
              Icons.notifications_outlined,
            ),
          ],
        ),
      );
    }

    Widget search() {
      return Container(
        margin: EdgeInsets.only(
          top: 10,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Let's Find Your Dream Product",
              style: blackTextStyle,
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(
                left: 10,
              ),
              decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 4),
                    color: Colors.black12,
                    blurRadius: 20,
                  ),
                ],
              ),
              child: Center(
                child: TextFormField(
                  style: blackTextStyle,
                  decoration: InputDecoration(
                    hintText: "Search",
                    hintStyle: greyTextStyle,
                    border: InputBorder.none,
                    suffixIcon: Icon(Icons.search),
                  ),
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget categories() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PageTitle(
              onTap: () {},
              name: "Categories",
            ),
            SizedBox(
              height: 12,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 16),
                    padding: EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 12,
                    ),
                    decoration: BoxDecoration(
                      color: kWhiteColor,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 4),
                          color: Colors.black12,
                          blurRadius: 20,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Text(
                          "T-Shirt",
                          style: blackTextStyle.copyWith(
                            fontWeight: medium,
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Container(
                          width: 30,
                          height: 3,
                          decoration: BoxDecoration(
                            color: kPurpleColor,
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 16),
                    padding: EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 12,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2,
                        color: kGreyColor,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      "Pants",
                      style: greyTextStyle,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 16),
                    padding: EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 12,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2,
                        color: kGreyColor,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      "Hoodie",
                      style: greyTextStyle,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 16),
                    padding: EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 12,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2,
                        color: kGreyColor,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      "Short Pants",
                      style: greyTextStyle,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget popularProduct() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Column(
          children: [
            PageTitle(
              name: "Popular Products",
              onTap: () {},
            ),
            SizedBox(
              height: 12,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ProductItem(
                    imageUrl: "assets/black_tshirt.jpg",
                    name: "Black Basic T-shirt",
                    price: "Rp. 60.000",
                    sold: "10Rb",
                  ),
                  ProductItem(
                    imageUrl: "assets/casul_short_pants.jpg",
                    name: "Casual Short Pants",
                    price: "Rp. 125.000",
                    sold: "9Rb",
                  ),
                  ProductItem(
                    imageUrl: "assets/hoodie1.jpg",
                    name: "Hoodie",
                    price: "Rp. 200.000",
                    sold: "7Rb",
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget otherProductTitle() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: PageTitle(
          name: "Other Products",
          onTap: () {},
        ),
      );
    }


    Widget otherProductItem() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: GridView(
          shrinkWrap: true,
          physics: ClampingScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 20,
            childAspectRatio: 4 / 5.8,
          ),
          children: [
            GridProductItem(
              imageUrl: "assets/black_tshirt.jpg",
              name: "Black Basic T-shirt",
              price: "Rp. 60.000",
              sold: "10Rb",
            ),
            GridProductItem(
              imageUrl: "assets/casul_short_pants.jpg",
              name: "Casual Short Pants",
              price: "Rp. 125.000",
              sold: "9Rb",
            ),
            GridProductItem(
              imageUrl: "assets/hoodie1.jpg",
              name: "Kinger Hoodie",
              price: "Rp. 200.000",
              sold: "7Rb",
            ),
            GridProductItem(
              imageUrl: "assets/geometric_tshirt.jpg",
              name: "Geometric T-Shirt",
              price: "Rp. 85.000",
              sold: "2Rb",
            ),
            GridProductItem(
              imageUrl: "assets/white_tshirt.jpg",
              name: "White Basic T-Shirt",
              price: "Rp. 60.000",
              sold: "4Rb",
            ),
            GridProductItem(
              imageUrl: "assets/hoodie2.jpg",
              name: "Hoodie Sweatshirt",
              price: "Rp. 250.000",
              sold: "6rb",
            ),
            GridProductItem(
              imageUrl: "assets/jeans.jpg",
              name: "Blue Grey Jeans",
              price: "Rp. 180.000",
              sold: "4Rb",
            ),
            GridProductItem(
              imageUrl: "assets/shoe.jpg",
              name: "Gildas Mens Crewneck",
              price: "Rp. 170.000",
              sold: "4Rb",
            ),
            GridProductItem(
              imageUrl: "assets/crewneck.jpg",
              name: "Your Desgin Crewneck",
              price: "Rp. 170.000",
              sold: "4Rb",
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: ListView(
        shrinkWrap: true,
        physics: ClampingScrollPhysics(),
        children: [
          header(),
          search(),
          categories(),
          popularProduct(),
          otherProductTitle(),
          otherProductItem(),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
