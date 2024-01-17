import 'package:flutter/material.dart';

class Featured extends StatelessWidget {
  const Featured(
      {super.key,
      this.height = 150,
      this.padding = 0,
      this.child = const SizedBox.shrink(),
      this.width = double.infinity});
  final double height;
  final double width;
  final double padding;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(padding),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            // border: Border.all(color: Color(0x20000000)),
            // boxShadow: [
            //   BoxShadow(
            //     color: Color(0x50000000), // Shadow color
            //     spreadRadius: 3, // Spread radius
            //     blurRadius: 3, // Blur radius
            //     offset: Offset(1, 1), // Offset
            //   ),
            // ],
            color: const Color(0x30101010)),
        height: height,
        width: width,
        child: child,
      ),
    );
  }
}
