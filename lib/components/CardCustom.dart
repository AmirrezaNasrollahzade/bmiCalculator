// ignore_for_file: file_names, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class CardCustom extends StatelessWidget {
  final String titleCard;
  final IconData iconData;
  const CardCustom({required this.titleCard, required this.iconData});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.purple.shade200,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                iconData,
                size: 50,
                color: Colors.white,
              ),
              const SizedBox(height: 10),
              Text(
                titleCard,
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
