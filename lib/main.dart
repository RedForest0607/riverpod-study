import 'dart:html';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_study/common/db_helper.dart';
import 'package:riverpod_study/common/routes.dart';
import 'package:riverpod_study/provider/event_provider.dart';
import 'package:riverpod_study/service/event_service.dart';
import 'package:riverpod_study/view/dashboard/dashboard_screen.dart';
import 'package:riverpod_study/view/startup/rule_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  DBHelper.instance;
  runApp(const ProviderScope(child: TerraformingDashboard()));
}

class TerraformingDashboard extends HookConsumerWidget {
  const TerraformingDashboard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Future<int> eventCount = EventService.selectEventCount();
    return MaterialApp(
      title: 'Terraforming Dashboard',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.yellow.shade900),
      home: eventCount.toString() == '0'
          ? const RuleScreen()
          : const DashboardScreen(),
      routes: routes,
    );
  }
}
