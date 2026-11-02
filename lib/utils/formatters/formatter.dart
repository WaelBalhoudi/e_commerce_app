import 'package:intl/intl.dart';

class Formatter {
  static String formatDateTime(DateTime date) {
    return DateFormat('dd-MM-yyyy').format(date); // Customize the date format as needed
  }

  static String formatCurrency(double amount) {
    return NumberFormat.currency(locale: 'en_US', symbol: '\$').format(amount); // Customize the currency locale and symbol as needed
  }

  // Assuming a 10-digit US phone number format: (123) 456-7890
  static String formatPhoneNumber(String phoneNumber) {
    if (phoneNumber.length == 10) {
      return '(${phoneNumber.substring(0, 3)}) ${phoneNumber.substring(3, 6)}-${phoneNumber.substring(6)}';
    } else if (phoneNumber.length == 11) {
      return '(${phoneNumber.substring(0, 4)}) ${phoneNumber.substring(4, 7)}-${phoneNumber.substring(7)}';
    }
    // Add more custom phone number formatting logic for different formats if needed.
    return phoneNumber;
  }

  static String formatInternationalPhoneNumber(String phoneNumber) {
    // Not fully tested.
    return '+${phoneNumber.substring(0, 2)} ${phoneNumber.substring(2)}';
  }
}