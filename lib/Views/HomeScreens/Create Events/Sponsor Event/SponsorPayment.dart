
import 'package:agora/Admin%20List/wigdet/payments_container.dart';
import 'package:agora/widgets/Main_widgets/AppBarCustom.dart';
import 'package:agora/widgets/Main_widgets/ElevatedButton.dart';
import 'package:flutter/material.dart';
import 'SponsorCard.dart';

class SponsorPayment extends StatelessWidget {
  static const String routeName = 'SponsorPayment';
  const SponsorPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(title: 'Payment'),
      body: PaymentContainerWidget(),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 20.0,right: 20,bottom: 10),
        child: CustomElevatedButton(
          text: 'Next',
          onPressed: (){
            Navigator.pushNamed(context, SponsorCard.routeName);
            // Navigator.of(context).push(MaterialPageRoute(builder:(context)=> SponsorCard()));
          },
          color: Colors.lightBlueAccent,
        ),
      ),
    );
  }
}