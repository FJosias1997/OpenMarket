import 'package:openmarket/extensions/context_extensions.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String title;
  final Function() onPressed;
  const PrimaryButton({required this.title, required this.onPressed, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color.fromARGB(255, 17, 176, 166),
            Color.fromARGB(255, 20, 81, 71),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(40),
        boxShadow: [
          BoxShadow(
            color:
                const Color.fromARGB(255, 17, 176, 166).withValues(alpha: .4),
            blurRadius: 20,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          title,
          style: context.theme.textTheme.titleMedium?.copyWith(
            color: context.theme.colorScheme.inverseSurface,
          ),
        ),
      ),
    );
  }
}
