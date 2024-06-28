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

Future<String?> decryptTextFromBase64(
  String encryptedTextAsBase64,
  String encryptionKey,
) async {
  try {
    String encryptedTextEnvelope =
        utf8.decode(base64Decode(encryptedTextAsBase64));

    final key = encrypt.Key.fromUtf8(encryptionKey);
    final ivAsBase64 = encryptedTextEnvelope.substring(
        0, 12); // Salsa20 IV is 8 bytes length, base64 encoded is 12 chars long
    final iv = encrypt.IV.fromBase64(ivAsBase64);
    final encryptedTextOnlyAsBase64 = encryptedTextEnvelope.substring(12);

    final encrypter = encrypt.Encrypter(encrypt.Salsa20(key));

    final encryptedText =
        encrypt.Encrypted.fromBase64(encryptedTextOnlyAsBase64);
    final decryptedText = encrypter.decrypt(encryptedText, iv: iv);

    return decryptedText;
  } catch (e) {
    print(e);
    return null;
  }
}
