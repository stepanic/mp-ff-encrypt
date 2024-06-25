import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';

String generateRandomEncryptionKey() {
  final random = math.Random();
  const chars = 'abcdefghijklmnopqrstuvwxyz0123456789';
  final key =
      List.generate(16, (index) => chars[random.nextInt(chars.length)]).join();
  return key;
}
