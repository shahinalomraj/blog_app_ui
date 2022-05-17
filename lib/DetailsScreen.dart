import 'package:blog_app_ui/constant.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  // ignore: use_key_in_widget_constructors
  const DetailsScreen();

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kDescBGColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Hero(
                  tag: "blogImage",
                  child: Image.asset(
                    "assets/images/DescImage.jpg",
                    height: 400.0,
                    width: size.width,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 64.0,
                    bottom: 0.0,
                    left: 24.0,
                    right: 24.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.of(context).pop(),
                        child: Container(
                          height: 40.0,
                          width: 40.0,
                          padding: const EdgeInsets.all(12.0),
                          decoration: BoxDecoration(
                            color: kButtonBgColor.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(48.0),
                          ),
                          child: Image.asset("assets/icons/ArrowLeft.jpg"),
                        ),
                      ),
                      Container(
                        child: Image.asset(
                          "assets/icons/Bookmark.png",
                          height: 20.0,
                          width: 20.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 16.0,
                horizontal: 24.4,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        width: size.width / 2,
                        child: const Text(
                          "How to build self confidence",
                          style: TextStyle(
                            fontSize: 24.0,
                            color: kLightColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Hero(
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
                                width: 35.0,
                              ),
                              const SizedBox(width: 0.1),
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
                    ],
                  ),
                  Divider(
                    thickness: 1.0,
                    color: kLightColor.withOpacity(0.08),
                    height: 32.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Hero(
                        tag: "BlogUserProfile",
                        child: Image.asset(
                          "assets/images/Man.png",
                          height: 48.0,
                          width: 48.0,
                        ),
                      ),
                      const SizedBox(width: 12.0),
                      Expanded(
                        child: Text(
                          "Shahin Alom",
                          style: TextStyle(
                            fontSize: 13.0,
                            color: kLightColor.withOpacity(0.8),
                            fontFamily: "Mulish-SemiBold",
                          ),
                        ),
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            WidgetSpan(
                              alignment: PlaceholderAlignment.middle,
                              child: Image.asset(
                                "assets/icons/add.jpg",
                                height: 15.0,
                                width: 15.0,
                              ),
                            ),
                            const TextSpan(text: "  "),
                            const TextSpan(
                              text: "Follow",
                              style: TextStyle(
                                fontSize: 13.0,
                                color: kLightColor,
                                fontFamily: "Mulish-SemiBold",
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    thickness: 1.0,
                    color: kLightColor.withOpacity(0.08),
                    height: 32.0,
                  ),
                  Text(
                    "Font Awesome is the internet's icon library and toolkit used by millions of designers, developers, and content creators. Made with and in Bentonville, Boston, Font Awesome is the internet's icon library and toolkit used by millions of designers, developers, and content creators. Made with and in Bentonville, Boston, Font Awesome is the internet's icon library and toolkit used by millions of designers, developers, and content creators. Made with and in Bentonville, Boston, ",
                    style: TextStyle(
                      fontSize: 15.0,
                      color: kLightColor.withOpacity(0.8),
                      fontFamily: "Mulish-SemiBold",
                    ),
                  ),
                  Container(
                    height: 64.0,
                    width: size.width,
                    margin: const EdgeInsets.only(top: 16.0),
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    decoration: BoxDecoration(
                      color: kCommentBGColor,
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 32.0,
                          width: 32.0,
                          padding: const EdgeInsets.all(9.0),
                          margin: const EdgeInsets.only(right: 16.0),
                          decoration: BoxDecoration(
                            color: kLightColor,
                            borderRadius: BorderRadius.circular(32.0),
                          ),
                          child: Image.asset("assets/icons/Edit.png"),
                        ),
                        const Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Write a comment...",
                              hintStyle: TextStyle(
                                color: kLightColor,
                                fontFamily: "Mulish-SemiBold",
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 32.0,
                          width: 32.0,
                          padding: const EdgeInsets.all(9.0),
                          margin: const EdgeInsets.only(right: 16.0),
                          decoration: BoxDecoration(
                            color: kLightColor,
                            borderRadius: BorderRadius.circular(32.0),
                          ),
                          child: Image.asset("assets/icons/Send.png"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
