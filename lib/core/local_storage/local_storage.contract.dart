abstract class ILocalStorage {
  Future<dynamic> get(String index);
  Future set(String index, dynamic value);
  Future<dynamic> delete(String index);
}
