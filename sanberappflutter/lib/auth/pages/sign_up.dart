import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sanberappflutter/components/button.dart';
import 'package:sanberappflutter/components/custom_text_form_field.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final emailControl = TextEditingController();
  final passControl = TextEditingController();
  final confPassControl = TextEditingController();

  bool isLoading = false;

  void _handleSubmit() async {
    List<String> validationMessage = [];

    if (emailControl.text.isEmpty) validationMessage.add("Email harus diisi");
    if (passControl.text.isEmpty) validationMessage.add("Password harus diisi");
    if (confPassControl.text.isEmpty) {
      validationMessage.add("Konfirmasi password harus diisi");
    }

    if (passControl.text != confPassControl.text) {
      validationMessage.add("Konfirmasi password tidak cocok");
    }

    if (validationMessage.isNotEmpty) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Error validasi'),
            content: SingleChildScrollView(
              child: ListBody(
                children: List.generate(
                  validationMessage.length,
                  (index) => Text(validationMessage[index]),
                ),
              ),
            ),
            actions: [
              TextButton(
                child: const Text('Tutup'),
                onPressed: () {
                  Get.back();
                },
              ),
            ],
          );
        },
      );
      return;
    }

    setState(() {
      isLoading = true;
    });

    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailControl.text,
        password: passControl.text,
      );
      if (!mounted) return;
      Get.toNamed("/main");
    } on FirebaseAuthException catch (e) {
      var message = "";
      if (e.code == 'weak-password') {
        message = 'Password terlalu mudah.';
      } else if (e.code == 'email-already-in-use') {
        message = 'Email sudah terdaftar.';
      }

      setState(() {
        isLoading = false;
      });

      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Error'),
            content: Text(message),
            actions: [
              TextButton(
                child: const Text('Tutup'),
                onPressed: () {
                  Get.back();
                },
              ),
            ],
          );
        },
      );
    } catch (e) {
      // ignore: avoid_print
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(30),
          children: [
            Center(
              child: Container(
                width: 352,
                height: 330,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/sign-up.png"),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40),
            CustomTextFormField(
              label: "Masukkan Email",
              controller: emailControl,
            ),
            CustomTextFormField(
              label: "Password",
              controller: passControl,
            ),
            CustomTextFormField(
              label: "Konfirmasi Password",
              controller: confPassControl,
            ),
            isLoading
                ? const SizedBox(
                    height: 52,
                    child: Center(
                      child: CircularProgressIndicator(
                        color: Colors.blue,
                      ),
                    ),
                  )
                : Button(
                    text: "Mendaftar",
                    onPressed: () {
                      _handleSubmit();
                    },
                  ),
            const SizedBox(height: 40),
            const Row(
              children: [
                Expanded(
                  child: Divider(
                    color: Color(0xffc0c0c0),
                    height: 3,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Text("Atau daftar menggunakan"),
                ),
                Expanded(
                  child: Divider(
                    color: Color(0xffc0c0c0),
                    height: 3,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),
            Material(
              color: Colors.white,
              child: SizedBox(
                height: 52,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      surfaceTintColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      backgroundColor: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 33,
                          height: 33,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/icons/google.png"),
                            ),
                          ),
                        ),
                        const Text(
                          "Mendaftar",
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(width: 33),
                      ],
                    )),
              ),
            ),
            const SizedBox(height: 49),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Sudah punya akun? silahkan"),
                InkWell(
                  onTap: () {
                    Get.toNamed("/sign-in");
                  },
                  child: const Text(
                    " masuk",
                    style: TextStyle(
                      color: Color(0xff349D8B),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
