import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';

class ThemeButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: () => AdaptiveTheme.of(context).setDark(),
        child: const Text('change theme'),
      ),
    );
  }
}
