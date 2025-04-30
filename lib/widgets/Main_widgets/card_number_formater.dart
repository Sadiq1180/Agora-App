import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CardNumberInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    final newText = newValue.text.replaceAll(' ', '');

    final buffer = StringBuffer();
    for (int i = 0; i < newText.length; i++) {
      buffer.write(newText[i]);
      final isEndOfGroup = (i + 1) % 4 == 0 && i + 1 != newText.length;
      if (isEndOfGroup) buffer.write(' ');
    }
    final newSelectionIndex = buffer.length;
    return TextEditingValue(
      text: buffer.toString(),
      selection: TextSelection.collapsed(offset: newSelectionIndex),
    );
  }
}