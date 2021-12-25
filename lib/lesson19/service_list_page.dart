import 'package:flutter/material.dart';
import 'package:work_book/lesson19/service_class.dart';
import 'package:work_book/lesson19/service_detail_page.dart';

class ServiceListPage extends StatelessWidget {
  const ServiceListPage({
    Key? key,
    required this.serviceList,
  }) : super(key: key);
  final List<Service> serviceList;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'サービス内容一覧',
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: serviceList.length,
        itemBuilder: (context, index) {
          final service = serviceList[index];
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ServiceDetailPage(service: service),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 12, bottom: 8),
              child: SizedBox(
                width: 160,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image(
                          fit: BoxFit.fitWidth,
                          image: AssetImage(service.imagePath),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: SizedBox(
                        width: 200,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 4),
                              child: Text(
                                service.title,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(
                              child: Text(
                                service.detail,
                                style: TextStyle(fontSize: 12),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
