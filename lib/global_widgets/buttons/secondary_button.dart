import 'package:openmarket/extensions/context_extensions.dart';
import 'package:flutter/material.dart';

class SecondaryButton extends StatelessWidget {
  final String title;
  final Function() onPressed;
  const SecondaryButton(
      {required this.title, required this.onPressed, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color.fromARGB(255, 39, 212, 183),
            Color.fromARGB(255, 0, 0, 0),
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
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.transparent),
          onPressed: onPressed,
          child: Text(
            title,
            style: context.theme.textTheme.titleMedium
                ?.copyWith(color: context.theme.colorScheme.inverseSurface),
          ),
        ),
      ),
    );
  }
}
