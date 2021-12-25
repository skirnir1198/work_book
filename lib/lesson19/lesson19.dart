import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:work_book/lesson19/service_list_page.dart';

import 'service_class.dart';

class Lesson19 extends StatelessWidget {
  const Lesson19({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int listLength = 0;

    final List<Service> serviceList = [
      const Service(
        title: 'ドローン撮影',
        detail: '弊社ではドローンでの撮影を行なっています。予算等お気軽にご相談ください。',
        imagePath: 'images/demo1.jpeg',
      ),
      const Service(
        title: '動画制作事業',
        detail: '弊社では動画制作事業を行なっています。予算等お気軽にご相談ください。',
        imagePath: 'images/demo2.jpeg',
      ),
      const Service(
        title: 'WEBシステム開発',
        detail: '弊社ではWEBシステム開発事業を行なっています。予算等お気軽にご相談ください。',
        imagePath: 'images/demo3.jpeg',
      ),
      const Service(
        title: 'モバイルアプリ開発',
        detail: '弊社ではモバイルアプリ開発事業を行なっています。予算等お気軽にご相談ください。',
        imagePath: 'images/demo4.jpeg',
      ),
      const Service(
        title: 'IT研修',
        detail: '弊社ではIT研修を行なっています。予算等お気軽にご相談ください。',
        imagePath: 'images/demo1.jpeg',
      ),
      const Service(
        title: 'スクール運営',
        detail: '弊社ではスクール運営を行なっています。予算等お気軽にご相談ください。',
        imagePath: 'images/demo2.jpeg',
      ),
      const Service(
        title: 'その他',
        detail: '弊社ではその他多彩な事業を行なっています。予算等お気軽にご相談ください。',
        imagePath: 'images/demo3.jpeg',
      ),
    ];

    listLength = serviceList.length;
    if (listLength > 5) {
      listLength = 6;
    }

    Widget listViewPage() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          listLength == 0
              ? const Center(
                  child: Text('データがありません'),
                )
              : const Text(
                  'サービス内容',
                  style: TextStyle(fontSize: 25),
                ),
          SizedBox(
            height: 300,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.all(8),
              itemCount: listLength,
              itemBuilder: (context, index) {
                final service = serviceList[index];
                return index == 5
                    ? SizedBox(
                        height: 300,
                        width: 200,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Center(
                            child: TextButton(
                              child: const Text('一覧へ'),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ServiceListPage(
                                        serviceList: serviceList),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      )
                    : Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: 200,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image(
                                  fit: BoxFit.fitWidth,
                                  image: AssetImage(
                                    service.imagePath,
                                  ),
                                ),
                              ),
                              Center(
                                child: Text(
                                  service.title,
                                  style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w300),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(service.detail),
                              ),
                            ],
                          ),
                        ),
                      );
              },
            ),
          ),
        ],
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Lesson19'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: listViewPage(),
      ),
    );
  }
}
