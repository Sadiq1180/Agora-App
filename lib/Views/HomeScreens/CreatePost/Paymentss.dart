import 'package:agora/constants/app_colors.dart';
import 'package:agora/constants/app_gallery.dart';
import 'package:agora/widgets/Main_widgets/AppBarCustom.dart';
import 'package:agora/widgets/Main_widgets/ElevatedButton.dart';
import 'package:agora/widgets/Main_widgets/PaymentContainer.dart';
import 'package:flutter/material.dart';
import 'AddNewCard.dart';

class Paymentss extends StatelessWidget {
  static const String routeName = 'Paymentss';
  const Paymentss({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(title: 'Payment'),
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
            title: 'Card',
            subtitle: '**** **** **** 1478',
            connectionStatus: 'Connected',
            color: SColors.primaryTransparent
          ),
          PaymentContainer(
            imagePath: SImages.googlePayLogo,
            title: 'Google Pay',
            connectionStatus: 'Connected',
          ),
          PaymentContainer(
            imagePath: SImages.applePayLogo,
            title: 'Apple Pay',
            isElevatedButton: true,
          ),
          TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed(AddNewCard.routeName);
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
            //  Navigator.of(context).pushNamed(.routeName);
          },
          color: Colors.lightBlueAccent,
        ),
      ),
    );
  }
}
