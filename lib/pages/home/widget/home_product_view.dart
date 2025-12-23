import 'package:donut_delights_app/pages/widget/product_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeProductView extends StatelessWidget {
  const HomeProductView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.only(right: 20, left: 20, bottom: 140),
      sliver: SliverGrid(
        delegate: SliverChildBuilderDelegate((context, index) {
          return ProductItem();
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
