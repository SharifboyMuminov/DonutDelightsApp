import 'package:donut_delights_app/pages/product/widget/products_search_view.dart';
import 'package:donut_delights_app/pages/product/widget/search_products_app_bar.dart';
import 'package:donut_delights_app/pages/product/widget/search_result_text.dart';
import 'package:donut_delights_app/pages/widget/product_item.dart';
import 'package:flutter/material.dart';

class ProductsPage extends StatefulWidget {
  const ProductsPage({super.key});

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  final List<String> _imagePaths = [
    "assets/images/careemy.png",
    "assets/images/chocolate.png",
    "assets/images/filled.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SearchProductsAppBar(),
          Expanded(
            child: CustomScrollView(
              slivers: [
                SliverPersistentHeader(
                  floating: true,
                  delegate: ProductsSearchView(),
                ),
                SliverPersistentHeader(delegate: SearchResultText()),

                SliverPadding(
                  padding: EdgeInsets.only(right: 20, left: 20, bottom: 40),
                  sliver: SliverGrid(
                    delegate: SliverChildBuilderDelegate((context, index) {
                      return ProductItem(imageUrl: _imagePaths[index % 3]);
                    }, childCount: 20),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 26,
                      crossAxisSpacing: 21,
                      childAspectRatio: 0.78,
                    ),
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
