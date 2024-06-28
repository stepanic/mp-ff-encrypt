import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _encryptionKey = '';
  String get encryptionKey => _encryptionKey;
  set encryptionKey(String value) {
    _encryptionKey = value;
  }

  String _encryptedText = '';
  String get encryptedText => _encryptedText;
  set encryptedText(String value) {
    _encryptedText = value;
  }
}
