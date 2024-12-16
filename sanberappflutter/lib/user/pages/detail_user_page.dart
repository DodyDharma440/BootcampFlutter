import 'package:flutter/material.dart';
import 'package:sanberappflutter/user/model/user_model.dart';
import 'package:sanberappflutter/user/service/user_service.dart';

class DetailUserPage extends StatefulWidget {
  final int id;

  const DetailUserPage({super.key, required this.id});

  @override
  State<DetailUserPage> createState() => _DetailUserPageState();
}

class _DetailUserPageState extends State<DetailUserPage> {
  UserModel? user;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    getUser();
  }

  getUser() async {
    isLoading = true;
    user = await UserService().getUser(widget.id);
    isLoading = false;

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail User Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: isLoading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListTile(
                title: Text("${user?.firstName} ${user?.lastName}"),
                leading: Image.network(
                  user?.avatar ?? "",
                ),
                subtitle: Text(user?.email ?? ""),
              ),
      ),
    );
  }
}
