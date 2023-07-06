import 'package:flutter/material.dart';
import 'package:tefoma/model/event.dart';
import 'package:tefoma/service/event_service.dart';
import 'package:tefoma/view/dashboard/widget/popup/pop_history/event_widget.dart';

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
                    snapshot.data!.isNotEmpty ? snapshot.data!.length - 1 : 0,
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
