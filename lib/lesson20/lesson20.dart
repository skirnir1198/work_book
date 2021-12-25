import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Lesson20 extends StatelessWidget {
  const Lesson20({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lesson20'),
      ),
      body: Center(
        // ignore: avoid_unnecessary_containers
        child: Container(
          child: ElevatedButton(
            child: const Text('ダイアログ表示'),
            onPressed: () {
              showDialog(
                context: context,
                builder: (_) {
                  return AlertDialog(
                    title: const Text("ダイアログ"),
                    actions: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Lottie.asset(
                              'lottie/89033-star-in-hand-baby-astronaut.json',
                              height: 200),
                          TextButton(
                            child: const Text("閉じる"),
                            onPressed: () => Navigator.pop(context),
                          ),
                        ],
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
