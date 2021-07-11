import 'package:amerchendice/thema.dart';
import 'package:flutter/material.dart';

class ButtonSmall extends StatelessWidget {
  const ButtonSmall({
    Key key, @required this.icon, @required this.onTap,
  }) : super(key: key);

  final IconData icon;
  final VoidCallback  onTap; 

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 8,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            width: 1,
            color: kPurpleColor,
          ),
        ),
        child: Icon(
          icon,
          color: kPurpleColor,
        ),
      ),
    );
  }
}
