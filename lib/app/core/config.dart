import 'package:flutter/material.dart';

enum Flavor {
  development,
  release,
}

class Config {
  static Flavor appFlavor = Flavor.development;

  static String get helloMessage {
    switch (appFlavor) {
      case Flavor.release:
        return 'Users version';
      case Flavor.development:
      default:
        return 'Developers version';
    }
  }

  static String get baseUrl {
    switch (appFlavor) {
      case Flavor.release:
        return 'https://my-json-server.typicode.com/adamsmaka/json-demo';
      case Flavor.development:
        return 'https://my-json-server.typicode.com/adamsmaka/json-demo';
    }
  }

  static Icon get helloIcon {
    switch (appFlavor) {
      case Flavor.release:
        return const Icon(Icons.new_releases);
      case Flavor.development:
      default:
        return const Icon(Icons.developer_mode);
    }
  }
}
