import 'package:flutter/widgets.dart';
import 'package:riverpod_study/view/dashboard/dashboard_screen.dart';
import 'package:riverpod_study/view/history/history_screen.dart';
import 'package:riverpod_study/view/startup/rule_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  RuleScreen.routeName: (context) => const RuleScreen(),
  DashboardScreen.routeName: (context) => const DashboardScreen(),
  HistoryScreen.routeName: (context) => const HistoryScreen(),
  RuleScreen.routeName: (context) => const RuleScreen(),
  //CorporationScreen.routeName: (context) => const CorporationScreen()
};
