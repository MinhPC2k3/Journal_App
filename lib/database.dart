import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'dart:convert';
class DatabaseFileRoutines {
  Future<String> _localFile() async{
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }

}