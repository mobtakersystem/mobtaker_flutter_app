enum Flavor {
  dev,
  folad,
}

class F {
  static late final Flavor appFlavor;

  static String get name => appFlavor.name;

  static String get title {
    switch (appFlavor) {
      case Flavor.dev:
        return 'Minebi Dev';
      case Flavor.folad:
        return 'Minebi Folad';
    }
  }

  static String get baseUrl {
    switch (appFlavor) {
      case Flavor.dev:
        return "https://demoapi.minebi.com/api/";
      case Flavor.folad:
        return '';
    }
  }

  static String get apiKey {
    switch (appFlavor) {
      case Flavor.dev:
        return '148d8d21-5e6c-4866-bce6-21b1a65eb831';
      case Flavor.folad:
        return '';
    }
  }
}
