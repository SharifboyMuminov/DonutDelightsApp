import 'package:donut_delights_app/extensions/context_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailProductPage extends StatefulWidget {
  const DetailProductPage({super.key, required this.imagePath});

  final String imagePath;

  @override
  State<DetailProductPage> createState() => _DetailProductPageState();
}

class _DetailProductPageState extends State<DetailProductPage> {
  int _count = 11;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              color: Color(0xFFF9F9F9),
              child: SafeArea(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 40,
                      height: 40,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          backgroundColor: Colors.white,
                          elevation: 2,
                        ),
                        child: Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.black,
                          size: 20,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 40,
                      height: 40,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          backgroundColor: Colors.white,
                          elevation: 2,
                        ),
                        child: SvgPicture.asset("assets/icons/basket.svg"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              color: Color(0xFFF9F9F9),
              child: Image.asset(widget.imagePath, height: 300),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.only(top: 50),
              color: Color(0xFFF9F9F9),
              child: Container(
                padding: EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 30,
                  bottom: 120,
                ),
                width: context.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 10,
                      offset: Offset(0, -10),
                    ),
                  ],
                  borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Chocolate Frost",
                          style: TextStyle(
                            color: Color(0xFFFF4A4C),
                            fontSize: 28,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Spacer(),
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
                    SizedBox(height: 10),
                    Text(
                      "Ring donut, Chocolate frosted topped with fondant and bisquit crush.",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFACA9A7),
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SvgPicture.asset("assets/icons/calory.svg"),
                                SizedBox(width: 10),
                                Text(
                                  "65 Calories",
                                  style: TextStyle(
                                    color: Color(0xFFACA9A7),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SvgPicture.asset("assets/icons/watch.svg"),
                                SizedBox(width: 6),
                                Text(
                                  "45 mins",
                                  style: TextStyle(
                                    color: Color(0xFFACA9A7),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SvgPicture.asset("assets/icons/delivery.svg"),
                                SizedBox(width: 10),
                                Text(
                                  "Free",
                                  style: TextStyle(
                                    color: Color(0xFFACA9A7),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SizedBox(
                                  width: 27,
                                  height: 27,
                                  child: IconButton(
                                    padding: EdgeInsets.zero,
                                    style: IconButton.styleFrom(
                                      side: BorderSide(
                                        color: Color(0xFFFF4A4C),
                                        width: 1,
                                      ),
                                      foregroundColor: Color(0xFFFF4A4C),
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        _count--;
                                      });
                                    },
                                    icon: Icon(Icons.remove),
                                  ),
                                ),
                                SizedBox(width: 10),

                                Text(
                                  _count.toString(),
                                  style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 24,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(width: 10),
                                SizedBox(
                                  width: 27,
                                  height: 27,
                                  child: IconButton(
                                    padding: EdgeInsets.zero,
                                    style: IconButton.styleFrom(
                                      side: BorderSide(
                                        color: Color(0xFFFF4A4C),
                                        width: 1,
                                      ),
                                      foregroundColor: Color(0xFFFF4A4C),
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        _count++;
                                      });
                                    },
                                    icon: Icon(Icons.add),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 13),
                            Text(
                              "\$ 9.80",
                              style: TextStyle(
                                fontSize: 28,
                                height: 0.8,
                                fontWeight: FontWeight.w800,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      height: 1,
                      width: context.width,
                      margin: EdgeInsets.symmetric(vertical: 25),
                      color: Color(0xFFE2DEDC),
                    ),
                    RichText(
                      text: TextSpan(
                        text: 'Reviews ',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                        children: [
                          TextSpan(
                            text: '(85)',
                            style: TextStyle(
                              color: Color(0xFFACA9A7),
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 6),
                          width: 24,
                          height: 24,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage("assets/images/person.png"),
                            ),
                          ),
                        ),
                        Text(
                          "John Doe",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          "2 weeks ago",
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFFACA9A7),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Spacer(),
                        ...List.generate(5, (index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 1),
                            child: Icon(
                              index == 4 ? Icons.star_border : Icons.star,
                              color: Colors.black,
                              size: 18,
                            ),
                          );
                        }),
                      ],
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Ring donut, Chocolate frosted topped with fondant and bisquit crush.",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        width: 80,
        height: 80,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          boxShadow: [BoxShadow(color: Colors.grey.shade200, blurRadius: 20)],
        ),
        child: FloatingActionButton(
          key: UniqueKey(),
          backgroundColor: Colors.white,
          shape: StadiumBorder(),
          onPressed: () {},
          elevation: 0,
          highlightElevation: 0,
          child: Padding(
            padding: EdgeInsets.all(5),
            child: Container(
              alignment: AlignmentGeometry.center,
              decoration: BoxDecoration(
                color: Color(0xFFFF4A4C),
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.add, color: Colors.white, size: 35),
            ),
          ),
        ),
      ),
    );
  }
}
