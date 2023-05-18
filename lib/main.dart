import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_study/common/db_helper.dart';
import 'package:riverpod_study/common/routes.dart';
import 'package:riverpod_study/view/dashboard/dashboard_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  DBHelper.instance;
  runApp(const ProviderScope(child: TerraformingDashboard()));
}

class TerraformingDashboard extends StatelessWidget {
  const TerraformingDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    DBHelper().database;
    return MaterialApp(
      title: 'Terraforming Dashboard',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.yellow.shade900),
      home: const DashboardScreen(),
      routes: routes,
    );
  }
}
