import 'package:flutter/material.dart';


class Loading extends StatelessWidget {
  final bool isLoading;
  final bool showBg;

  const Loading({super.key, required this.isLoading, this.showBg = false});

  @override
  Widget build(BuildContext context) => Visibility(
    visible: isLoading,
    child: AbsorbPointer(
      absorbing: isLoading,
      child: ColoredBox(
        color: showBg ? Colors.red.withOpacity(0.2) : Colors.transparent,
        child: const Center(
          child: CircularProgressIndicator(),
        ),
      ),
    ),
  );
}
