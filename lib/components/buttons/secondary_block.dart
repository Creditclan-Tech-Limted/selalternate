import 'package:flutter/material.dart';
import 'package:selcapital/constants.dart';

class SecondaryBlockButton extends StatelessWidget {
  const SecondaryBlockButton({
    Key key,
    this.text,
    this.press,
  }) : super(key: key);
  final String text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
        decoration: BoxDecoration(
          border: Border.all(color: kPrimaryColor),
          borderRadius: BorderRadius.circular(50),
        ),
        width: double.infinity,
        padding: EdgeInsets.all(20),
        child: Stack(
          children: [
            Opacity(
              opacity: 0.2,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
              ),
            ),
            Center(
              child: Text(
                text,
                style: TextStyle(
                  color: kPrimaryColor,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
