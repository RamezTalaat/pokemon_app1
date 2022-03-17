import 'package:flutter/material.dart';

class detailRow extends StatelessWidget {
  final String txt;
  final dynamic value;
  const detailRow(this.txt,this.value,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          txt,
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
        Text(
          value,
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w300,
              color: Colors.red),
        )
      ],
    );
  }
}
