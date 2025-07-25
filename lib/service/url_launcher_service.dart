// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLauncherService {
  static Future<void> openWhatsApp({required BuildContext context}) async {
    const String phoneNumber = '6282112222500';
    const String whatsappUrl = 'https://wa.me/$phoneNumber';
    final uri = Uri.parse(whatsappUrl);

    try {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            'Gagal membuka WhatsApp. Pastikan aplikasi sudah terpasang.',
          ),
        ),
      );
    }
  }

  static Future<void> openYouTubeLink({required BuildContext context}) async {
    // Link YouTube yang baru
    const String youtubeUrl =
        'https://www.youtube.com/watch?v=X7WaAJ6f-X0'; 
    final uri = Uri.parse(youtubeUrl);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Gagal membuka YouTube. Pastikan aplikasi terpasang.'),
        ),
      );
    }
  }
}
