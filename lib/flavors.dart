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

  static String get rsaPublicKey {
    switch (appFlavor) {
      case Flavor.dev:
        return """
-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA2rnYx2AsIgT7T8LkVrDy
qQLHjVFkjSkeVEaetoTNBvsdie01av1Z0ki3lYxDHPrzA3kBvfpEv2gfMWj7ie8k
qeNXJhBBCi97AzxhCsLtJmdyzvDNbvER3N8rDcfzRYOkx6dj8lkTwhxRi9dwjwTd
MyP+L/l5EWT0TAi0q80UFp41RIMy3M/nlUPqQMtxURHkhR1GqI+Qi9KjHC1ohTwh
in1aJwvlEz5aiKqWs3SuAE+xsqGSsXRsiPYmBgeMb229vlMrZT29nyjC7lG2YQuI
WUl4jBkBMk6EtTIwq/3kDEj/yQiG6wXW6sf/MVemVcQT7OTNbTPZX8O1xHnhQ7Fz
sQIDAQAB
-----END PUBLIC KEY-----""";
      case Flavor.folad:
        return '';
    }
  }

  static bool get isBackgroundServiceEnabled {
    switch (appFlavor) {
      case Flavor.dev:
        return true;
      case Flavor.folad:
        return false;
      }
  }

  static String get appDarkLogo {
    switch (appFlavor) {
      case Flavor.dev:
        return 'assets/images/minebi-logo-dark.png';
      case Flavor.folad:
        return 'assets/images/minebi-logo-dark.png';
    }
  }
  static String get appLightLogo {
    switch (appFlavor) {
      case Flavor.dev:
        return 'assets/images/minebi-logo.png';
      case Flavor.folad:
        return 'assets/images/minebi-logo.png';
    }
  }
}
