import 'package:flutter/material.dart';
import 'package:authentication_frontend/ui/login.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(ProviderScope(child: const LoginApp()));
}
