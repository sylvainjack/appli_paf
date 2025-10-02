import 'package:flutter/material.dart';

enum Modalite { presentiel, visio, autonomie }
enum Device {mobile, desktop, tablet, inconnu}

class Environment {
  static const String appwriteProjectId = '68d80b0d00062d3f47ed';
  static const String appwriteProjectName = 'PAF';
  static const String appwritePublicEndpoint = 'https://fra.cloud.appwrite.io/v1';
}