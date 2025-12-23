import 'package:donut_delights_app/pages/product/search_products_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeAppBar extends SliverPersistentHeaderDelegate {
  @override
  Widget build(context, shrinkOffset, overlapsContent) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(12),
      child: SafeArea(
        bottom: false,
        child: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                "assets/icons/drawer_icon.svg",
                width: 23,
                height: 17,
              ),
            ),
            SizedBox(width: 30),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFFF9F9F9),
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 16,
                  ),
                  prefixIconConstraints: BoxConstraints(
                    minWidth: 14,
                    minHeight: 14,
                  ),
                  suffixIconConstraints: BoxConstraints(
                    minWidth: 14,
                    minHeight: 14,
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return ProductsPage();
                          },
                        ),
                      );
                    },
                    icon: SvgPicture.asset("assets/icons/search.svg"),
                  ),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: SvgPicture.asset("assets/icons/location.svg"),
                  ),
                  hintText: 'York Ave. Brooklyn',
                  helperStyle: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.black38, width: 1),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            SizedBox(width: 25),
            Image.asset(
              "assets/images/person.png",
              width: 44,
              height: 44,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }

  @override
  double get maxExtent => 130;

  @override
  double get minExtent => 130;

  @override
  bool shouldRebuild(_) => false;
}
