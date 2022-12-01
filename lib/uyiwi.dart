import 'package:flutter/material.dart';

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
      body: Column(
        children: [
          Builder(
            builder: (context) {
              return ElevatedButton(
                  onPressed: () {
                    showBottomSheet(
                      context: context,
                      builder: (context) {
                        return Container(
                          width: double.infinity,
                          height: 500,
                          color: Colors.white,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // exit and text (AppBar)
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Text(
                                        'Choose communal type',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ),
                                    Spacer(),
                                    IconButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        icon: Icon(Icons.cancel_outlined))
                                  ],
                                ),
                              ),

                              // SMART CARD
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 38, left: 20),
                                child: Text(
                                  'SMART CARD',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 14,
                                  ),
                                ),
                              ),

                              // Light Gas Water
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 20),
                                    child: Container(
                                      width: double.infinity,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(6)),
                                        color: Color(0xfff8f8f8),
                                      ),
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 14, horizontal: 18),
                                            child:
                                                Image.asset('asset/Union.png'),
                                          ),
                                          Text('Light'),
                                          Spacer(),
                                          Icon(Icons.arrow_right)
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 20),
                                    child: Container(
                                      width: double.infinity,
                                      height: 50,
                                      color: Color(0xfff8f8f8),
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 14, horizontal: 18),
                                            child:
                                                Image.asset('asset/Vector.png'),
                                          ),
                                          Text('Gas'),
                                          Spacer(),
                                          Icon(Icons.arrow_right)
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 20),
                                    child: Container(
                                      width: double.infinity,
                                      height: 50,
                                      color: Color(0xfff8f8f8),
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 14, horizontal: 18),
                                            child:
                                                Image.asset('asset/water.png'),
                                          ),
                                          Text('Water'),
                                          Spacer(),
                                          Icon(Icons.arrow_right)
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),

                              //other
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Text(
                                  'OTHER',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 20),
                                child: Container(
                                  color: Color(0xfff8f8f8),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 14, horizontal: 18),
                                        child: Image.asset('asset/Iconss.png'),
                                      ),
                                      Text('Increase balance'),
                                      Spacer(),
                                      Icon(Icons.arrow_right)
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                  child: Text('Button 1'));
            },
          ),
          Builder(
            builder: (context) {
              return ElevatedButton(
                  onPressed: () {
                    showBottomSheet(
                      context: context,
                      builder: (context) {
                        return Container(
                          width: double.infinity,
                          height: 500,
                          color: Colors.white,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 20, left: 20),
                                child: Row(
                                  children: [
                                    Icon(Icons.arrow_back_ios),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Pay with template',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ),
                                    Spacer(),
                                    IconButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        icon: Icon(Icons.close)),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, top: 20),
                                child: Text(
                                  'OTHER',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 20),
                                child: Container(
                                  width: double.infinity,
                                  height: 66,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(6)),
                                    color: Color(0xfff8f8f8),
                                  ),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 14, horizontal: 18),
                                        child: Image.asset('asset/Union.png'),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 5),
                                              child: Text('Light'),
                                            ),
                                            Text('Mastercard **** 3241')
                                          ],
                                        ),
                                      ),
                                      Spacer(),
                                      Text(
                                        '\$108.00',
                                        style: TextStyle(fontSize: 16),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 20),
                                child: Container(
                                  width: double.infinity,
                                  height: 66,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(6)),
                                    color: Color(0xfff8f8f8),
                                  ),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 14, horizontal: 18),
                                        child: Image.asset('asset/Union.png'),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 5),
                                              child: Text('Light'),
                                            ),
                                            Text('Mastercard **** 3241')
                                          ],
                                        ),
                                      ),
                                      Spacer(),
                                      Text(
                                        '\$108.00',
                                        style: TextStyle(fontSize: 16),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Spacer(),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 20, horizontal: 20),
                                child: Container(
                                  width: double.infinity,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 100, vertical: 15.5),
                                  color: Colors.blue,
                                  child: Text(
                                    'Continue without template',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              )
                            ],
                          ),
                        );
                      },
                    );
                  },
                  child: Text('button 2'));
            },
          ),
          Builder(
            builder: (context) {
              return ElevatedButton(
                  onPressed: () {
                    showBottomSheet(
                      context: context,
                      builder: (context) {
                        return Container(
                          width: double.infinity,
                          height: 500,
                          color: Colors.white,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 20, left: 20),
                                child: Row(
                                  children: [
                                    Icon(Icons.arrow_back_ios),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Pay with template',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ),
                                    Spacer(),
                                    IconButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        icon: Icon(Icons.close)),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, top: 20),
                                child: Text(
                                  'OTHER',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 20),
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.blue, width: 1.5),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(6)),
                                    color: Color(0xfff8f8f8),
                                  ),
                                  width: double.infinity,
                                  height: 66,
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 14, horizontal: 18),
                                        child: Image.asset('asset/Union.png'),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 5),
                                              child: Text('Light'),
                                            ),
                                            Text('Mastercard **** 3241')
                                          ],
                                        ),
                                      ),
                                      Spacer(),
                                      Text(
                                        '\$108.00',
                                        style: TextStyle(fontSize: 16),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 20),
                                child: Container(
                                  width: double.infinity,
                                  height: 66,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(6)),
                                    color: Color(0xfff8f8f8),
                                  ),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 14, horizontal: 18),
                                        child: Image.asset('asset/Union.png'),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 5),
                                              child: Text('Light'),
                                            ),
                                            Text('Mastercard **** 3241')
                                          ],
                                        ),
                                      ),
                                      Spacer(),
                                      Text(
                                        '\$108.00',
                                        style: TextStyle(fontSize: 16),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Spacer(),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 20, horizontal: 20),
                                child: Container(
                                  width: double.infinity,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 150, vertical: 15.5),
                                  color: Colors.blue,
                                  child: Text(
                                    'Continiun',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              )
                            ],
                          ),
                        );
                      },
                    );
                  },
                  child: Text('button 3'));
            },
          ),
        ],
      ),
    );
  }
}
