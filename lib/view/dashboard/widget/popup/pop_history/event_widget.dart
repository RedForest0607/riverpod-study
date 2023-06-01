import 'package:flutter/material.dart';
import 'package:riverpod_study/common/enum/counter_enum.dart';
import 'package:riverpod_study/model/event.dart';
import 'package:riverpod_study/view/history/history_screen.dart';

class EventWidget extends StatelessWidget {
  const EventWidget({super.key, required this.event});

  final Event event;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(
          MediaQuery.of(context).size.width / 100,
          MediaQuery.of(context).size.height / 80,
          MediaQuery.of(context).size.width / 100,
          0),
      padding: EdgeInsets.fromLTRB(
          MediaQuery.of(context).size.width / 50,
          MediaQuery.of(context).size.height / 100,
          MediaQuery.of(context).size.width / 50,
          MediaQuery.of(context).size.height / 100),
      decoration: BoxDecoration(
        color: Colors.grey.shade900,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 1,
          color: Colors.white,
        ),
      ),
      child: ElevatedButton(
        onPressed: () => {
          Navigator.pushNamed(context, HistoryScreen.routeName,
              arguments: event),
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        child: Row(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.height *
                  MediaQuery.of(context).size.width *
                  0.0002,
              child: Row(
                children: [
                  Icon(
                    CounterEnum.getIcon(event.resourceType),
                    color: CounterEnum.getColor(event.resourceType),
                    size: MediaQuery.of(context).size.height *
                        MediaQuery.of(context).size.width *
                        0.00004,
                  ),
                  Text(CounterEnum.getType(event.resourceType),
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height *
                              MediaQuery.of(context).size.width *
                              0.000035,
                          color: Colors.white)),
                ],
              ),
            ),
            SizedBox(
              child: Text(
                  '${event.eventValue > 0 ? '+' : ''}${event.eventValue}',
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height *
                          MediaQuery.of(context).size.width *
                          0.000035,
                      color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
