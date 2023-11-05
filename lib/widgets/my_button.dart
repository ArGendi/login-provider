import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String title;
  final Function()? onClick;
  const MyButton({super.key, required this.title, required this.onClick});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return SizedBox(
      width: screenSize.width / 2,
      child: ElevatedButton(
        onPressed: onClick, 
        child: Text(title),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black,
        ),
      ),
    );
  }
}