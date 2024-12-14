import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sanberappflutter/components/news_highlight_card.dart';
import 'package:sanberappflutter/components/news_item.dart';

List<Map<String, dynamic>> sliderData = [
  {
    'category': "TECHNOLOGY",
    'time': '3 min ago',
    'title': 'Microsoft launches a deepfake detector tool ahead of US election',
    'image': 'news-highlight-1.jpeg',
  },
  {
    'category': "TECHNOLOGY",
    'time': '3 min ago',
    'title': 'Title 2',
    'image': 'news-highlight-2.jpeg',
  }
];

List<Map<String, dynamic>> listNews = [
  {
    'category': "TECHNOLOGY",
    'time': '3 min ago',
    'title': 'Microsoft launches a deepfake detector tool ahead of US election',
    'image': 'news-highlight-1.jpeg',
  },
  {
    'category': "TECHNOLOGY",
    'time': '3 min ago',
    'title': 'Title 2',
    'image': 'news-highlight-2.jpeg',
  },
  {
    'category': "TECHNOLOGY",
    'time': '3 min ago',
    'title': 'Microsoft launches a deepfake detector tool ahead of US election',
    'image': 'news-highlight-1.jpeg',
  },
  {
    'category': "TECHNOLOGY",
    'time': '3 min ago',
    'title': 'Title 2',
    'image': 'news-highlight-2.jpeg',
  }
];

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipOval(
                      child: Material(
                        color: Colors.black,
                        child: InkWell(
                          splashColor: Colors.black87,
                          onTap: () {},
                          child: const SizedBox(
                            width: 40,
                            height: 40,
                            child: Padding(
                              padding: EdgeInsets.all(12),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Spacer(),
                                  ClipRRect(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(1),
                                    ),
                                    child: Material(
                                      color: Colors.white,
                                      child: SizedBox(
                                        width: 16,
                                        height: 2,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 4),
                                  ClipRRect(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(1),
                                    ),
                                    child: Material(
                                      color: Colors.white,
                                      child: SizedBox(
                                        width: 10,
                                        height: 2,
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      "NewsApp",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 40)
                  ],
                ),
              ),
              const SizedBox(height: 32),
              SizedBox(
                height: 311,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: List.generate(sliderData.length, (index) {
                    var item = sliderData[index];
                    return Padding(
                      padding: EdgeInsets.only(
                        left: index == 0 ? 32 : 0,
                        right: index == 1 ? 32 : 16,
                      ),
                      child: NewsHighlightCard(item: item),
                    );
                  }),
                ),
              ),
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Latest news",
                          style: GoogleFonts.poppins(
                            color: Colors.black.withOpacity(0.4),
                            fontSize: 14,
                          ),
                        ),
                        Icon(
                          Icons.arrow_circle_right_outlined,
                          size: 20,
                          color: Colors.black.withOpacity(0.4),
                        )
                      ],
                    ),
                    Column(
                        children: List.generate(listNews.length, (index) {
                      var item = listNews[index];
                      return NewsItem(item: item);
                    }))
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
