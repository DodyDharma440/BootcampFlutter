import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sanberappflutter/components/button.dart';
import 'package:sanberappflutter/components/custom_text_form_field.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final emailControl = TextEditingController();
  final passControl = TextEditingController();

  bool isLoading = false;

  void _handleSubmit() async {
    List<String> validationMessage = [];

    if (emailControl.text.isEmpty) validationMessage.add("Email harus diisi");
    if (passControl.text.isEmpty) validationMessage.add("Password harus diisi");

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
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailControl.text,
        password: passControl.text,
      );
      Get.offNamed("/main");
    } on FirebaseAuthException catch (e) {
      var message = "";
      if (e.code == 'user-not-found') {
        message = 'User tidak ditemukan.';
      } else if (e.code == 'wrong-password') {
        message = 'Password salah.';
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
                    image: AssetImage("assets/sign-in.png"),
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
              withBottomSpacer: false,
              controller: passControl,
            ),
            const SizedBox(height: 7),
            const Row(
              children: [Spacer(), Text("Lupa password?")],
            ),
            const SizedBox(height: 25),
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
                    text: "Masuk",
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
                  child: Text("Atau masuk menggunakan"),
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
                          "Google",
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
                const Text("Belum punya akun?"),
                InkWell(
                  onTap: () {
                    Get.toNamed("/sign-up");
                  },
                  child: const Text(
                    " Mendaftar",
                    style: TextStyle(
                      color: Color(0xff349D8B),
                    ),
                  ),
                ),
                const Text(" sekarang")
              ],
            )
          ],
        ),
      ),
    );
  }
}
