
import 'package:flutter/material.dart';

import 'Res/Account top card.dart';
import 'Res/Icons.dart';
void main(){
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: BankingHomeScreen(),));
}

class BankingHomeScreen extends StatelessWidget {
  static String id = 'banking_home_screen';

  const BankingHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.shade900,
        elevation: 0,
        leading: const Icon(Icons.menu),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.qr_code,
              size: 30,
            ),
          )
        ],
        title: RichText(
          text: const TextSpan(
              text: 'Welcome!',
              style: TextStyle(fontSize: 20),
              children: [TextSpan(text: ' '), TextSpan(text: 'MAUSAM')]),
        ),
        centerTitle: true,
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate.fixed(
              [
                const AccountTopcard(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/banking app/Banking app logo.png',
                        width: 40,
                      ),
                      const SizedBox(width: 15),
                      const Text(
                        'WOULD YOU LIKE TO?',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                GridView.builder(
                  padding: const EdgeInsets.all(15),
                  itemCount: 6,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) => IconCards(index: index),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/banking app/Banking app logo.png',
                        width: 40,
                      ),
                      const SizedBox(width: 15),
                      const Text(
                        'LAST TRANSACTIONS',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                ListView.separated(
                    padding: const EdgeInsets.all(15),
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Container(
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 10, offset: Offset(10, 10))
                              ]),
                          child: Row(
                            children: [
                              Container(
                                width: 15,
                                height: 100,
                                color: Colors.red.shade900,
                              ),
                              const SizedBox(width: 15),
                              Column(
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'CWDR/ \n974884/9874513365478965',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15),
                                  ),
                                  SizedBox(height: 10),
                                  Text('10-06-2019')
                                ],
                              ),
                              const Spacer(),
                              const Padding(
                                padding: EdgeInsets.only(right: 10),
                                child: Text(
                                  'INR. 10,000.00',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    separatorBuilder: (context, index) => const SizedBox(
                      height: 10,
                    ),
                    itemCount: 5)
              ],
            ),
          ),
        ],
      ),
    );
  }
}