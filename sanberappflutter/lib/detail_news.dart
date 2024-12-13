import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailNews extends StatelessWidget {
  final Map<String, dynamic> item;

  const DetailNews({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: 375,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(32),
                    bottomRight: Radius.circular(32)),
                image: DecorationImage(
                  image: AssetImage("assets/${item['image']}"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SafeArea(
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 40,
                  horizontal: 32,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: ClipOval(
                        child: Material(
                          color: Colors.black,
                          child: InkWell(
                            splashColor: Colors.black87,
                            onTap: () {},
                            child: const SizedBox(
                              width: 40,
                              height: 40,
                              child: Column(
                                children: [
                                  Spacer(),
                                  Icon(
                                    Icons.arrow_back,
                                    size: 16,
                                    color: Colors.white,
                                  ),
                                  Spacer(),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 300),
                    Row(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: AssetImage("assets/${item['image']}"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),
                        Text(
                          "Samuel Newtor",
                          style: GoogleFonts.poppins(fontSize: 14),
                        )
                      ],
                    ),
                    const SizedBox(height: 32),
                    Text(
                      item['category'],
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w900,
                        color: Colors.black45,
                      ),
                    ),
                    const SizedBox(height: 9),
                    Text(
                      item['title'],
                      style: GoogleFonts.poppins(
                        fontSize: 22,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      "17 June, 2023 — 4:49 PM",
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        color: Colors.black45,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 32),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(
                          Radius.circular(1),
                        ),
                        child: Material(
                          color: Colors.black12,
                          child: SizedBox(
                            width: double.infinity,
                            height: 2,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      "In the last couple of years, we’ve seen new teams in tech companies emerge that focus on responsible innovation, digital well-being, AI ethics or humane use. Whatever their titles, these individuals are given the task of “leading” ethics at their companies.",
                      style: GoogleFonts.poppins(fontSize: 16),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
