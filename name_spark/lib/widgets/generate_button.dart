import 'package:flutter/material.dart';

class GenerateButton extends StatelessWidget {
  const GenerateButton({super.key, required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: const Text('Generate Name'),
    );
  }
}
