import 'package:design/src/core/core.dart';
import 'package:flutter/material.dart';

import '../atoms/atoms.dart';

class AppForm extends StatelessWidget {
  AppForm({
    required this.inputs,
    required this.submitText,
    this.msgInput,
    super.key,
  }) : assert(inputs.length.isEven);

  final List<Input> inputs;
  final String submitText;
  final Input? msgInput;

  static const width = 758.0;

  @override
  Widget build(BuildContext context) {
    final rows = <Widget>[];
    for (int i = 0; i < inputs.length; i += 2) {
      if (i > 0) {
        rows.add(Space.vL);
      }
      rows.add(_FormRow(
        input1: inputs[i],
        input2: inputs[i + 1],
      ));
    }
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: SizedBox(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ...rows,
            Space.vL,
            if (msgInput != null) msgInput!,
            Space.vL,
            Button(text: submitText, onPressed: () {}),
          ],
        ),
      ),
    );
  }
}

class _FormRow extends StatelessWidget {
  const _FormRow({
    required this.input1,
    required this.input2,
  });

  final Input input1;
  final Input input2;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: input1),
        Space.hL,
        Expanded(child: input2),
      ],
    );
  }
}
