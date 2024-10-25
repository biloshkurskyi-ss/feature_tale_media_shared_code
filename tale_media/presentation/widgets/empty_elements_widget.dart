import 'package:flutter/material.dart';

class EmptyElementsWidget extends StatelessWidget {
  final String message;
  final String buttonText;

  const EmptyElementsWidget({
    super.key,
    required this.message,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(message),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text(buttonText),
          ),
        ],
      ),
    );
  }
}
