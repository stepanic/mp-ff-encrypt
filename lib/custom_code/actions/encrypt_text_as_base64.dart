// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<String> encryptTextAsBase64(
  String plainText,
  String encryptionKey,
) async {
  final key = Digest('SHA-256').process(utf8.encode(encryptionKey));
  final iv = IV.fromLength(8);
  final encrypter = Encrypter(Salsa20(key, iv));
  final encryptedText = encrypter.encrypt(plainText);

  return encryptedText.base64;
}
