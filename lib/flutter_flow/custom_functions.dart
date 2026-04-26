import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

String? newCustomFunction() {
  final now = DateTime.now();
  final randomPart = (100000 + (now.millisecondsSinceEpoch % 900000))
      .toString(); // Gera tres número aleatório de 6 dígitos baseado no timestamp
  final accountNumber = 'Account $randomPart-1';
  return accountNumber;
}

String? newCustomFunctionDollar() {
  final now = DateTime.now();
  final randomPart = (100000 + (now.millisecondsSinceEpoch % 900000))
      .toString(); // Gera tres número aleatório de 6 dígitos baseado no timestamp
  final accountNumber = 'Account $randomPart-3';
  return accountNumber;
}

String? newCustomFunctionEuro() {
  final now = DateTime.now();
  final randomPart = (100000 + (now.millisecondsSinceEpoch % 900000))
      .toString(); // Gera tres número aleatório de 6 dígitos baseado no timestamp
  final accountNumber = 'Account $randomPart-2';
  return accountNumber;
}
