import 'package:flutter/material.dart';
import 'package:stp_p/Bars/Bars.dart';
import 'package:provider/provider.dart';
import 'package:stp_p/models/Pages.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({super.key});

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => Pages(),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              // HeadsUp
              Expanded(
                  flex: 3,
                  child: ExploreBar(
                      opacity: 0.4,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomLeft: Radius.circular(20)))),
              // MainBar
              Expanded(flex: 8, child: MainBar(opacity: 0.3)),
              // Inspector
              Expanded(
                  flex: 2,
                  child: InspectorBar(
                      opacity: 0.4,
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20)))),
            ],
          ),
        ));
  }
}
