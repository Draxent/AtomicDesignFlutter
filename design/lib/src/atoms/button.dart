import 'package:flutter/material.dart';

import '../core/core.dart';

enum ButtonColor {
  blue,
  orange,
}

class Button extends StatefulWidget {
  const Button({
    required this.text,
    required this.onPressed,
    this.color = ButtonColor.orange,
    super.key,
  });

  final String text;
  final VoidCallback onPressed;
  final ButtonColor color;

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  bool isHover = false;

  void _setHover(bool val) => setState(() => isHover = val);

  Image get _buttonBg {
    switch (widget.color) {
      case ButtonColor.orange:
        return isHover ? Images.buttonBg1Hover : Images.buttonBg1;
      case ButtonColor.blue:
        return isHover ? Images.buttonBg2Hover : Images.buttonBg2;
    }
  }

  TextStyle get _textStyle {
    switch (widget.color) {
      case ButtonColor.orange:
        return context.buttonTextStyle;
      case ButtonColor.blue:
        return context.buttonTextStyle.copyWith(color: AppColors.white);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => _setHover(true),
      onExit: (_) => _setHover(false),
      child: SizedBox(
        width: Images.buttonSize.width,
        height: Images.buttonSize.height,
        child: Stack(
          children: [
            _buttonBg,
            Positioned.fill(
              child: TextButton(
                style: TextButton.styleFrom(
                  shape: const RoundedRectangleBorder(),
                ),
                onPressed: widget.onPressed,
                child: Text(
                  widget.text,
                  style: _textStyle,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
