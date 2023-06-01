import 'package:flutter/material.dart';
import 'package:riverpod_study/model/event.dart';
import 'package:riverpod_study/service/event_service.dart';
import 'package:riverpod_study/view/dashboard/widget/popup/pop_history/event_widget.dart';

class PopHistoryWidget extends StatelessWidget {
  const PopHistoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        child: FutureBuilder<List<Event>>(
            future: EventService.retrieveEventList(),
            builder: (context, AsyncSnapshot<List<Event>> snapshot) {
              if (snapshot.hasData) {
                return Column(
                  children: List.generate(
                    snapshot.data!.length,
                    (index) => EventWidget(
                      event: snapshot.data![index],
                    ),
                  ),
                );
              } else if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}');
              } else {
                return const CircularProgressIndicator();
              }
            }),
      ),
    );
  }
}
