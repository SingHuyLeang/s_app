import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class AppHelperFunction {
  // Define Color
  static Color? getColor(String value) {
    // Define your product spacific color here and it will match the attribute colors and show speacific 🔴🟠🟡🟢🔵🟣🟤⚫⚪
    if (value == 'Green') {
      return Colors.green;
    } else if (value == 'Red') {
      return Colors.red;
    } else if (value == 'Blue') {
      return Colors.blue;
    } else if (value == 'Pink') {
      return Colors.pink;
    } else if (value == 'Grey') {
      return Colors.grey;
    } else if (value == 'Purple') {
      return Colors.purple;
    } else if (value == 'Black') {
      return Colors.black;
    } else if (value == 'White') {
      return Colors.white;
    } else if (value == 'Yellow') {
      return Colors.yellow;
    } else if (value == 'Brown') {
      return Colors.brown;
    } else if (value == 'Orange') {
      return Colors.orange;
    } else if (value == 'Teal') {
      return Colors.teal;
    } else if (value == 'Indigo') {
      return Colors.indigo;
    } else {
      return null;
    }
  }

  // show snack bar
  static void showSnackBar(String message) {
    ScaffoldMessenger.of(Get.context!).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  // show alert
  static void showAlert(String title, String message) {
    showDialog(
      context: Get.context!,
      builder: (context) {
        return AlertDialog(
          title: Text(title),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Ok'),
            ),
          ],
        );
      },
    );
  }

  // Navigate To Screen
  static void navigateToScreen(BuildContext context, Widget screen) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => screen),
    );
  }

  // Truncate text
  static String truncateText(String text, int maxLength) {
    if (text.length <= maxLength) {
      return text;
    } else {
      return '${text.substring(0, maxLength)}...';
    }
  }

  //  Is Dark Mode
  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }

  // Screen Size
  static Size screenSize() {
    return MediaQuery.of(Get.context!).size;
  }

  // Screen width
  static double screenWidth() {
    return MediaQuery.of(Get.context!).size.width;
  }

  // Screen Height
  static double screenHeight() {
    return MediaQuery.of(Get.context!).size.height;
  }

  // Get format date
  static String getFormatDate(DateTime date, {String format = "dd MMM yyyy"}) {
    return DateFormat(format).format(date);
  }

  // Remove Duplicate Data in List
  static List<T> removeDuplicates<T>(List<T> list) {
    return list.toSet().toList();
  }

  // Wrap widget
  static List<Widget> wrapWidget(List<Widget> widgets, int rowSize) {
    final wrappedList = <Widget>[];
    for (var i = 0; i < widgets.length; i += rowSize) {
      final rowChildren = widgets.sublist(
          i, i + rowSize > widgets.length ? widgets.length : i + rowSize);
      wrappedList.add(Row(children: rowChildren));
    }
    return wrappedList;
  }
}
