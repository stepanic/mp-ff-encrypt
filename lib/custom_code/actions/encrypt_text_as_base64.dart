// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:encrypt/encrypt.dart' as encrypt;
import 'dart:convert';

Future<String> encryptTextAsBase64(
  String plainText,
  String encryptionKey,
) async {
  final key = encrypt.Key.fromUtf8(encryptionKey);
  final iv = encrypt.IV.fromLength(8);

  final encrypter = encrypt.Encrypter(encrypt.Salsa20(key));
  final encryptedText = encrypter.encrypt(plainText, iv: iv);
  final encryptedWithIV = '${iv.base64}${encryptedText.base64}';

  final encryptedEnvelopeIVAndText = base64Encode(utf8.encode(encryptedWithIV));

  return encryptedEnvelopeIVAndText;
}
