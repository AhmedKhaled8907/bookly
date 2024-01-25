import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../utils/models/book_model/book_model.dart';
import 'custom_button.dart';

class PreviewButton extends StatelessWidget {
  const PreviewButton({
    super.key,
    required this.bookModel,
  });

  final BookModel bookModel;

  Future<void> _launchUrl() async {
    final Uri url = Uri.parse(bookModel.volumeInfo.previewLink!);
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    }
  }

  String getText(BookModel bookModel) {
    if (bookModel.volumeInfo.previewLink == null) {
      return 'Not Available';
    } else {
      return 'Preview';
    }
  }

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      onPressed: _launchUrl,
      fontSize: 16,
      text: getText(bookModel),
      backgroundColor: const Color(0xffEF8262),
      textColor: Colors.white,
      borderRadius: const BorderRadius.only(
        topRight: Radius.circular(16),
        bottomRight: Radius.circular(16),
      ),
    );
  }
}
