import 'package:hive/hive.dart';

abstract class IHiveAdapter {
  IHiveAdapter();

  Future<Box> _getHiveBox();
  Future<dynamic> get(String index);
  Future set({required String index, required dynamic value});
  Future<dynamic> delete(String index);
}
