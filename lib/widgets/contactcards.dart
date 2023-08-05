import 'package:flutter/material.dart';

import 'temp.dart';

class MyWidget extends StatelessWidget {
  final IconData iconData;
  final String text;
  final Color backgroundColor;

  MyWidget(this.iconData, this.text, this.backgroundColor);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    final desiredWidth = screenWidth * 0.378;
    final desiredHeight = desiredWidth;

    return Container(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 3),
      width: desiredWidth,
      height: desiredHeight,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: backgroundColor,
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => UnderConstructionScreen()),
          );
        },
        child: Container(
          padding: const EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            color: Theme.of(context).appBarTheme.backgroundColor,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                iconData,
                size: 32,
                color: Colors.white,
              ),
              SizedBox(height: 8),
              Text(
                text,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
