import 'package:blog_app_ui/constant.dart';
import 'package:flutter/material.dart';

import 'DetailsScreen.dart';

class HomeScreen extends StatefulWidget {
  // ignore: use_key_in_widget_constructors
  const HomeScreen();

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  List<String> blogType = [
    "All",
    "Fashion",
    "UI/UX Design",
    "Health",
    "Technology",
    "Sports",
  ];
  List catList = [
    {
      "image": "assets/images/Herb.png",
      "title": "Health",
      "articles": "140",
    },
    {
      "image": "assets/images/ArtistPalette.png",
      "title": "Design",
      "articles": "200",
    },
    {
      "image": "assets/images/Basketball.png",
      "title": "Sports",
      "articles": "100",
    },
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kIconColor,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(
            top: 64.0,
            bottom: 0.0,
            left: 24.0,
            right: 24.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "assets/images/Profile.jpg",
                    height: 52.0,
                    width: 52.0,
                  ),
                  const SizedBox(width: 18.0),
                  const Expanded(
                    child: Text(
                      "Hey, Shahin",
                      style: TextStyle(
                        fontSize: 15.0,
                        color: kLightColor,
                        fontFamily: "Mulish-SemiBold",
                      ),
                    ),
                  ),
                  Image.asset(
                    "assets/icons/Frame.png",
                    height: 34.0,
                    width: 28.0,
                  ),
                ],
              ),
              const SizedBox(height: 22.0),
              const Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "Treading",
                      style: TextStyle(
                        fontSize: 26.0,
                        color: kLightColor,
                      ),
                    ),
                    TextSpan(text: "  "),
                    TextSpan(
                      text: "Blog",
                      style: TextStyle(
                        fontSize: 26.0,
                        color: kLightColor,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 28.0),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    blogType.length,
                    (index) => GestureDetector(
                      onTap: () => setState(() {
                        selectedIndex = index;
                      }),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 24.0),
                        child: Column(
                          children: [
                            Text(
                              blogType[index],
                              style: TextStyle(
                                fontSize: 15.0,
                                color: selectedIndex == index
                                    ? kLightColor
                                    : kLightColor.withOpacity(0.4),
                                fontWeight: selectedIndex == index
                                    ? FontWeight.bold
                                    : FontWeight.normal,
                              ),
                            ),
                            Container(
                              height: 4.0,
                              width: 4.0,
                              margin: const EdgeInsets.only(top: 8.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4.0),
                                color: selectedIndex == index
                                    ? kLightColor
                                    : kHomeBGColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24.0),
              GestureDetector(
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(),
                  ),
                ),
                child: Stack(
                  children: [
                    Hero(
                      tag: "blogImage",
                      child: Container(
                        height: 252.0,
                        width: size.width,
                        decoration: BoxDecoration(
                          color: kLightColor,
                          borderRadius: BorderRadius.circular(24.0),
                          image: const DecorationImage(
                            image: AssetImage("assets/images/Blog1.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 24.0,
                      right: 24.0,
                      child: Hero(
                        tag: "likes",
                        child: Container(
                          height: 34.0,
                          width: 68.0,
                          // padding: EdgeInsets.symmetric(horizontal: 10.0),
                          decoration: BoxDecoration(
                            color: kBoxColor.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/icons/Heart.png",
                                height: 16.0,
                                width: 30.0,
                              ),
                              const SizedBox(width: 1.0),
                              Text(
                                "480",
                                style: TextStyle(
                                  fontSize: 13.0,
                                  color: kLightColor.withOpacity(0.75),
                                  fontFamily: "Mulish-SemiBold",
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0.0,
                      left: 0.0,
                      right: 0.0,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 16.0,
                          horizontal: 24.0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "How to work on your dreams",
                              style: TextStyle(
                                fontSize: 20.0,
                                color: kLightColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 10.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Hero(
                                  tag: "BlogUserProfile",
                                  child: Image.asset(
                                    "assets/images/Man.png",
                                    height: 40.0,
                                    width: 40.0,
                                  ),
                                ),
                                const SizedBox(width: 12.0),
                                Expanded(
                                  child: Text(
                                    "Shahin Alom",
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      color: kLightColor.withOpacity(0.8),
                                      fontFamily: "Mulish-SemiBold",
                                    ),
                                  ),
                                ),
                                Text(
                                  "15 May,2022",
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    color: kLightColor.withOpacity(0.8),
                                    fontFamily: "Mulish-SemiBold",
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 22.0),
              const Text(
                "Categories",
                style: TextStyle(
                  fontSize: 15.0,
                  color: kLightColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 24.0),
              Container(
                height: 162.0,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: catList.length,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 162.0,
                      width: 120.0,
                      margin: const EdgeInsets.only(right: 22.0),
                      decoration: BoxDecoration(
                        color: kCatColor.withOpacity(0.05),
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 16.0,
                              bottom: 24.0,
                            ),
                            child: Image.asset(
                              catList[index]["image"],
                              height: 32.0,
                              width: 32.0,
                            ),
                          ),
                          Text(
                            catList[index]["title"],
                            style: const TextStyle(
                              fontSize: 15.0,
                              color: kLightColor,
                              fontFamily: "Mulish-SemiBold",
                            ),
                          ),
                          const SizedBox(height: 8.0),
                          Text(
                            "${catList[index]["articles"]} Articles",
                            style: TextStyle(
                              fontSize: 12.0,
                              color: kLightColor.withOpacity(0.5),
                              fontFamily: "Mulish-SemiBold",
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
