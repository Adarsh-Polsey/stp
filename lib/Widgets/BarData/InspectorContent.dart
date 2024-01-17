import 'package:flutter/material.dart';
import 'package:stp_p/models/Data.dart';

class InspectorContent extends StatelessWidget {
  String title = "Something must have gone grong,please refresh.";
  Data data = Data();
  final String content;
  InspectorContent({
    super.key,
    required this.title,
  }) : content = title.toLowerCase();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const Divider(
            thickness: 2,
          ),
          const SizedBox(
            height: 30,
          ),
          Text(data.active[content])
        ],
      ),
    );
  }
}
