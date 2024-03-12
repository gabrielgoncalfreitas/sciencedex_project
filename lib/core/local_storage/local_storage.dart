import 'package:sciencedex_project/core/adapters/hive.adapter.dart';
import 'package:sciencedex_project/core/local_storage/local_storage.contract.dart';

class LocalStorage extends ILocalStorage {
  @override
  Future<void> set(String index, dynamic value) async {
    HiveAdapter hiveAdapter = HiveAdapter();

    await hiveAdapter.set(index: index, value: value);
  }

  @override
  Future<dynamic> get(String index) async {
    HiveAdapter hiveAdapter = HiveAdapter();

    return await hiveAdapter.get(index);
  }

  @override
  Future<void> delete(String index) async {
    HiveAdapter hiveAdapter = HiveAdapter();

    await hiveAdapter.delete(index);
  }
}
