import 'package:amerchendice/thema.dart';
import 'package:flutter/material.dart';

class DetailSubtitle extends StatelessWidget {
  const DetailSubtitle({
    Key key,
    @required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: blackTextStyle.copyWith(
        fontSize: 16,
        fontWeight: semiBold,
      ),
      textAlign: TextAlign.left,
    );
  }
}
