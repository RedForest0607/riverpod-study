import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_study/common/db_helper.dart';
import 'package:riverpod_study/common/routes.dart';
import 'package:riverpod_study/model/event.dart';
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
    return FutureBuilder<List<Event>>(
      future: EventService.selectLastEvent(),
      builder: (BuildContext context, AsyncSnapshot<List<Event>> snapshot) {
        if (snapshot.hasData) {
          Future.delayed(Duration.zero, () {
            ref.read(eventProvider.notifier).replace(snapshot.data!.first);
          });
          return MaterialApp(
            title: 'Terraforming Dashboard',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(primaryColor: Colors.yellow.shade900),
            home: snapshot.data!.isEmpty
                ? const RuleScreen()
                : const DashboardScreen(),
            routes: routes,
          );
        } else {
          return MaterialApp(
            title: 'Terraforming Dashboard',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(primaryColor: Colors.yellow.shade900),
            home: const RuleScreen(),
            routes: routes,
          );
        }
      },
    );
  }
}
