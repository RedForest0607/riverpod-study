import 'package:flutter/widgets.dart';
import 'package:riverpod_study/screen/dashboard/dashboard_screen.dart';
import 'package:riverpod_study/screen/history/history_screen.dart';
import 'package:riverpod_study/screen/startup/rule_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  DashboardScreen.routeName: (context) => const DashboardScreen(),
  HistoryScreen.routeName: (context) => const HistoryScreen(),
  RuleScreen.routeName: (context) => const RuleScreen(),
  //CorporationScreen.routeName: (context) => const CorporationScreen()
};
