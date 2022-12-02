import 'package:flutter/material.dart';
import 'package:flutter_application_2/choose_page.dart';

class HomeWork extends StatefulWidget {
  const HomeWork({super.key});

  @override
  State<HomeWork> createState() => _HomeWorkState();
}

class _HomeWorkState extends State<HomeWork> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffb3b3b3),
        appBar: AppBar(),
        body: Column(children: [
          Builder(builder: (context) {
            return ElevatedButton(
              onPressed: () {
                showBottomSheet(
                    context: context,
                    builder: (context) {
                      return ChoosePage();
                    });
              },
              child: Text('button 1'),
            );
          })
        ]));
  }
}
