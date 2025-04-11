import 'package:agora/widgets/AppBarCustom.dart';
import 'package:agora/widgets/PaymentContainer.dart';
import 'package:flutter/material.dart';

import '../../../widgets/ElevatedButton.dart';
import 'AddNewCard.dart';

class Paymentss extends StatelessWidget {
  const Paymentss({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(title: 'Payment'),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          PaymentContainer(
            imagePath: 'assets/images/PayPal.png',
            title: 'PayPal',
            connectionStatus: 'Connected',
          ),
          PaymentContainer(
            imagePath: 'assets/images/MasterCard.png',
            title: 'Card',
            subtitle: '**** **** **** 1478',
            connectionStatus: 'Connected',
            color: Colors.blue.shade100,
          ),
          PaymentContainer(
            imagePath: 'assets/images/Google.png',
            title: 'Google Pay',
            connectionStatus: 'Connected',
          ),
          PaymentContainer(
            imagePath: 'assets/images/Appl.png',
            title: 'Apple Pay',
            isElevatedButton: true,
          ),
          TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => AddNewCard()));
              },
              child: Text(
                "Add new card",
                style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w500,
                    fontSize: 16),
              )),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20, bottom: 20),
        child: CustomElevatedButton(
          text: 'Next',
          onPressed: () {
            // Navigator.of(context).push(MaterialPageRoute(builder:(context)=> AddNewCard()));
          },
          color: Colors.lightBlueAccent,
        ),
      ),
    );
  }
}
