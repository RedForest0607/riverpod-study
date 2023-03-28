import 'dart:ui';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_study/notifiers/resource.dart';

class NumpadWidget extends HookConsumerWidget {
  const NumpadWidget({super.key, required this.id});

  final String id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Resource resource = ref.watch(resourceProvider);

    String modifedValue = resource.getValue('${id}Yield').toString();

    return AlertDialog(
      backgroundColor: Colors.transparent,
      title: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(
                MediaQuery.of(context).size.width / 25,
                MediaQuery.of(context).size.height / 50,
                MediaQuery.of(context).size.height / 50,
                MediaQuery.of(context).size.height / 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(FontAwesomeIcons.calculator,
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
      content: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              gradient: const LinearGradient(colors: [Colors.white60, Colors.white30]),
              color: Colors.white.withOpacity(0.3),
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 2, color: Colors.white30),
            ),
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    width: 260,
                    height: 80,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(colors: [Colors.white30, Colors.white60]),
                      color: Colors.white.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 1, color: Colors.white60),
                    ),
                    alignment: Alignment.bottomRight,
                    child: Consumer(
                      builder: (context, watch, _) {
                        return Text(
                          modifedValue,
                          style: const TextStyle(fontSize: 36, color: Colors.white70),
                        );
                      },
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildNumberButton('7', context),
                    _buildNumberButton('8', context),
                    _buildNumberButton('9', context),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildNumberButton('4', context),
                    _buildNumberButton('5', context),
                    _buildNumberButton('6', context),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildNumberButton('1', context),
                    _buildNumberButton('2', context),
                    _buildNumberButton('3', context),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const SizedBox(
                      width: 80,
                      height: 80,
                    ),
                    _buildNumberButton('0', context),
                    _buildBackspaceButton(context),
                  ],
                ),
                _buildConfirmButton(context)
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildNumberButton(String number, BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      child: SizedBox(
        width: 80,
        height: 80,
        child: ElevatedButton(
          onPressed: () =>{
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.grey.shade900
          ),
          child: Text(
            number,
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }

  Widget _buildConfirmButton(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      child: SizedBox(
        width: 260,
        height: 80,
        child: ElevatedButton(
          onPressed: () =>{

          },
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.grey.shade800
          ),
          child: const Text(
            'confirm',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }

  Widget _buildCancelButton(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      child: SizedBox(
        width: 260,
        height: 80,
        child: ElevatedButton(
          onPressed: () =>{

          },
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red.shade900
          ),
          child: const Text(
            'cancel',
            style: TextStyle(
              fontSize: 24,
              color: Colors.white
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildBackspaceButton(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      child: SizedBox(
        width: 80,
        height: 80,
        child: ElevatedButton(
          onPressed: () {

          },
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.grey.shade800
          ),
          child: Icon(Icons.backspace),
        ),
      ),
    );
  }
}