// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Docinfo {
  final IconData icon;
  final String data;
  final String label;
  Docinfo({
    required this.icon,
    required this.data,
    required this.label,
  });
}

final docInfoList = [
  Docinfo(icon: Icons.people_alt, data: '100+', label: 'patients'),
  Docinfo(icon: Icons.local_police, data: '10+', label: 'experience'),
  Docinfo(icon: Icons.star_rate_rounded, data: '5', label: 'rating'),
  Docinfo(icon: Icons.reviews_rounded, data: '1,290', label: 'reviews'),
];
