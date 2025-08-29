import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  final String titleTxt;
  const TitleText({super.key, required this.titleTxt});

  @override
  Widget build(BuildContext context) {
    return Text(
      titleTxt,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Colors.grey.shade700,
      ),
    );
  }
}
