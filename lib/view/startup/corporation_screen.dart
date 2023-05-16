import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_study/model/expansion.dart';
import 'dart:convert';

class CorporationScreen extends HookConsumerWidget {
  CorporationScreen({super.key});

  static String routeName = "/corporation";

  final jsonDataProvider = FutureProvider<Expansion>((ref) async {
    final jsonString = json.decode(
      await rootBundle.loadString("resources/json/corporation_list.json"),
    ) as Map<String, Object?>;

    return Expansion.fromJson(jsonString);
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final jsonData = ref.watch(jsonDataProvider);

    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: PreferredSize(
        preferredSize:
            Size.fromHeight(MediaQuery.of(context).size.height * 0.05),
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
        ),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          child: Column(
            children: [
              // jsonData.when(
              //   loading: () => const Text("loading..."),
              //   error: (err, stack) => Text("Error: $err"),
              //   data: (jsonData) {
              //     // TODO: hadle async json data
              //     for (int i = 0; i < 8; i++) {
              //       SizedBox(
              //         height: MediaQuery.of(context).size.height / 80,
              //       );
              //     }
              //   },
              // )
            ],
          ),
        ),
      ),
    );
  }
}
