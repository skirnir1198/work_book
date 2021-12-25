import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:work_book/lesson18/web_view_page.dart';

class Lesson18 extends StatelessWidget {
  const Lesson18({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lesson18'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: const Text("公式HP"),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                launch(
                  'https://flutter.dev',
                  forceSafariVC: false,
                  forceWebView: false,
                );
              },
            ),
            ListTile(
              title: const Text("IR情報"),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const WebViewPage(
                      title: 'webView',
                      url: 'https://flutter.dev',
                    ),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text("採用情報"),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (_) {
                    return AlertDialog(
                      content: const Text("外部サイトに移動します"),
                      actions: <Widget>[
// ボタン領域
                        TextButton(
                          child: const Text(
                            "Cancel",
                            style: TextStyle(color: Colors.grey),
                          ),
                          onPressed: () => Navigator.pop(context),
                        ),
                        TextButton(
                          child: const Text("OK"),
                          onPressed: () {
                            launch(
                              'https://flutter.dev',
                              forceSafariVC: false,
                              forceWebView: false,
                            );
                          },
                        ),
                      ],
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
      body: Container(),
    );
  }
}
