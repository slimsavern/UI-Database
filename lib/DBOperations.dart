import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'user.dart';

class DBOperations {
  final Database _database;

  DBOperations(this._database);

  Future<void> insertRecord(int id, String first_name, String last_name,
      String email, String password) async {
    Map<String, dynamic> userMap = {
      //  "id": DateTime.now().millisecond,
      "id": id,
      "first_name": first_name,
      'last_name': last_name,
      'email': email,
      'password': password,
    };
    await _database.insert('users', userMap,
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  Future<List<User>> getAllRecords() async {
    final List<Map<String, dynamic>> maps = await _database.query('users');
    return List.generate(maps.length, (i) {
      return User(
        id: maps[i]['id'],
        first_name: maps[i]['first_name'],
        last_name: maps[i]['last_name'],
        email: maps[i]['email'],
        password: maps[i]['password'],
      );
    });
  }

  Future<List<User>> deleteAllRecords() async {
    final List<Map<String, dynamic>> maps = await _database.query('users');
    return List.generate(maps.length, (i) {
      return User(
        id: maps[i]['id'],
        first_name: maps[i]['first_name'],
        last_name: maps[i]['last_name'],
        email: maps[i]['email'],
        password: maps[i]['password'],
      );
    });
  }
}
