import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sanberappflutter/detail_news.dart';

class NewsItem extends StatelessWidget {
  final Map<String, dynamic> item;

  const NewsItem({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DetailNews(item: item)),
        );
      },
      child: Container(
        padding: const EdgeInsets.only(top: 24),
        width: double.infinity,
        child: Row(
          children: [
            Container(
              width: 100,
              height: 100,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(
                  image: AssetImage("assets/${item['image']}"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 24),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item['category'],
                    style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w900,
                        color: Colors.black45),
                  ),
                  Text(
                    item['title'],
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
