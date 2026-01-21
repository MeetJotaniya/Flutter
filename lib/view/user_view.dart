import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/user_controller.dart';
import '../model/user_model.dart';

class UserView extends StatelessWidget {
  UserView({super.key});

  final UserController controller = Get.put(UserController());

  void showUserDialog({User? user}) {
    final nameCtrl = TextEditingController(text: user?.name);
    final emailCtrl = TextEditingController(text: user?.email);
    final cityCtrl = TextEditingController(text: user?.city);

    Get.dialog(
      AlertDialog(
        title: Text(user == null ? "Add User" : "Edit User"),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(controller: nameCtrl, decoration: InputDecoration(labelText: "Name")),
            TextField(controller: emailCtrl, decoration: InputDecoration(labelText: "Email")),
            TextField(controller: cityCtrl, decoration: InputDecoration(labelText: "City")),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Get.back(),
            child: Text("Cancel"),
          ),
          ElevatedButton(
            onPressed: () {
              final newUser = User(
                id: user?.id ?? '',
                name: nameCtrl.text,
                email: emailCtrl.text,
                city: cityCtrl.text,
              );

              if (user == null) {
                controller.addUser(newUser);
              } else {
                controller.updateUser(user.id, newUser);
              }

              Get.back();
            },
            child: Text(user == null ? "Add" : "Update"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("API CRUD - GetX")),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showUserDialog(),
        child: Icon(Icons.add),
      ),
      body: Obx(() {
        if (controller.isLoading.value) {
          return Center(child: CircularProgressIndicator());
        }

        return ListView.builder(
          itemCount: controller.userList.length,
          itemBuilder: (context, index) {
            final user = controller.userList[index];
            return Card(
              child: ListTile(
                title: Text(user.name),
                subtitle: Text("${user.email}\n${user.city}"),
                isThreeLine: true,
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: Icon(Icons.edit, color: Colors.blue),
                      onPressed: () => showUserDialog(user: user),
                    ),
                    IconButton(
                      icon: Icon(Icons.delete, color: Colors.red),
                      onPressed: () => controller.deleteUser(user.id),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      }),
    );
  }
}


// import 'package:demo/controller/user_controller.dart';
// import 'package:demo/model/user_model.dart';
// import 'package:flutter/material.dart';
//
// class UserView extends StatefulWidget {
//   UserView({super.key});
//
//   @override
//   State<UserView> createState() => _UserViewState();
// }
//
// class _UserViewState extends State<UserView> {
//   UserController controller = UserController();
//
//   late Future<List<User>> futureUsers;
//
//   @override
//   void initState() {
//     super.initState();
//     futureUsers = controller.fetchUser();
//   }
//
//   void refresh() {
//     setState(() {
//       futureUsers = controller.fetchUser();
//     });
//   }
//
//   void showUserDialog({User? user}) {
//     final nameCtrl = TextEditingController(text: user?.name);
//     final emailCtrl = TextEditingController(text: user?.email);
//     final cityCtrl = TextEditingController(text: user?.city);
//
//     showDialog(
//       context: context,
//       builder:
//           (_) => AlertDialog(
//             title: Text(user == null ? "Add User" : "Edit User"),
//             content: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 TextField(
//                   controller: nameCtrl,
//                   decoration: InputDecoration(labelText: "Name"),
//                 ),
//                 TextField(
//                   controller: emailCtrl,
//                   decoration: InputDecoration(labelText: "Email"),
//                 ),
//                 TextField(
//                   controller: cityCtrl,
//                   decoration: InputDecoration(labelText: "City"),
//                 ),
//               ],
//             ),
//             actions: [
//               TextButton(
//                 onPressed: () => Navigator.pop(context),
//                 child: Text("Cancel"),
//               ),
//               ElevatedButton(
//                 child: Text(user == null ? "Add" : "Update"),
//                 onPressed: () async {
//                   final newUser = User(
//                     id: user?.id ?? '',
//                     name: nameCtrl.text,
//                     email: emailCtrl.text,
//                     city: cityCtrl.text,
//                   );
//
//                   if (user == null) {
//                     await controller.addUser(newUser);
//                   } else {
//                     await controller.updateUser(user.id, newUser);
//                   }
//
//                   Navigator.pop(context);
//                   refresh();
//                 },
//               ),
//             ],
//           ),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("API CRUD")),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () => showUserDialog(),
//         child: Icon(Icons.add),
//       ),
//       body: FutureBuilder(
//         future: futureUsers,
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return Center(child: CircularProgressIndicator());
//           } else if (snapshot.hasError) {
//             return Center(child: Text(snapshot.error.toString()));
//           } else {
//             return ListView.builder(
//               itemCount: snapshot.data!.length,
//               itemBuilder: (context, index) {
//                 final user = snapshot.data![index];
//                 return Card(
//                   child: ListTile(
//                     title: Text(user.name),
//                     subtitle: Text("${user.email}\n${user.city}"),
//                     isThreeLine: true,
//                     trailing: Row(
//                       mainAxisSize: MainAxisSize.min,
//                       children: [
//                         IconButton(
//                           onPressed: () => showUserDialog(user: user),
//                           icon: Icon(Icons.edit, color: Colors.blue),
//                         ),
//                         IconButton(
//                           onPressed: () async {
//                             await controller.deleteUser(user.id);
//                             refresh();
//                           },
//                           icon: Icon(Icons.delete, color: Colors.red),
//                         ),
//                       ],
//                     ),
//                   ),
//                 );
//               },
//             );
//           }
//         },
//       ),
//     );
//   }
// }
//
//
