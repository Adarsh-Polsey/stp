import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  final double opacity;
  const Footer({super.key, required this.opacity});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.black.withOpacity(opacity),
            border: Border.all(color: Colors.transparent.withOpacity(0.1))),
        height: double.infinity,
        child: const Column(
          children: [],
        ));
  }
}
