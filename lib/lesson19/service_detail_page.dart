import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:work_book/lesson19/service_class.dart';

class ServiceDetailPage extends StatelessWidget {
  const ServiceDetailPage({Key? key, required this.service}) : super(key: key);
  final Service service;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'サービス詳細',
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image(
                    fit: BoxFit.fitWidth,
                    image: AssetImage(service.imagePath),
                  ),
                ),
              ),
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
                height: 80,
                child: Text(
                  service.detail,
                  style: const TextStyle(fontSize: 12),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ));
  }
}
