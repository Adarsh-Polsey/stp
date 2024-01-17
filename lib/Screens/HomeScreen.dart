import 'package:flutter/material.dart';
import 'package:stp_p/Widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const Widget hsep = SizedBox(width: 15);
  static const Widget vsep = SizedBox(height: 15);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // 1st Row
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              hsep,
              Expanded(flex: 3, child: Featured()),
              hsep,
              Expanded(flex: 2, child: Featured()),
              hsep,
            ],
          ),
          vsep,
          // 2nd Row
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              hsep,
              Expanded(flex: 2, child: Featured()),
              hsep,
              Expanded(flex: 3, child: Featured()),
              hsep,
              Expanded(flex: 2, child: Featured()),
              hsep,
            ],
          ),
          vsep,
          // 3rd Row
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              hsep,
              Expanded(flex: 2, child: Featured()),
              hsep,
              Expanded(flex: 3, child: Featured()),
              hsep,
            ],
          )
        ],
      ),
    );
  }
}
