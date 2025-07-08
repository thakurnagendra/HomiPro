import 'package:flutter/material.dart';

class Dialogs {
  static snackBar(String message, Color bgColor, Color color, context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        margin: const EdgeInsets.all(20),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        behavior: SnackBarBehavior.floating,
        duration: const Duration(seconds: 3),
        backgroundColor: bgColor,
        content: Text(
          message,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
            color: color,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
