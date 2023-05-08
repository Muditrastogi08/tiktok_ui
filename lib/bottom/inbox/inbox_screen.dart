import 'dart:math';

import 'package:flutter/material.dart';

class InboxScreen extends StatelessWidget {
  const InboxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: const [
            Padding(
              padding: EdgeInsets.only(left: 120),
              child: Text(
                'All activity',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Icon(
              Icons.arrow_drop_down,
              color: Colors.black,
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Transform.rotate(
              angle: 180 * pi / 100,
              child: const Icon(
                Icons.send,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.add_comment_outlined,
              color: Colors.grey.shade400,
              size: 80,
            ),
            const Text(
              'Notifications are not available',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Notifications about your account will appear here",
              style: TextStyle(color: Colors.grey.shade400),
            )
          ],
        ),
      ),
    );
  }
}
