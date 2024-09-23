import 'package:persian_number_utility/persian_number_utility.dart';

const List<String> _fakeNationalCode = [];

class CustomValidator {
  static String? nationalCode(String? value) {
    if (value == null || value.isEmpty) {
      return 'کد ملی الزامی است';
    }
    if (value.length != 10) {
      return 'کد ملی باید 10 رقم باشد';
    }
    if (_fakeNationalCode.contains(value)) {
      return null;
    }
    if (!value.isValidIranianNationalCode()) {
      return 'کد ملی نامعتبر است';
    }
    return null;
  }

  static String? cellphone(String? value) {
    if (value == null) return null;
    return value.isValidIranianMobileNumber()
        ? null
        : "شماره موبایل نامعتبر است";
  }

  static String? postalCode(String? value) {
    if (value == null || value.isEmpty) return null;
    return value.isValidIranianPostalCode() ? null : "کد پستی نامعتبر است";
  }
}
