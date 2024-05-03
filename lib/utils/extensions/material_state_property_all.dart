import 'package:flutter/material.dart';

extension MaterialStateProperty<T> on T {
  MaterialStatePropertyAll<T> get toMspAll => MaterialStatePropertyAll(this);
}
