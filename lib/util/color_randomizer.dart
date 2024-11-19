import 'dart:math';
import 'package:flutter/material.dart';

class ColorRandomizer {
  static final _random = Random();

  static const List<Color> _colors = [
    Color(0xFF1E88E5), // Bright Blue
    Color(0xFF43A047), // Bright Green
    Color(0xFFE53935), // Bright Red
    Color(0xFFFDD835), // Bright Yellow
    Color(0xFFD81B60), // Bright Pink
    Color(0xFF00ACC1), // Bright Teal
    Color(0xFF3949AB), // Bright Indigo
    Color(0xFFF57C00), // Bright Orange
    Color(0xFF8E24AA), // Bright Purple
    Color(0xFF6D4C41), // Warm Brown
    Color(0xFF039BE5), // Lighter Blue
    Color(0xFFFFB300), // Amber
  ];

  static Color getRandomColor() {
    return _colors[_random.nextInt(_colors.length)];
  }
}
