import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_study/provider/event_provider.dart';

class NewGameButtonWidget extends HookConsumerWidget {
  const NewGameButtonWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TextButton(
      onPressed: () => showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            content: const Text('새로운 모험을 시작하시겠습니까?'),
            backgroundColor: Colors.grey.shade900,
            contentTextStyle: const TextStyle(color: Colors.white),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.pop(context, 'Cancel'),
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.resolveWith(
                    (states) {
                      return Colors.grey.shade700;
                    },
                  ),
                ),
                child: Text(
                  '취소',
                  style: TextStyle(color: Colors.yellow.shade900),
                ),
              ),
              TextButton(
                onPressed: () => {
                  ref.read(eventProvider.notifier).reset(),
                  Navigator.pop(context, 'OK'),
                },
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.resolveWith((states) {
                    return Colors.grey.shade700;
                  }),
                ),
                child: Text(
                  '확인',
                  style: TextStyle(color: Colors.yellow.shade900),
                ),
              ),
            ],
          );
        },
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith((states) {
          return Colors.grey.shade800;
        }),
        overlayColor: MaterialStateProperty.resolveWith((states) {
          return Colors.grey.shade700;
        }),
        padding: MaterialStateProperty.resolveWith((states) {
          return EdgeInsets.zero;
        }),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.restart_alt,
              color: Colors.white,
              size: MediaQuery.of(context).size.height *
                  MediaQuery.of(context).size.width *
                  0.000035),
          Padding(
            padding: EdgeInsets.fromLTRB(
                MediaQuery.of(context).size.width * 0.005, 0, 0, 0),
            child: Text(
              '새 게임',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  height: 1.5,
                  fontSize: MediaQuery.of(context).size.height *
                      MediaQuery.of(context).size.width *
                      0.00003),
            ),
          ),
        ],
      ),
    );
  }
}
