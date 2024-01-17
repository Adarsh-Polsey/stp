import 'package:flutter/material.dart';
import 'package:stp_p/Screens/screens.dart';
import 'package:stp_p/Widgets/widgets.dart';

class Pages extends ChangeNotifier {
// Required Variables
  Widget contentChild = const Text("Sorry!You might need to refresh");
  Widget activePage = HomeScreen();
  int pageIndex = 0;
  String title = 'Sorry!You might need to refresh';
  List<Widget> get mainPages {
    return [
      HomeScreen(),
      Featured(height: double.infinity, padding: 20, child: getExplore()),
      Featured(height: double.infinity, padding: 20, child: getInspector()),
    ];
  }

// functions
  void ChangeActive(int pageIndex, String activetitle, Widget content) {
    title = activetitle;
    contentChild = content;
    activePage = mainPages[pageIndex];
    notifyListeners();
  }

  void GetBack() {
    activePage = mainPages[0];
    notifyListeners();
  }

// Getter function
  Widget getExplore() {
    return contentChild;
  }

  Widget getInspector() {
    return InspectorContent(title: title);
  }
}
