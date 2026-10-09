import 'package:flutter/material.dart';

class SocialMediaRow extends StatelessWidget {
  const SocialMediaRow({super.key});

  void _showSnackBar(BuildContext context, String platform) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Membuka $platform')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: const Icon(Icons.camera_alt), // Substitute for Instagram
          onPressed: () => _showSnackBar(context, 'Instagram'),
        ),
        IconButton(
          icon: const Icon(Icons.work), // Substitute for LinkedIn
          onPressed: () => _showSnackBar(context, 'LinkedIn'),
        ),
        IconButton(
          icon: const Icon(Icons.code), // Substitute for GitHub
          onPressed: () => _showSnackBar(context, 'GitHub'),
        ),
      ],
    );
  }
}