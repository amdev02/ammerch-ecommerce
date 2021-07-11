import 'package:amerchendice/thema.dart';
import 'package:amerchendice/widget/button_small.dart';
import 'package:amerchendice/widget/detail_subtitle.dart';
import 'package:amerchendice/widget/grid_product_item.dart';
import 'package:amerchendice/widget/product_item.dart';
import 'package:flutter/material.dart';

class DetailProduct extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget navbar() {
      return Container(
        margin: EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/button_back.png",
                    ),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: kWhiteColor,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.shopping_bag,
              ),
            ),
          ],
        ),
      );
    }

    Widget headerImage() {
      return Container(
        width: double.infinity,
        height: 296,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              "assets/white_tshirt.jpg",
            ),
          ),
        ),
      );
    }

    Widget priceProduct() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.only(
          top: 14,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Rp. 60.000",
              style: purpleTextStyle.copyWith(
                fontSize: 22,
                fontWeight: semiBold,
              ),
              textAlign: TextAlign.left,
            ),
            Icon(
              Icons.favorite_outline,
            ),
          ],
        ),
      );
    }

    Widget titleProduct() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.only(
          top: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "White Basic T-shirt",
              style: blackTextStyle.copyWith(
                fontWeight: semiBold,
                fontSize: 18,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
            Text(
              "T-Shirt",
              style: greyTextStyle.copyWith(
                fontSize: 12,
              ),
            ),
          ],
        ),
      );
    }

    Widget ratingProduct() {
      return Container(
        margin: EdgeInsets.only(
          top: marginTop,
        ),
        height: 40,
        padding: EdgeInsets.symmetric(
          horizontal: 10,
        ),
        decoration: BoxDecoration(
          color: kWhiteColor,
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 4),
              color: Colors.black12,
              blurRadius: 12,
            ),
          ],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 20,
                ),
                Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 20,
                ),
                Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 20,
                ),
                Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 20,
                ),
                Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 20,
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  "/ 5.0",
                  style: greyTextStyle.copyWith(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.share,
                  color: kGreyColor,
                  size: 20,
                ),
              ],
            )
          ],
        ),
      );
    }

    Widget shippingProduct() {
      return Container(
        margin: EdgeInsets.only(
          top: marginTop,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DetailSubtitle(
              text: "Shipping",
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: defaultMargin,
                vertical: 12,
              ),
              decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 3),
                    blurRadius: 20,
                    color: Colors.black12,
                  )
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Free Shipping",
                        style: blackTextStyle.copyWith(
                          fontWeight: semiBold,
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        'Free Shipping if shopping min. 300Rb',
                        style: blackTextStyle.copyWith(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Standard ",
                        style: blackTextStyle.copyWith(
                          fontWeight: medium,
                        ),
                      ),
                      Text(
                        "Rp.0 - Rp. 30.000",
                        style: purpleTextStyle.copyWith(
                          fontWeight: medium,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget chooseSizeProduct() {
      return Container(
        margin: EdgeInsets.only(
          top: marginTop,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DetailSubtitle(
              text: "Choose Size",
            ),
            SizedBox(
              height: 6,
            ),
            Container(
              padding: EdgeInsets.all(10),
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      color: kWhiteColor,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 20,
                          offset: Offset(0, 4),
                        ),
                      ],
                      border: Border.all(
                        width: 1,
                        color: kGreyColor,
                      ),
                    ),
                    child: Text(
                      "S",
                      style: blackTextStyle,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      color: kWhiteColor,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 20,
                          offset: Offset(0, 4),
                        ),
                      ],
                      border: Border.all(
                        width: 1,
                        color: kGreyColor,
                      ),
                    ),
                    child: Text(
                      "M",
                      style: blackTextStyle,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      color: kWhiteColor,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 20,
                          offset: Offset(0, 4),
                        ),
                      ],
                      border: Border.all(
                        width: 1,
                        color: kGreyColor,
                      ),
                    ),
                    child: Text(
                      "L",
                      style: blackTextStyle,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      color: kWhiteColor,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 20,
                          offset: Offset(0, 4),
                        ),
                      ],
                      border: Border.all(
                        width: 1,
                        color: kGreyColor,
                      ),
                    ),
                    child: Text(
                      "XL",
                      style: blackTextStyle,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      color: kWhiteColor,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 20,
                          offset: Offset(0, 4),
                        ),
                      ],
                      border: Border.all(
                        width: 1,
                        color: kGreyColor,
                      ),
                    ),
                    child: Text(
                      "XXL",
                      style: blackTextStyle,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget detailProduct() {
      return Container(
        margin: EdgeInsets.only(
          top: marginTop,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DetailSubtitle(
              text: "Product Details",
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 12,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 20,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      bottom: 16,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Stock",
                          style: blackTextStyle,
                        ),
                        Text(
                          "30",
                          style: blackTextStyle,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      bottom: 16,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Brand",
                          style: blackTextStyle,
                        ),
                        Text(
                          "No Brands",
                          style: blackTextStyle,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      bottom: 16,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Material",
                          style: blackTextStyle,
                        ),
                        Text(
                          "Combed 30s",
                          style: blackTextStyle,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      bottom: 16,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Patern",
                          style: blackTextStyle,
                        ),
                        Text(
                          "Basic",
                          style: blackTextStyle,
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  Container(
                    margin: EdgeInsets.only(
                      top: 16,
                      bottom: 16,
                    ),
                    child: Text(
                      "As classic as they come, this is the garment that speaks to every man. Designed to stand the test of time, our signature straight-cut crew neck T-Shirt is made from premium heavyweight Egyptian cotton jersey and accentuated with a ribbed neckline. Playing the role of both statement and staple, this piece will be the most worn item in your wardrobe.",
                      style: blackTextStyle,
                      textAlign: TextAlign.justify,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                    ),
                  ),
                  Divider(),
                  Container(
                    child: Text(
                      "See More",
                      style: purpleTextStyle.copyWith(
                        fontWeight: semiBold,
                      ),
                      textAlign: TextAlign.justify,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget similarProduct() {
      return Container(
        margin: EdgeInsets.only(
          top: marginTop,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DetailSubtitle(
              text: "Similar Products",
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
                    imageUrl: "assets/black_tshirt.jpg",
                    name: "Black Basic T-shirt",
                    price: "Rp. 60.000",
                    sold: "10Rb",
                  ),
                  ProductItem(
                    imageUrl: "assets/black_tshirt.jpg",
                    name: "Black Basic T-shirt",
                    price: "Rp. 60.000",
                    sold: "10Rb",
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
        width: double.infinity,
        child: DetailSubtitle(
          text: "Other Products",
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
            childAspectRatio: 4 / 6,
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

    Widget bottomNavBar() {
      return Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(12),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ButtonSmall(
              icon: Icons.message,
              onTap: () {},
            ),
            SizedBox(
              width: 12,
            ),
            ButtonSmall(
              icon: Icons.shopping_cart_outlined,
              onTap: () {},
            ),
            SizedBox(
              width: 12,
            ),
            Expanded(
              child: Container(
                height: 40,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: kPurpleColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    "Buy Now",
                    style: whiteTextStyle.copyWith(
                      fontWeight: semiBold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          headerImage(),
          ListView(
            children: [
              navbar(),
              SizedBox(
                height: 196,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: defaultMargin,
                ),
                decoration: BoxDecoration(
                  color: backgroundColor,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                ),
                child: Column(
                  children: [
                    priceProduct(),
                    titleProduct(),
                    ratingProduct(),
                    shippingProduct(),
                    chooseSizeProduct(),
                    detailProduct(),
                    similarProduct(),
                    otherProductTitle(),
                    otherProductItem(),
                    SizedBox(
                      height: 50,
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
      bottomNavigationBar: bottomNavBar(),
    );
  }
}
