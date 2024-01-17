import 'package:flutter/material.dart';
import 'package:stp_p/Widgets/widgets.dart';
import 'package:stp_p/models/Data.dart';

class ExploreContent extends StatelessWidget {
  ExploreContent({super.key});
  final Data data = Data();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(children: [
        Text('Top News', style: const TextStyle(color: Colors.white70)),
        CardList(length: data.news.length, data: data.news),
        const SizedBox(
          width: 10,
        ),
        Text('College Notification',
            style: const TextStyle(color: Colors.white70)),
        CardList(
            length: data.collegeNotification.length,
            data: data.collegeNotification),
        const SizedBox(
          width: 10,
        ),
        Text('Event Notification',
            style: const TextStyle(color: Colors.white70)),
        CardList(
            length: data.newsNotification.length, data: data.newsNotification),
        const SizedBox(
          width: 10,
        ),
      ]),
    );
  }
}

class CardList extends StatelessWidget {
  const CardList({super.key, required this.length, required this.data});

  final int length;
  final List data;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: length,
      itemBuilder: (context, index) {
        return Featured(
          padding: 10,
          height: 50,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              data[index],
              style: const TextStyle(color: Colors.white70),
            ),
          ),
        );
      },
    );
  }
}
