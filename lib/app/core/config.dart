import 'package:flutter/material.dart';

enum Flavor {
  development,
  production,
}

class Config {
  static Flavor appFlavor = Flavor.development;

  static String get helloMessage {
    switch (appFlavor) {
      case Flavor.production:
        return 'Users version';
      case Flavor.development:
      default:
        return 'Developers version';
    }
  }

  static String get baseUrl {
    switch (appFlavor) {
      case Flavor.production:
        return 'https://my-json-server.typicode.com/adamsmaka/json-demo';
      case Flavor.development:
        return 'https://my-json-server.typicode.com/adamsmaka/json-demo';
    }
  }

  static bool get debugShowCheckedModeBanner {
    switch (appFlavor) {
      case Flavor.production:
        return false;
      case Flavor.development:
        return true;
    }
  }

  static Icon get helloIcon {
    switch (appFlavor) {
      case Flavor.production:
        return const Icon(Icons.new_releases);
      case Flavor.development:
      default:
        return const Icon(Icons.developer_mode);
    }
  }
}
