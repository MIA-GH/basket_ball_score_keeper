import 'package:flutter/material.dart';

class ScoreButton extends StatelessWidget {
  final title;
  final Function onPressed;
  const ScoreButton({
    Key key,
    this.title,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 180.0,
        decoration: BoxDecoration(
          color: Colors.deepOrangeAccent,
        ),
        padding: EdgeInsets.symmetric(
          vertical: 15.0,
          horizontal: 15.0,
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 18.0,
            ),
          ),
        ),
      ),
    );
  }
}
