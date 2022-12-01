import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Dars extends StatefulWidget {
  const Dars({super.key});

  @override
  State<Dars> createState() => _DarsState();
}

class _DarsState extends State<Dars> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: ((context) {
                      return Dialog(
                        child: Container(
                          width: 200,
                          height: 250,
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 120, top: 36),
                                    child: Image.asset('asset/Icons.png'),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 75),
                                    child: IconButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        icon: Icon(Icons.cancel_outlined)),
                                  ),
                                ],
                              ),
                              Text(
                                'Warning!',
                                style:
                                    TextStyle(color: Colors.blue, fontSize: 24),
                              ),
                              Text(
                                'This transaction cannot be reversed. Are you sure you want to delete the template?',
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 14),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 40),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(16))),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 15, horizontal: 36.5),
                                    child: Text('Yes, I am sure'),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    }));
              },
              child: Text('Dialog'),
            ),
              ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: ((context) {
                        return AlertDialog(
                          title: Text('Tanlang'),
                          content: Text('Avatarni rasmini ozgartirish uchun'),
                          actions: [
                            ElevatedButton(
                                onPressed: (() {}),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [Icon(Icons.photo), Text('Galary')],
                                )),
                            ElevatedButton(
                                onPressed: (() {}),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [Icon(Icons.camera), Text('Camera')],
                                ))
                          ],
                        );
                      }));
                },
                child: Text('Dialog'),
              ),
              ElevatedButton(
                onPressed: () {
                  showCupertinoDialog(
                    context: context,
                    builder: (context) {
                      return CupertinoAlertDialog(
                        title: Text('Tanlang'),
                        actions: [
                          CupertinoButton(
                            child: Text('Back'),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                          CupertinoButton(
                            child: Text('Back'),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Text('Dialog'),
              ),
              
          ],
        ),
      ),
    );
  }
}
