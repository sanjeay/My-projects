import 'package:flutter/material.dart';

class IconCards extends StatelessWidget {
  final int index;

  const IconCards({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    List iconList = [
      ['assets/banking app/my_account_icon.png', 'My Account'],
      ['assets/banking app/eseva_icon.png', 'Load eSeva'],
      ['assets/banking app/payment_icon.png', 'Payment'],
      ['assets/banking app/transfer_icon.png', 'Fund Transfer'],
      ['assets/banking app/schedule_ion.png', 'Schedule Payment'],
      ['assets/banking app/scan_to_pay_icon.png', 'Scan To Pay']
    ];
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            iconList[index][0],
            width: 50,
          ),
          Text(
            iconList[index][1],
            textAlign: TextAlign.center,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}