import 'package:flutter/material.dart';

class PopularBakeriesView extends StatelessWidget {
  const PopularBakeriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 34),
            Text(
              "Popular Bakeries",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: Colors.black,
                fontSize: 20,
              ),
            ),
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 40, bottom: 16),
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    color: Color(0xFFFF4A4C),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.vertical(
                            bottom: Radius.circular(30),
                          ),
                        ),
                        padding: EdgeInsets.only(
                          left: 8,
                          right: 8,
                          top: 11,
                          bottom: 14,
                        ),
                        child: Image.asset("assets/images/dunkin_donuts.png"),
                      ),
                      SizedBox(width: 13),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 25),

                            Text(
                              "Something Fresh is Always Brewin’ Here",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w800,
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(height: 10),
                            TextButton(
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(16),
                                    bottomLeft: Radius.circular(16),
                                    bottomRight: Radius.circular(16),
                                  ),
                                ),
                              ),
                              onPressed: () {},
                              child: Text(
                                "Order Now",
                                style: TextStyle(
                                  color: Color(0xFFFF4A4C),
                                  fontWeight: FontWeight.w800,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                            SizedBox(height: 16),
                          ],
                        ),
                      ),
                      SizedBox(width: 140),
                    ],
                  ),
                ),
                Align(
                  alignment: AlignmentGeometry.topRight,
                  child: Image.asset(
                    "assets/images/popular_bakeries.png",
                    height: 200,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Dunkin’s Donuts",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Color(0xFFFF4A4C),
                    fontSize: 18,
                  ),
                ),
                Row(
                  children: [
                    Icon(Icons.star, color: Color(0xFFFFCC10)),
                    Text(
                      "4.9",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.watch_later_outlined, color: Color(0xFF000000)),
                    Text(
                      "45 min",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 36),
          ],
        ),
      ),
    );
  }
}
