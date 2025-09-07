import 'package:flutter/material.dart';

Widget clickableCardWithIcon({
  required String data,
  required IconData icon,
  required VoidCallback onTap,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 48.0),
            SizedBox(height: 8.0),
            Text(data, style: TextStyle(fontSize: 16.0)),
          ],
        ),
      ),
    ),
  );
}
