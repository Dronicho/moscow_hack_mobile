import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';
import 'package:url_launcher/url_launcher.dart' as ul;

abstract class Utils {
  static void hideKeyboard() {
    if (FocusManager.instance.primaryFocus?.hasFocus ?? false) {
      FocusManager.instance.primaryFocus?.unfocus();
    }
  }

  static Future<bool> launchUrl(String? url) async {
    if (url?.isEmpty ?? true) {
      return false;
    }

    final unwrappedUrl = Uri.parse(url ?? '');

    if (await ul.canLaunchUrl(unwrappedUrl)) {
      return ul.launchUrl(unwrappedUrl);
    }

    return false;
  }

  static Future<File> downloadFile({
    required String url,
    required String fileName,
    String? accessToken,
    Map<String, dynamic>? requestBody,
  }) async {
    final response = await http.post(
      Uri.parse(url),
      headers: accessToken != null ? {'Authorization': 'Bearer $accessToken'} : null,
      body: requestBody,
    );

    final dir = (await getApplicationDocumentsDirectory()).path;
    final file = File('$dir/$fileName');
    await file.writeAsBytes(response.bodyBytes);

    return file;
  }
}
