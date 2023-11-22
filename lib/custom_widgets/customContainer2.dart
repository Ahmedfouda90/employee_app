import 'package:flutter/material.dart';

class CustomContainer2 extends StatelessWidget {
  const CustomContainer2({Key? key,required this.text2,required this.text1}) : super(key: key);
final String text1;
final String text2;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 30,
      decoration: BoxDecoration(
        // borderRadius: BorderRadius.circular(20),
        color: Colors.greenAccent,
      ),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Text(
          '$text1  :  $text2',

          style: TextStyle(color: Colors.black ,fontSize: 16,fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
