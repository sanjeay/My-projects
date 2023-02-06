import 'package:flutter/material.dart';

class ShowBalance extends StatefulWidget {
  @override
  State<ShowBalance> createState() => _ShowBalanceState();
}

class _ShowBalanceState extends State<ShowBalance> {
  bool obscureBalance = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'INR.',
          style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20,
              color: Colors.red.shade900),
        ),
        const SizedBox(width: 10),
        obscureBalance
            ? Text(
          '1,00,999.00',
          style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 18,
              color: Colors.red.shade900),
        )
            : Text('* * * * * * * * * '),
        const SizedBox(width: 10),
        GestureDetector(
          onTap: () {
            setState(() {
              obscureBalance = !obscureBalance;
              print(obscureBalance.toString());
            });
          },
          child: Icon(
            obscureBalance ? Icons.visibility : Icons.visibility_off,
            color: Colors.lightBlue.shade200,
          ),
        )
      ],
    );
  }
}