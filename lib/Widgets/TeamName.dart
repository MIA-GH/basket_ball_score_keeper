import 'package:flutter/material.dart';

class TeamName extends StatelessWidget {
  final title;
  const TeamName({
    Key key,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 38.0,
            ),
          ),
        ),
      ),
    );
  }
}
