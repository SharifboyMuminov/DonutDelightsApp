import 'package:donut_delights_app/extensions/context_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key, required this.imagePath});

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.only(left: 14, right: 18),
          height: 140,
          width: context.width,
          margin: EdgeInsets.symmetric(vertical: 15),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [BoxShadow(color: Colors.grey.shade300, blurRadius: 10)],
          ),
          child: Row(
            children: [
              Expanded(child: Image.asset(imagePath)),
              SizedBox(width: 10),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Chocolate Frost",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
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
                          Spacer(),
                          SvgPicture.asset(
                            "assets/icons/delivery.svg",
                            colorFilter: ColorFilter.mode(
                              Colors.black,
                              BlendMode.srcIn,
                            ),
                          ),
                          SizedBox(width: 6),
                          Text(
                            "Free",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      Row(
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
                              onPressed: () {},
                              icon: Icon(Icons.remove),
                            ),
                          ),
                          SizedBox(width: 10),

                          Text(
                            "1",
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
                              onPressed: () {},
                              icon: Icon(Icons.add),
                            ),
                          ),
                          Spacer(),
                          Text(
                            "\$ 9.80",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w800,
                              fontSize: 22,
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
        Positioned(
          right: 0,
          top: 15,
          child: IconButton(
            onPressed: () {},
            icon: Icon(Icons.close, color: Color(0xFFDFDEDD)),
          ),
        ),
      ],
    );
  }
}
