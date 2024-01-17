import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stp_p/Widgets/widgets.dart';
import 'package:stp_p/models/Pages.dart';

class InspectorBar extends StatelessWidget {
  final double opacity;
  final BorderRadius borderRadius;

  InspectorBar({super.key, required this.opacity, required this.borderRadius});

  final List inspectorElements = [
    'About',
    'Credits',
    'Acknowledgment',
    'Feedback',
    'Contact'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.black.withOpacity(opacity),
            borderRadius: borderRadius),
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(top: 50.0),
          child: ListView.builder(
              padding: const EdgeInsets.all(5),
              shrinkWrap: true,
              itemCount: inspectorElements.length,
              itemBuilder: (context, index) {
                return ActiveTab(
                  inspectorElements: inspectorElements,
                  index: index,
                );
              }),
        ));
  }
}

class ActiveTab extends StatefulWidget {
  ActiveTab({
    super.key,
    required this.inspectorElements,
    required this.index,
  });

  final List inspectorElements;
  final int index;

  @override
  State<ActiveTab> createState() => _ActiveTabState();
}

class _ActiveTabState extends State<ActiveTab> {
  bool isActive = false;

  void ChangePage(String activeTitle) {
    if (isActive == false) {
      Provider.of<Pages>(context, listen: false)
          .ChangeActive(2, activeTitle, ExploreContent());
      setState(() {
        isActive = !isActive;
      });
    } else {
      Provider.of<Pages>(context, listen: false).GetBack();
      setState(() {
        isActive = !isActive;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () => ChangePage(widget.inspectorElements[widget.index]),
        child: Container(
          padding: EdgeInsets.only(left: 20),
          height: 50,
          width: double.infinity,
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              widget.inspectorElements[widget.index],
              style: TextStyle(color: Colors.white54),
            ),
          ),
        ));
  }
}
