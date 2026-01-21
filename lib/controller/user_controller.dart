import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import '../model/user_model.dart';

class UserController extends GetxController {
  final String baseUrl =
      'https://6940e1af993d68afba6d4df1.mockapi.io/users';

  var userList = <User>[].obs;
  var isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    fetchUsers();
  }

  Future<void> fetchUsers() async {
    try {
      isLoading(true);
      final response = await http.get(Uri.parse(baseUrl));

      if (response.statusCode == 200) {
        List data = jsonDecode(response.body);
        userList.value = data.map((e) => User.fromJson(e)).toList();
      } else {
        Get.snackbar("Error", "Failed to load users");
      }
    } finally {
      isLoading(false);
    }
  }

  Future<void> addUser(User user) async {
    final response = await http.post(
      Uri.parse(baseUrl),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode(user.toJson()),
    );

    if (response.statusCode == 201) {
      fetchUsers();
    }
  }

  Future<void> updateUser(String id, User user) async {
    final response = await http.put(
      Uri.parse('$baseUrl/$id'),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode(user.toJson()),
    );

    if (response.statusCode == 200) {
      fetchUsers();
    }
  }

  Future<void> deleteUser(String id) async {
    final response = await http.delete(Uri.parse('$baseUrl/$id'));

    if (response.statusCode == 200) {
      fetchUsers();
    }
  }
}


// import 'dart:convert';
//
// import 'package:demo/model/user_model.dart';
// import 'package:http/http.dart' as http;
//
// class UserController {
//   final String baseUrl = 'https://6940e1af993d68afba6d4df1.mockapi.io/users';
//
//   Future<List<User>> fetchUser() async {
//     final response = await http.get(Uri.parse(baseUrl));
//
//     if (response.statusCode == 200) {
//       List<dynamic> data = jsonDecode(response.body);
//       return data.map((e) => User.fromJson(e)).toList();
//     } else {
//       throw Exception("Error while fetching");
//     }
//   }
//
//   Future<User> getUserById(String id) async {
//     final response = await http.get(Uri.parse('${baseUrl}/${id}'));
//
//     if (response.statusCode == 200) {
//       return User.fromJson(jsonDecode(response.body));
//     } else {
//       throw Exception("no user found");
//     }
//   }
//
//   Future<void> addUser(User user) async {
//     final response = await http.post(
//       Uri.parse(baseUrl),
//       headers: {"Content-Type": "application/json"},
//       body: jsonEncode(user.toJson()),
//     );
//
//     if (response.statusCode != 201) {
//       throw Exception("locho avyo user add krvama");
//     }
//   }
//
//   Future<void> updateUser(String id, User user) async {
//     final response = await http.put(
//       Uri.parse('${baseUrl}/${id}'),
//       headers: {"Content-Type": "application/json"},
//       body: jsonEncode(user.toJson()),
//     );
//
//     if (response.statusCode != 200) {
//       throw Exception("locho avyo user edit krvama");
//     }
//   }
//
//   Future<void> deleteUser(String id) async {
//     final response = await http.delete(Uri.parse('${baseUrl}/${id}'));
//
//     if (response.statusCode != 200) {
//       throw Exception("locho avyo user delete krvama");
//     }
//   }
// }
// // import 'dart:convert';
// //
// // import 'package:demo/model/user_model.dart';
// // import 'package:http/http.dart' as http;
// //
// // class UserController{
// //   final String baseUrl = 'https://6940e1af993d68afba6d4df1.mockapi.io/users';
// //
// //   Future<List<User>> fetchUser() async{
// //     final response = await http.get(Uri.parse(baseUrl));
// //
// //     if(response.statusCode == 200){
// //       List<dynamic> data = jsonDecode(response.body);
// //       return data.map((e) => User.fromJson(e)).toList();
// //     }
// //     else{
// //       throw Exception("Failed to fetch");
// //     }
// //   }
// //
// //   Future<User> getUserById(String id) async {
// //     final response = await http.get(Uri.parse('$baseUrl/$id'));
// //
// //
// //     if (response.statusCode == 200) {
// //       return User.fromJson(jsonDecode(response.body));
// //     }
// //     else{
// //       throw Exception("Unable to get USer");
// //     }
// //   }
// //
// //   Future<void> addUser(User user) async{
// //     final response = await http.post(Uri.parse(baseUrl),headers: {'Content-Type' : 'application/json'},body: jsonEncode(user.toJson()));
// //
// //     if(response.statusCode !=201){
// //       throw Exception("Unable to add");
// //     }
// //
// //   }
// //
// //
// //   Future<void> updateUser(String id,User user) async{
// //     final response = await http.put(Uri.parse('$baseUrl/$id'),headers: {'Content-Type' : 'application/json'},body: jsonEncode(user.toJson()));
// //
// //     if(response.statusCode !=200){
// //       throw Exception("Unable to Update");
// //     }
// //
// //   }
// //
// //   Future<void> deleteUser(String id) async{
// //     final response = await http.delete(Uri.parse('$baseUrl/$id'));
// //
// //     if(response.statusCode !=200){
// //       throw Exception("Unable tp Delete");
// //     }
// //
// //
// //   }
// //
// // }
//
// // import 'dart:convert';
// //
// // import 'package:demo/model/user_model.dart';
// // import 'package:http/http.dart' as http;
// //
// // class UserController {
// //   final String baseUrl = 'https://6940e1af993d68afba6d4df1.mockapi.io/users';
// //
// //   Future<List<User>> fetchUser() async {
// //     final response = await http.get(Uri.parse(baseUrl));
// //
// //     if (response.statusCode == 200) {
// //       List<dynamic> data = jsonDecode(response.body);
// //       return data.map((e) => User.fromJson(e)).toList();
// //     } else {
// //       throw Exception("Error in fetching");
// //     }
// //   }
// //
// //   Future<User> getUserById(String id) async {
// //     final response = await http.get(Uri.parse('$baseUrl/$id'));
// //
// //     if (response.statusCode == 200) {
// //       return User.fromJson(jsonDecode(response.body));
// //     } else {
// //       throw Exception("User not found");
// //     }
// //   }
// //
// //   Future<void> addUser(User user) async {
// //     final response = await http.post(
// //       Uri.parse('$baseUrl'),
// //       headers: {'Content-Type': 'application/json'},
// //       body: jsonEncode(user.toJson()),
// //     );
// //
// //     if (response.statusCode != 201) {
// //       throw Exception('Failed to add');
// //     }
// //   }
// //
// //   Future<void> updateUser(String id, User user) async {
// //     final response = await http.put(
// //       Uri.parse('$baseUrl/$id'),
// //       headers: {'Content-Type': 'application/json'},
// //       body: jsonEncode(user.toJson()),
// //     );
// //
// //     if(response.statusCode != 200){
// //       throw Exception("Failed to update user");
// //     }
// //   }
// //
// //   Future<void> deleteUser(String id) async{
// //     final response = await http.delete(Uri.parse('$baseUrl/$id'));
// //
// //     if(response.statusCode != 200){
// //       throw Exception("Failed to delete User");
// //     }
// //   }
// //
// // }
//
// // import 'dart:convert';
// // import 'package:http/http.dart' as http;
// // import '../model/user_model.dart';
// //
// // class UserController {
// //   Future<List<User>> fetchUser() async{
// //     final response = await http.get(
// //         Uri.parse('https://6940e1af993d68afba6d4df1.mockapi.io/users'),
// //     );
// //
// //     if(response.statusCode == 200){
// //       List<dynamic> data = jsonDecode(response.body);
// //       return data.map((e) => User.fromJson(e)).toList();
// //     } else {
// //       throw Exception("Failed to load users");
// //     }
// //   }
// // }
