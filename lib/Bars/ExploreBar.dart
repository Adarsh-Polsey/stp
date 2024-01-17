import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stp_p/Widgets/widgets.dart';
import 'package:stp_p/models/Pages.dart';

class ExploreBar extends StatefulWidget {
  final double opacity;
  final BorderRadius borderRadius;
  const ExploreBar(
      {super.key, required this.opacity, required this.borderRadius});

  @override
  State<ExploreBar> createState() => _ExploreBarState();
}

class _ExploreBarState extends State<ExploreBar> {
  String visible = 'See All';
  // ignore: non_constant_identifier_names
  void ChangePage() {
    if (visible == 'See All') {
      Provider.of<Pages>(context, listen: false)
          .ChangeActive(1, '', ExploreContent());
      setState(() {
        visible = 'Hide';
      });
    } else {
      Provider.of<Pages>(context, listen: false).GetBack();
      setState(() {
        visible = 'See All';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(widget.opacity),
          borderRadius: widget.borderRadius,
        ),
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(top: 13.0, left: 13, right: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              // Title
              const Row(
                children: [
                  Text(
                    'Heads Up',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 18,
                        letterSpacing: 2),
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Icon(
                    Icons.notifications,
                    color: Colors.white,
                  )
                ],
              ),
              InkWell(
                onTap: ChangePage,
                child: Row(
                  children: [
                    Text(
                      visible,
                      style: const TextStyle(color: Colors.white24),
                    ),
                    const Icon(Icons.arrow_right, color: Colors.white24),
                  ],
                ),
              ),
              const Divider(
                color: Colors.white12,
                endIndent: 10,
              ),
              const SizedBox(height: 10),
              Expanded(
                child: ListView(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  children: [
                    // Top News
                    NotificationList(title: 'Top News', content: 'Blaaaaaaaaa'),
                    const SizedBox(
                      height: 10,
                    ),
                    // College Notifications
                    NotificationList(
                        title: 'College Notification', content: 'Blaaaaaaaaa'),
                    const SizedBox(
                      height: 10,
                    ),
                    // Event Notifications
                    NotificationList(
                        title: 'Event Notification', content: 'Blaaaaaaaaa'),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
