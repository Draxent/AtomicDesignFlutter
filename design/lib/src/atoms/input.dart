import 'package:flutter/material.dart';

import '../core/core.dart';

class Input extends StatelessWidget {
  const Input({
    required this.hintText,
    this.isRequired = true,
    this.numLines = 1,
    this.onSaved,
    super.key,
  });

  final String hintText;
  final bool isRequired;
  final int numLines;
  final FormFieldSetter<String>? onSaved;

  static const _requiredSymbol = '*';

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hintText + (isRequired ? _requiredSymbol : ''),
        hintStyle: context.inputTextStyle,
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.inputDecorationBorder),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.white),
        ),
      ),
      style: context.inputTextStyle,
      minLines: numLines,
      maxLines: numLines,
      onSaved: onSaved,
    );
  }
}
