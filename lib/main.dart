import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_study/screen/dashboard/dashboard_screen.dart';

void main() {
  runApp(const ProviderScope(child: TerraformingDashboard()));
}

class TerraformingDashboard extends StatelessWidget {
  const TerraformingDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Terraforming Dashboard',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.yellow.shade900),
      home: const DashboardScreen(),
    );
  }
}
