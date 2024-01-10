import 'package:flutter/material.dart';

class SplashContent extends StatefulWidget {
  const SplashContent({
    Key? key,
    this.text,
    // this.image,
  }) : super(key: key);
  final String? text;
  // final String? image;

  @override
  State<SplashContent> createState() => _SplashContentState();
}

class _SplashContentState extends State<SplashContent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
      child: Column(
        children: <Widget>[
          const Spacer(),
          Text(
            widget.text!,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 32,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(flex: 2),
          // Image.asset(
          //   widget.image!,
          //   height: 265,
          //   width: 235,
          // ),
        ],
      ),
    );
  }
}