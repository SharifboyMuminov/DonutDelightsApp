import 'package:donut_delights_app/pages/product/detail_product_page.dart';
import 'package:donut_delights_app/pages/widget/product_item.dart';
import 'package:flutter/material.dart';

class HomeProductView extends StatefulWidget {
  const HomeProductView({super.key});

  @override
  State<HomeProductView> createState() => _HomeProductViewState();
}

class _HomeProductViewState extends State<HomeProductView> {
  final List<String> _imagePaths = [
    "assets/images/careemy.png",
    "assets/images/chocolate.png",
    "assets/images/filled.png",
  ];

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.only(right: 20, left: 20, bottom: 140),
      sliver: SliverGrid(
        delegate: SliverChildBuilderDelegate((context, index) {
          return ProductItem(
            imageUrl: _imagePaths[index % 3],
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return DetailProductPage(imagePath: _imagePaths[index % 3]);
                  },
                ),
              );
            },
          );
        }, childCount: 20),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 26,
          crossAxisSpacing: 21,
          childAspectRatio: 0.78,
        ),
      ),
    );
  }
}
