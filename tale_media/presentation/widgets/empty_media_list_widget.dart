import 'package:fairy_tales_world/features/l10n/app_localizations.dart';
import 'package:fairy_tales_world/helpers/assets.dart';
import 'package:flutter/material.dart';

class EmptyMediaListWidget extends StatelessWidget {
  final String message;
  final VoidCallback onCheckLibrary;

  const EmptyMediaListWidget({
    super.key,
    required this.message,
    required this.onCheckLibrary,
  });

  static const double _padding = 16.0;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16.0),
            child: Image.asset(
              AssetImages.unavailableTaleImage,
              fit: BoxFit.cover,
              width: 300,
              height: 300,
              semanticLabel: l10n.unavailableImageAltText,
            ),
          ),
          const SizedBox(height: _padding),
          Padding(
            padding: const EdgeInsets.all(_padding),
            child: Text(
              message,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontSize: 16,
                color: Colors.grey[800],
              ),
            ),
          ),
          const SizedBox(height: _padding),
          ElevatedButton(
            onPressed: onCheckLibrary,
            child: Text(l10n.checkTaleLibraryButton),
          ),
        ],
      ),
    );
  }
}
