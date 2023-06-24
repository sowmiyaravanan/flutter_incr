import  'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart ';
import 'package:flutter_riverpod/flutter_riverpod.dart';



import 'counterWidget.dart';

void main() {
  runApp(ProviderScope(child:MaterialApp(home: CounterWidget())));
}
