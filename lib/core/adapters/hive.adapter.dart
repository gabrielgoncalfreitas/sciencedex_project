import 'package:hive/hive.dart';
import 'package:sciencedex_project/core/adapters/hive.adapter.contract.dart';

class HiveAdapter extends IHiveAdapter {
  final String _appBoxName = "app_box";

  Future<Box> _getHiveBox() async {
    return await Hive.openBox(_appBoxName);
  }

  @override
  Future<dynamic> get(String index) async {
    Box box = await _getHiveBox();

    return await box.get(index);
  }

  @override
  Future set({required String index, required dynamic value}) async {
    Box box = await _getHiveBox();

    await box.put(index, value);
  }

  @override
  Future<dynamic> delete(String index) async {
    Box box = await _getHiveBox();

    return await box.delete(index);
  }
}
