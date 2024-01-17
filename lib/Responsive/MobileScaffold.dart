import 'package:flutter/material.dart';
import 'package:stp_p/Bars/Bars.dart';
import 'package:stp_p/Widgets/Featured.dart';

class MobileScaffold extends StatelessWidget {
  const MobileScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Icon(
            Icons.notifications_on,
            color: const Color.fromRGBO(0, 0, 0, 1).withOpacity(0.5),
            size: 20,
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      drawer: InspectorBar(
        borderRadius: BorderRadius.zero,
        opacity: 0.5,
      ),
      body: Padding(
        padding: const EdgeInsets.all(1.0),
        child: Featured(
          height: double.infinity,
          padding: 5,
        ),
      ),
    );
  }
}
