import 'package:articles/Core/utils/app_colors.dart';
import 'package:articles/Core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> launch(context, String urlBook) async {
     final Uri url = Uri.parse(urlBook);
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.red,
          content: Text('Could not launch', style: AppStyles.textNormal14.copyWith(color: AppColors.white),),
        ),
      );
    }
  }