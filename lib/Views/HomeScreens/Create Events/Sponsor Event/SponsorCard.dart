import 'package:agora/BottomNavigation.dart';
import 'package:agora/Views/HomeScreens/CreatePost/AddNewCard.dart';
import 'package:agora/constants/app_colors.dart';
import 'package:agora/constants/app_gallery.dart';
import 'package:agora/widgets/Main_widgets/AppBarCustom.dart';
import 'package:agora/widgets/Main_widgets/ElevatedButton.dart';
import 'package:agora/widgets/Main_widgets/card_number_formater.dart';
import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SponsorCard extends StatelessWidget {
  static const String routeName = 'SponsorCard';
  const SponsorCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(title: 'Add Card'),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20, top: 20),
              child: ClipRRect(
                child: Image.asset(SImages.cardImage),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                "Card Name",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20, top: 2),
              child: TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: SColors.grey.withOpacity(0.1),
                  hintText: 'Alex Benjamin',
                  hintStyle: TextStyle(
                      color: SColors.grey,
                      fontSize: 12,
                      fontWeight: FontWeight.w300),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                "Card Number",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20, top: 2),
              child: TextField(
                keyboardType: TextInputType.number,
                // maxLength: 16,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  LengthLimitingTextInputFormatter(
                      16), //used to take only 16 Digits
                  CardNumberInputFormatter(), // used to take space after every four digits
                ],
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: SColors.grey.withOpacity(0.1),
                  hintText: '1245 1356 6582 7413 ',
                  hintStyle: TextStyle(
                      color: SColors.grey,
                      fontSize: 12,
                      fontWeight: FontWeight.w300),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text(
                        "CVV",
                        style:
                        TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                      ),
                    ),
                    Padding(
                      padding:
                      const EdgeInsets.only(left: 20.0, right: 20, top: 2),
                      child: SizedBox(
                        height: 50,
                        width: 150,
                        child: TextField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            ),
                            filled: true,
                            fillColor: Colors.grey.shade100,
                            hintText: '500',
                            hintStyle: TextStyle(
                                color: SColors.grey,
                                fontSize: 12,
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "EXP",
                      style:
                      TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                    ),
                    SizedBox(
                      height: 50,
                      width: 150,
                      child: TextField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                          fillColor: SColors.grey.withOpacity(0.1),
                          hintText: '10/28',
                          hintStyle: TextStyle(
                              color: SColors.grey,
                              fontSize: 12,
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                    ),
                    SizedBox(width: 20,),
                  ],
                ),


              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 20.0,right: 20,bottom: 20),
        child: CustomElevatedButton(
          text: 'Add Card',
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder:(context)=> BottomNavigation()));
            Flushbar(
              message: "Card Added Successfully",
              duration: Duration(seconds: 2),
              flushbarPosition: FlushbarPosition.TOP,
              backgroundColor: SColors.green,
              icon: Icon(
                Icons.check,
                color: SColors.white,
              ),
              borderRadius: BorderRadius.circular(10),
            ).show(context);
          },
          color: SColors.lightBlueAccent,
        ),
      ),
    );
  }
}