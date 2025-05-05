import 'package:agora/constants/app_colors.dart';
import 'package:flutter/material.dart';

class Switch extends StatefulWidget {
  final bool value;
  final ValueChanged<bool> onChanged;
  final Color activeColor;
  final Color inactiveThumbColor;
  final Color inactiveTrackColor;

  const Switch({
    super.key,
    required this.value,
    required this.onChanged,
    this.activeColor = SColors.info,
    this.inactiveThumbColor = SColors.grey,
    this.inactiveTrackColor = Colors.black12,
  });

  @override
  _CustomSwitchState createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<Switch> {
  late bool isSwitched;

  @override
  void initState() {
    super.initState();
    isSwitched = widget.value;
  }

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: isSwitched,
      onChanged: (value) {
        setState(() {
          isSwitched = value;
        });
        widget.onChanged(value);
      },
      activeColor: widget.activeColor,
      inactiveThumbColor: widget.inactiveThumbColor,
      inactiveTrackColor: widget.inactiveTrackColor,
    );
  }
}
