import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sanberappflutter/components/button.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 86),
                width: double.infinity,
                height: 330,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/image_news.png"),
                  ),
                ),
              ),
              const SizedBox(
                height: 37,
              ),
              Text(
                "Yuk, Membaca Bersama\nSanber News",
                style: GoogleFonts.arimo(
                    fontSize: 21, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 21,
              ),
              const Text(
                "Berita Terpercaya, Di Ujung Jari Anda",
                style: TextStyle(fontSize: 14),
              ),
              const SizedBox(
                height: 90,
              ),
              Button(
                text: "Masuk",
                onPressed: () {
                  Navigator.pushReplacementNamed(context, "/main");
                },
              ),
              const SizedBox(
                height: 21,
              ),
              Button(
                text: "Mendaftar",
                onPressed: () {},
                variant: ButtonVariant.outline,
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
