import 'package:flutter/material.dart';

class InfoMessageWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final String buttonText;
  final VoidCallback onButtonPressed;
  final String? browseTextButton;
  final VoidCallback? onBrowseButtonPressed;
  final String? additionalButtonText;
  final VoidCallback? onAdditionalButtonPressed;
  final String? imagePath;
  final TextStyle? titleStyle;
  final TextStyle? subtitleStyle;
  final ButtonStyle? buttonStyle;

  const InfoMessageWidget({
    super.key,
    required this.title,
    required this.subtitle,
    required this.buttonText,
    required this.onButtonPressed,
    this.browseTextButton,
    this.onBrowseButtonPressed,
    this.additionalButtonText,
    this.onAdditionalButtonPressed,
    this.imagePath,
    this.titleStyle,
    this.subtitleStyle,
    this.buttonStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (imagePath != null)
            ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Image.asset(
                imagePath!,
                fit: BoxFit.cover,
                width: 300,
              height: 300,
              ),
            ),
          if (imagePath != null) const SizedBox(height: 20),
          Text(
            title,
            style: titleStyle ?? const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            subtitle,
            style: subtitleStyle ?? const TextStyle(fontSize: 16),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: onButtonPressed,
            style: buttonStyle,
            child: Text(buttonText),
          ),
          if (browseTextButton != null && onBrowseButtonPressed != null)
            Column(
              children: [
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: onBrowseButtonPressed,
                  style: buttonStyle,
                  child: Text(browseTextButton!),
                ),
              ],
            ),
          if (additionalButtonText != null && onAdditionalButtonPressed != null)
            Column(
              children: [
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: onAdditionalButtonPressed,
                  style: buttonStyle,
                  child: Text(additionalButtonText!),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
