import 'package:amerchendice/thema.dart';
import 'package:amerchendice/widget/whistlist_item.dart';
import 'package:flutter/material.dart';

class WhistlistPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: kWhiteColor,
        centerTitle: true,
        elevation: 1,
        title: Text(
          "Your Whistlist",
          style: blackTextStyle.copyWith(
            fontWeight: medium,
          ),
        ),
      );
    }

    Widget content() {
      return ListView(
        padding: EdgeInsets.symmetric(
          horizontal: marginTop,
        ),
        children: [
          WhistlistItem(),
          WhistlistItem(),
          WhistlistItem(),
        ],
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: header(),
      body: content(),
    );
  }
}
