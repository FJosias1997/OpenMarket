import 'package:comment_api/extensions/context_extensions.dart';
import 'package:flutter/material.dart';

class SecondaryButton extends StatelessWidget {
  final String title;
  final Function() onPressed;
  const SecondaryButton(
      {required this.title, required this.onPressed, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: context.theme.colorScheme.tertiary,
        ),
        onPressed: onPressed,
        child: Text(
          title,
          style: context.theme.textTheme.titleMedium?.copyWith(
            color: context.theme.colorScheme.onTertiary,
          ),
        ),
      ),
    );
  }
}
