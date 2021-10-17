import 'dart:async';

import 'package:flutter/material.dart';

import 'presentation/email_app.dart';

import 'di/get_it.dart' as getit;

Future<void> main() async {
  unawaited(getit.init());
  runApp(const EmailApp());
}
