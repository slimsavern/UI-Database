import 'package:day12_login/Animation/FadeAnimation.dart';
import 'package:day12_login/DBOperations.dart';
import 'package:day12_login/app_database.dart';
import 'package:day12_login/dashboard.dart';
import 'package:day12_login/my_dash.dart';
import 'package:day12_login/user.dart';
import 'package:flutter/material.dart';
import 'package:day12_login/login_page.dart';
import 'package:day12_login/signup_page.dart';
import 'package:day12_login/my_app.dart';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

void main() async {
// Avoid errors caused by flutter upgrade.
// Importing 'package:flutter/widgets.dart' is required.
  WidgetsFlutterBinding.ensureInitialized();
  final db = await AppDatabase().initDB();

  var databaselength = await DBOperations(db).getAllRecords();
  if (databaselength.length > 0) {
    runApp(MyDash());
  } else {
    runApp(MyApp());
  }
}
// Define a f

