import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stp_p/Screens/screens.dart';
import 'package:stp_p/models/Pages.dart';

// ignore: must_be_immutable
class MainBar extends StatefulWidget {
  final double opacity;
  Widget? page = HomeScreen();
  Widget? apage;
  MainBar({super.key, this.opacity = 0.3, this.apage});

  @override
  State<MainBar> createState() => _MainBarState();
}

class _MainBarState extends State<MainBar> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Pages>(
        builder: (context, value, child) => Container(
            decoration: BoxDecoration(
                color: Colors.black.withOpacity(widget.opacity),
                border: Border.all(color: Colors.transparent.withOpacity(0.1))),
            height: double.infinity,
            child: value.activePage));
  }
}
