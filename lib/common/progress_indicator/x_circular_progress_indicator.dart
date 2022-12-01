import 'package:flutter/material.dart';
import 'package:flutter_devtools/presentation/theme/colors/variations/app_colors.dart';

class XCircularProgressIndicator extends StatelessWidget {
  const XCircularProgressIndicator({
    this.size,
    this.color,
    Key? key,
  }) : super(key: key);
  final double? size;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size,
      width: size,
      child: CircularProgressIndicator(
        key: const ValueKey('CircularProgressIndicatorButton'),
        strokeWidth: 1,
        valueColor: AlwaysStoppedAnimation<Color>(color ?? colors.primary.v100),
      ),
    );
  }
}
