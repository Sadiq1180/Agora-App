import 'package:agora/constants/app_gallery.dart';
import 'package:agora/widgets/Main_widgets/PaymentContainer.dart';
import 'package:flutter/material.dart';

class PaymentContainerWidget extends StatelessWidget {
  const PaymentContainerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
            onPressed: () {},
            child: Text(
              "Add new card",
              style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.w500,
                  fontSize: 16),
            )),
      ],
    );
  }
}