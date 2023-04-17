import 'package:flutter/cupertino.dart';
import '../../config/custom_colors.dart';

class AppNameWidget extends StatelessWidget {
  final Color? grenTitleColor;
  final double textSize;

  const AppNameWidget({
    super.key,
    this.grenTitleColor,
    this.textSize = 30,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        style: TextStyle(
          fontSize: textSize,
        ),
        children: [
          TextSpan(
              text: 'Green',
              style: TextStyle(
                color: grenTitleColor ?? CustomColors.customSwatchColor,
              )),
          TextSpan(
              text: 'grocer',
              style: TextStyle(
                color: CustomColors.customContrastColor,
              )),
        ],
      ),
    );
  }
}
