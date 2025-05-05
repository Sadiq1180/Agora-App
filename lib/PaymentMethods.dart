
import 'package:agora/constants/app_colors.dart';
import 'package:agora/widgets/Main_widgets/AppBarCustom.dart';
import 'package:agora/widgets/Main_widgets/PaymentContainer.dart';
import 'package:flutter/material.dart';

class PaymentMethods extends StatelessWidget {
  const PaymentMethods({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarCustom(title: 'Payment Methods'),
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
              title: 'Master Card',
              subtitle: '**** **** **** 1478',
              connectionStatus: 'Connected',
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
                onPressed: () {},
                child: Text(
                  "Add new card",
                  style: TextStyle(
                      color: SColors.info,
                      fontWeight: FontWeight.w500,
                      fontSize: 16),
                )),
          ],
        ));
  }
}