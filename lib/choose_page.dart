import 'package:flutter/material.dart';
import 'package:flutter_application_2/kamunal_model.dart';
import 'package:flutter_application_2/kamunal_model.dart';
import 'Pay.dart';
import 'kamunal_model.dart';
import 'kamunal_model.dart';

class ChoosePage extends StatelessWidget {
  ChoosePage({Key? key}) : super(key: key);

  List<SmartCards> list = [
    SmartCards(
        const Icon(
          Icons.flash_on,
          color: Colors.yellow,
        ),
        "light"),
    SmartCards(
        const Icon(
          Icons.local_fire_department,
          color: Colors.red,
        ),
        "gaz"),
    SmartCards(
        const Icon(
          Icons.water_drop,
          color: Colors.blue,
        ),
        "water")
  ];

  SmartCards other = SmartCards(const Icon(Icons.wallet), "Increase balance");

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2 + 48,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(32),
          topLeft: Radius.circular(32),
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Choose communal type"),
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.close),
              ),
            ],
          ),
          const SizedBox(
            height: 38,
          ),
          Text("smart CARDS".toUpperCase()),
          Expanded(
            child: ListView.builder(
                padding: EdgeInsets.symmetric(vertical: 16),
                itemCount: list.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    child: Container(
                      decoration: const BoxDecoration(
                          color: Color(0xffF8F8FA),
                          borderRadius: BorderRadius.all(Radius.circular(6))),
                      padding: const EdgeInsets.symmetric(
                          vertical: 13, horizontal: 15),
                      margin: EdgeInsets.only(bottom: 20),
                      child: Row(
                        children: [
                          list[index].cardIcon,
                          SizedBox(
                            width: 20,
                          ),
                          Text(list[index].title),
                          Spacer(),
                          Icon(Icons.arrow_forward_ios)
                        ],
                      ),
                    ),
                    onTap: () {
                      showModalBottomSheet(
                        backgroundColor: Colors.transparent,
                          context: context,
                          builder: (context) {
                            return PaymentPage(card: list[index],);
                          });
                    },
                  );
                }),
          ),
          Text("OTHER"),
          InkWell(
            child: Container(
              decoration: const BoxDecoration(
                  color: Color(0xffF8F8FA),
                  borderRadius: BorderRadius.all(Radius.circular(6))),
              padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 15),
              margin: EdgeInsets.only(bottom: 20),
              child: Row(
                children: [
                  other.cardIcon,
                  SizedBox(
                    width: 20,
                  ),
                  Text(other.title),
                  Spacer(),
                  Icon(Icons.arrow_forward_ios)
                ],
              ),
            ),
            onTap: () {},
          )
        ],
      ),
    );
  }
  
  static SmartCards(Icon icon, String s) {}
}
