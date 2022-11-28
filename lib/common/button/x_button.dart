import 'package:flutter/material.dart';
import 'package:flutter_devtools/common/progress_indicator/x_circular_progress_indicator.dart';
import 'package:flutter_devtools/presentation/theme/colors/variations/app_colors.dart';

part 'x_button_state.dart';

class XButton extends StatelessWidget {
  const XButton({
    required this.child,
    required this.onPressed,
    this.state = XButtonState.ENABLED,
    Key? key,
  }) : super(key: key);

  final Widget child;
  final XButtonState state;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: state.isDisabled
          ? null
          : () {
              if (!state.isLoading) {
                onPressed();
              }
            },
      child: Stack(
        alignment: Alignment.center,
        children: [
          if (state.isLoading)
            XCircularProgressIndicator(
              size: 10,
              color: pureColors.neutral.v0,
            ),
          Visibility(
            visible: !state.isLoading,
            maintainSize: true,
            maintainAnimation: true,
            maintainState: true,
            child: child,
          ),
        ],
      ),
    );
  }
}
