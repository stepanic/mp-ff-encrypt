// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:encrypt/encrypt.dart' as encrypt;

Future<String?> decryptTextFromBase64(
  String encryptedTextAsBase64,
  String encryptionKey,
) async {
  // Add your function code here!

  // Convert the base64 encoded key and the encrypted text
  final key = encrypt.Key.fromBase64(encryptionKey);
  final iv = encrypt.IV.fromLength(8);
  final encrypter = encrypt.Encrypter(encrypt.Salsa20(key));

  // Decrypt the text
  final encryptedText = encrypt.Encrypted.fromBase64(encryptedTextAsBase64);
  final decryptedText = encrypter.decrypt(encryptedText, iv: iv);

  return decryptedText;
}
