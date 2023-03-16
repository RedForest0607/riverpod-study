import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_study/notifiers/history.dart';

class PopHistoryWidget extends HookConsumerWidget {
  const PopHistoryWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<Event> history = ref.watch(historyProvider).history;

    return AlertDialog(
      title: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(
                MediaQuery.of(context).size.width / 50,
                MediaQuery.of(context).size.height / 50,
                0,
                MediaQuery.of(context).size.height / 50),
            child: Row(
              children: [
                Icon(Icons.timeline,
                    color: Colors.white,
                    size: MediaQuery.of(context).size.height *
                        MediaQuery.of(context).size.width *
                        0.00004),
                Padding(
                  padding: EdgeInsets.fromLTRB(
                      MediaQuery.of(context).size.width * 0.006, 0, 0, 0),
                  child: Text(
                    '히스토리',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).size.height *
                            MediaQuery.of(context).size.width *
                            0.00004,
                        height: 1.4,
                        color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            height: 1.0,
            margin: EdgeInsets.zero,
          ),
        ],
      ),
      backgroundColor: Colors.grey.shade900,
      titlePadding: EdgeInsets.zero,
      contentPadding:
          EdgeInsets.fromLTRB(0, 0, 0, MediaQuery.of(context).size.height / 80),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
        side: const BorderSide(color: Colors.white),
      ),
      content: SizedBox(
        height: MediaQuery.of(context).size.height / 1.6,
        width: MediaQuery.of(context).size.width / 1.4,
        child: SingleChildScrollView(
          child: SizedBox(
            child: Column(
              children: <Widget>[
                for (int i = history.length - 1; i > 0; i--)
                  Container(
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
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height *
                              MediaQuery.of(context).size.width *
                              0.000035,
                          color: Colors.white,
                        ),
                        children: <TextSpan>[
                          TextSpan(text: '${history[i].resourceType}'),
                          TextSpan(
                              text: 'World',
                              style:
                                  new TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 80,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
