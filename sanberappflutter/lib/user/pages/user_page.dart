import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sanberappflutter/user/controller/user_controller.dart';
import 'package:sanberappflutter/user/pages/detail_user_page.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(UserController());

    return Scaffold(
      appBar: AppBar(
        title: const Text("User Page"),
      ),
      body: GetBuilder<UserController>(
        builder: (controller) => ListView.builder(
          itemCount: controller.users.length,
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailUserPage(
                    id: controller.users[index].id,
                  ),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: Text(
                  "${controller.users[index].firstName} ${controller.users[index].lastName}",
                ),
                leading: Image.network(
                  controller.users[index].avatar,
                ),
                subtitle: Text(controller.users[index].email),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// class UserPage extends StatefulWidget {
//   const UserPage({super.key});

//   @override
//   State<UserPage> createState() => _UserPageState();
// }

// class _UserPageState extends State<UserPage> {
//   List<UserModel> users = [];

//   @override
//   void initState() {
//     super.initState();
//     getUsers();
//   }

//   getUsers() async {
//     users = await UserService().getUsers();
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     Get.put(UserController());

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("User Page"),
//       ),
//       body: ListView.builder(
//         itemCount: users.length,
//         itemBuilder: (context, index) => InkWell(
//           onTap: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(
//                 builder: (context) => DetailUserPage(
//                   id: users[index].id,
//                 ),
//               ),
//             );
//           },
//           child: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: ListTile(
//               title: Text("${users[index].firstName} ${users[index].lastName}"),
//               leading: Image.network(
//                 users[index].avatar,
//               ),
//               subtitle: Text(users[index].email),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
