import 'package:donut_delights_app/pages/home/widget/category_item.dart';
import 'package:flutter/material.dart';

class CategoriesView extends SliverPersistentHeaderDelegate {
  final int activeCategoryIndex;
  final ValueChanged<int> selectCategory;

  CategoriesView({
    required this.activeCategoryIndex,
    required this.selectCategory,
  });

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    final bool isScrolling = shrinkOffset > 0;
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
        boxShadow: [
          if (isScrolling) BoxShadow(color: Colors.black38, blurRadius: 30),
        ],
      ),
      child: SingleChildScrollView(
        padding: EdgeInsets.only(top: 30),
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(7, (index) {
            return CategoryItem(
              onPressed: () {
                selectCategory.call(index);
              },
              isActive: activeCategoryIndex == index,
            );
          }),
        ),
      ),
    );
  }

  @override
  double get maxExtent => 120;

  @override
  double get minExtent => 120;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
