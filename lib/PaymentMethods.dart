
import 'package:agora/constants/app_colors.dart';
import 'package:agora/constants/app_gallery.dart';
import 'package:agora/widgets/Main_widgets/AppBarCustom.dart';
import 'package:agora/widgets/Main_widgets/PaymentContainer.dart';
import 'package:flutter/material.dart';

class PaymentMethods extends StatelessWidget {
  static const String routeName = 'PaymentMethods';
  const PaymentMethods({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarCustom(title: 'Payment Methods'),
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            PaymentContainer(
              imagePath: SImages.payPalLogo,
              title: 'PayPal',
              connectionStatus: 'Connected',
            ),
            PaymentContainer(
              imagePath: SImages.masterCardLogo,
              title: 'Master Card',
              subtitle: '**** **** **** 1478',
              connectionStatus: 'Connected',
            ),
            PaymentContainer(
              imagePath: SImages.googleLogo,
              title: 'Google Pay',
              connectionStatus: 'Connected',
            ),
            PaymentContainer(
              imagePath: SImages.appleLogo,
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