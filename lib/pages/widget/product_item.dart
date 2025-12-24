import 'package:donut_delights_app/extensions/context_extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
    required this.imageUrl,
    required this.onPressed,
  });

  final String imageUrl;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
      onPressed: onPressed,
      child: Column(
        children: [
          SizedBox(width: context.width),
          Align(
            alignment: AlignmentGeometry.topRight,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 7, horizontal: 24),
              decoration: BoxDecoration(
                color: Color(0xFFFFE8E3),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
              ),
              child: Text(
                "\$5",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Color(0xFF564146),
                ),
              ),
            ),
          ),
          SizedBox(height: 12),

          Expanded(child: Image.asset(imageUrl)),
          SizedBox(height: 17),

          Text(
            "Careemy",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: Color(0xFFFF4A4C),
            ),
          ),
          Text(
            "Dunkin’s",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Color(0xFFACA9A7),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 17),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite_border,
                    color: Colors.black,
                    size: 20,
                  ),
                ),
                Text(
                  "4.9",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF000000),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
