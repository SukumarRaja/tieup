import 'dart:io';
import 'package:url_launcher/url_launcher.dart';

launchInWebViewOrVC(Uri url) async {
  if (!await launchUrl(
    url,
    mode: LaunchMode.inAppWebView,
    webViewConfiguration: const WebViewConfiguration(headers: <String, String>{
      HttpHeaders.acceptHeader: "application/json",
      HttpHeaders.contentTypeHeader: "application/json"
    }),
  )) {
    throw Exception('Could not launch $url');
  }
}
