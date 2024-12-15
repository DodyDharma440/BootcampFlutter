import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sanberappflutter/components/menu_button.dart';
import 'package:sanberappflutter/components/setting_item.dart';

const List<Map<String, dynamic>> settingItems = [
  {
    "icon": "person-outline",
    "title": "Profile settings",
    "description": "Settings regarding your profile"
  },
  {
    "icon": "newspaper-outline",
    "title": "News settings",
    "description": "Choose you favourite topics"
  },
  {
    "icon": "notifications-outline",
    "title": "Notifications",
    "description": "When would you like to be notified"
  },
  {
    "icon": "folder-open-outline",
    "title": "Subscriptions",
    "description": "Currently, you are in Starter Plan"
  },
];

const List<Map<String, dynamic>> otherItems = [
  {
    "icon": "bug-outline",
    "title": "Bug report",
    "description": "Report bugs very easy"
  },
  {
    "icon": "share-social-outline",
    "title": "Share the app",
    "description": "Share on social media networks"
  },
];

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 32),
          child: Column(
            children: [
              Row(
                children: [
                  const MenuButton(),
                  const Spacer(),
                  ClipOval(
                    child: InkWell(
                      splashColor: Colors.grey.shade200,
                      child: Container(
                        color: Colors.black,
                        padding: const EdgeInsets.all(2),
                        child: SizedBox(
                          width: 40,
                          height: 40,
                          child: ClipOval(
                            child: Container(
                              color: Colors.white,
                              child: Center(
                                child: SizedBox(
                                  width: 18,
                                  height: 18,
                                  child: Image.asset(
                                    "assets/icons/search-outline.png",
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 32),
              SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Settings",
                      style: GoogleFonts.montserrat(
                        fontSize: 36,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    const SizedBox(height: 24),
                    ...List.generate(
                      settingItems.length,
                      (index) {
                        var item = settingItems[index];

                        return Container(
                          padding: const EdgeInsets.only(bottom: 24),
                          child: SettingItem(
                            iconName: item['icon'],
                            title: item['title'],
                            description: item['description'],
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Other",
                      style: GoogleFonts.montserrat(
                        fontSize: 26,
                      ),
                    ),
                    const SizedBox(height: 20),
                    ...List.generate(
                      otherItems.length,
                      (index) {
                        var item = otherItems[index];

                        return Container(
                          padding: const EdgeInsets.only(bottom: 24),
                          child: SettingItem(
                            iconName: item['icon'],
                            title: item['title'],
                            description: item['description'],
                          ),
                        );
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
