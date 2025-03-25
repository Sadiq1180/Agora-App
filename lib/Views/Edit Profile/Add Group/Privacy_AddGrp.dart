import 'package:flutter/material.dart';

import '../../../widgets/AppBarCustom.dart';

class Privacy_AddGrp extends StatefulWidget {
  const Privacy_AddGrp({super.key});

  @override
  State<Privacy_AddGrp> createState() => _Privacy_AddGrpState();
}

class _Privacy_AddGrpState extends State<Privacy_AddGrp> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBarCustom(title: ''),
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

        ],
      )
    );
  }
}
