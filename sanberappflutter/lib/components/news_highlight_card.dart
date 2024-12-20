import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class NewsHighlightCard extends StatelessWidget {
  final Map<String, dynamic> item;

  const NewsHighlightCard({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed("/news-detail", arguments: item);
      },
      child: DefaultTextStyle.merge(
        style: const TextStyle(color: Colors.white),
        child: Container(
          height: 311,
          width: 311,
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
              image: AssetImage("assets/${item['image']}"),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                top: 0,
                child: Container(
                  width: 311,
                  height: 72,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.black45,
                        Colors.transparent,
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                ),
              ),
              Positioned(
                  bottom: 0,
                  child: Container(
                    width: 311,
                    height: 156,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.black45,
                          Colors.transparent,
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                      ),
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          item['category'],
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Text(
                          item['time'],
                          style: GoogleFonts.poppins(
                            fontSize: 8,
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                    const Spacer(),
                    Text(
                      item['title'],
                      textAlign: TextAlign.left,
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    const SizedBox(height: 24),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.comment_outlined,
                              size: 24,
                              color: Colors.white,
                            ),
                            SizedBox(width: 12),
                            Icon(
                              Icons.bookmark_outline,
                              size: 24,
                              color: Colors.white,
                            ),
                          ],
                        ),
                        Icon(
                          Icons.share_outlined,
                          size: 24,
                          color: Colors.white,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
