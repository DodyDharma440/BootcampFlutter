import 'package:dio/dio.dart';
import 'package:sanberappflutter/user/model/user_model.dart';

class UserService {
  Dio dio = Dio();
  static const baseUrl = 'https://reqres.in/api';

  Future<List<UserModel>> getUsers() async {
    try {
      final response = await dio.get("$baseUrl/users?page=1");
      if (response.statusCode == 200) {
        final data = response.data['data'];
        List<UserModel> users = List.from(
          data.map((user) => UserModel.fromJson(user)),
        );
        return users;
      }

      throw Exception();
    } catch (e) {
      rethrow;
    }
  }

  Future<UserModel> getUser(int id) async {
    try {
      final response = await dio.get("$baseUrl/users/$id");
      if (response.statusCode == 200) {
        final data = response.data['data'];
        return UserModel.fromJson(data);
      }

      throw Exception();
    } catch (e) {
      rethrow;
    }
  }
}
