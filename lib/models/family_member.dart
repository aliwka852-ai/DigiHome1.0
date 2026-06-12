import 'package:flutter/material.dart';

class FamilyMember {
  final String name;
  final String phone;
  final Color accentColor;
  final String status; // online, offline, busy

  FamilyMember({
    required this.name,
    required this.phone,
    required this.accentColor,
    this.status = 'online',
  });
}
