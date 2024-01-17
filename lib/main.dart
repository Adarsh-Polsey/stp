import 'package:flutter/material.dart';
import 'package:stp_p/Responsive/responsive.dart';

void main() {
  runApp(StepUp());
}

class StepUp extends StatefulWidget {
  const StepUp({super.key});

  @override
  State<StepUp> createState() => _StepUpState();
}

class _StepUpState extends State<StepUp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body:
              // Background
              Container(
                  height: double.infinity,
                  width: double.infinity,
                  // padding: EdgeInsets.symmetric(vertical: 60.0, horizontal: 90),
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                          stops: [0, 0.75],
                          colors: [Color(0xffF7CBFD), Color(0xff7758D1)])),
                  // Scaffold
                  child: const MobileScaffold()),
          // child: const DesktopScaffold()),
        ),
      ),
    );
  }
}
