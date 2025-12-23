import 'package:donut_delights_app/pages/home/widget/categories_view.dart';
import 'package:donut_delights_app/pages/home/widget/greeting_user.dart';
import 'package:donut_delights_app/pages/home/widget/home_app_bar.dart';
import 'package:donut_delights_app/pages/home/widget/home_product_view.dart';
import 'package:donut_delights_app/pages/home/widget/popular_bakeries_view.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _activeCategoryIndex = 0;
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    _listenScroll();
    super.initState();
  }

  void _listenScroll() {
    _scrollController.addListener(() {
      FocusManager.instance.primaryFocus?.unfocus();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        child: CustomScrollView(
          controller: _scrollController,
          slivers: [
            SliverPersistentHeader(pinned: true, delegate: HomeAppBar()),
            SliverPersistentHeader(delegate: GreetingUser()),
            SliverPersistentHeader(
              pinned: true,
              delegate: CategoriesView(
                activeCategoryIndex: _activeCategoryIndex,
                selectCategory: (int value) {
                  setState(() {
                    _activeCategoryIndex = value;
                  });
                },
              ),
            ),

            PopularBakeriesView(),

            HomeProductView(),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
